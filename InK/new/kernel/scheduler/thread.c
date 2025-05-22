#include "ink.h"

extern int __ink_thread_shared_start;
extern int __ink_thread_shared_size;
extern int __ink_buffers_backup_start;

__nv uint8_t current_task_buffer_index = 0u;
__nv uint8_t current_thread_shared_buffer_index = 0u;

__nv uint8_t thread_shared_buffer_index = 0u;
__nv uint8_t thread_shared_buffer_index_temp = 0u;

__nv void* thread_shared_buffers[2] = { (void*)&__ink_thread_shared_start, (void*)&__ink_buffers_backup_start };

// prepares the stack of the thread for the task execution
static inline void __prologue(thread_t *thread)
{
    buffer_t *buffer = &thread->buffer;
#ifdef RAISE_PIN
    __port_on(3,6);
#endif
    // Copy thread-shared stack
    __fram_word_copy(thread_shared_buffers[thread_shared_buffer_index], thread_shared_buffers[thread_shared_buffer_index ^ 1u], (uintptr_t)&__ink_thread_shared_size);
    // copy original stack to the temporary stack
    __fram_word_copy(buffer->buf[buffer->buffer_index],buffer->buf[buffer->buffer_index ^ 1u], buffer->size >> 1u);
#ifdef RAISE_PIN
    __port_off(3,6);
#endif
}

/**
 * Runs a task inside the current thread.
 *
 * The currently executing thread is remembered by the scheduler between boots, so the scheduler will always keep executing the
 * current thread if it gets interrupted by a power failure.
 *
 * In the original InK, a thread could signal another thread to go to the TASK_READY state IMMEDIATELY.
 * This could violate the system's correctness, given the following example:
 * 1) A thread with priority 1 signals thread with priority 2 to wake up
 * 2) The thread transitions from the TASK_READY to TASK_FINISHED state
 * 3) The scheduler transitions to the SCHED_SELECT state
 * 4) A power failure occurs
 * 5) The system reboots
 * 6) Since the scheduler is now in the SCHED_SELECT state, it will select thread with priority 2 to execute, even though
 *   thread with priority 1 has not been committed yet.
 *
 * Due to how InK was implemented, only one event can be commited at a time and it can be overwritten by an ISR,
 * if that ISR interrupts the task before it committed its events. This makes events effectively useless to use outside of ISRs.
 */
void __tick(thread_t *thread)
{
    // TODO: why is there a switch-case here? Why isn't everything combined?
    // Could this not lead to corrupted data, since the TASK_FINISHED and TASK_COMMIT will not run if a higher-priority thread is activated?

    switch (thread->state)
    {
    case TASK_READY:
        /**
         * Task is ready to be executed.
         *
         * 1. The original task buffer is copied to the privatization buffer.
         * 2. The correct buffer index for the task is selected, then the task function is called.
         * 3. If the task to be executed is an entry task, it is assumed that an event
         *    woke up the thread that the entry task belongs to. This may not be true, but all events
         *    are supposed to be processed by the corresponding thread anyways. So if there are events
         *    in the queue they are supposed to be processed. And if there are no events in the queue,
         *    locking the event has no effect (since it is just a null pointer).
         */
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
        // refresh thread stack
        __prologue(thread);
        // get thread buffer
        current_thread_shared_buffer_index = thread_shared_buffer_index_temp ^ 1u;
        current_task_buffer_index = thread->buffer.buffer_index_temp ^ 1u;

        // Check if it is the entry task. The entry task always
        // consumes an event in the event queue.
        if(thread->next == thread->entry){
            // pop an event since the thread most probably woke up due to
            // an event
            isr_event_t *event = __lock_event(thread);
            // push event data to the entry task
            // thread->next = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
            thread->next = (void *)((entry_task_t)thread->entry)(event);
            // the event should be released (deleted)
            thread->state = TASK_RELEASE_EVENT;
        }
        else{
            thread->next = (void *)(((task_t)thread->next)());
            thread->state = TASK_FINISHED;
            break;
        }
    case TASK_RELEASE_EVENT:
        // release any event which is popped by the task
        __release_event(thread);
        thread->state = TASK_FINISHED;
    case TASK_FINISHED:
        /**
         * Use a temporary variable to store the new buffer index in.
         *
         * This is separated from TASK_COMMIT, because if a power failure occurs after setting the original buffer index,
         * the new buffer index will get the wrong value!
         */
        thread->buffer.buffer_index_temp = thread->buffer.buffer_index ^ 1;
        thread_shared_buffer_index_temp = thread_shared_buffer_index ^ 1;
        thread->state = TASK_COMMIT;
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.buffer_index = thread->buffer.buffer_index_temp;
        thread_shared_buffer_index = thread_shared_buffer_index_temp;

        // Task execution finished. Check if the whole tasks are executed (thread finished)
        if (thread->next == NULL)
        {
            /* Check if there are any pending events. Must be done inside a critical region,
             * because interrupts can change the event queue.
             */
            __disable_interrupt();
            if(!__has_events(thread))
            {
                __enable_interrupt();

                __stop_thread(thread);
            }
            else{
                __enable_interrupt();

                thread->next = thread->entry;
                thread->state = TASK_READY;
            }
        }
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
    }
}

