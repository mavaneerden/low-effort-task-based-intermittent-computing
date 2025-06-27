#include "ink.h"
#include "api/include/address_translation.h"

__nv uint8_t current_task_buffer_index = 0u;

// prepares the stack of the thread for the task execution
static inline void __prologue(thread_t *thread)
{
    buffer_t *buffer = &thread->buffer;
#ifdef RAISE_PIN
    __port_on(3,6);
#endif

    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);

#ifdef RAISE_PIN
    __port_off(3,6);
#endif
}

/**
 * Run a task inside a thread and commit it to memory.
 *
 * The thread state machine consists of the following states:
 * - TASK_READY: copies task-shared and thread-shared memory from the original to the privatization buffer,
 *               and executes the task.
 * - TASK_RELEASE_EVENT: commits event pop from event queue.
 * - TASK_FINISHED: Stores new buffer indices to temporary variables in preparation for swapping.
 * - TASK_COMMIT: Commits the new buffer indices and checks for new tasks in the thread.
 *
 * The state machine is implemented as a switch-case without breaks, and the state variable is non-volatile.
 * In this way, when a power failure and reboot occurs, the state machine can efficiently continue at the state
 * where it left off.
 * The lack of break statements makes sure the function does not return early and cannot cause any inconsistencies.
 */
void __tick(thread_t *thread)
{
    switch (thread->state)
    {
    case TASK_READY:
        /* Refresh the thread stack by copying contents of the original buffer to the privatization buffer.
         * If a power failure occurs, this makes sure that the task execution always starts with the correct data
         * in the privatization buffer.
         */
        __prologue(thread);

#ifdef RAISE_PIN
        __port_on(1, 4);
#endif

        /* Store the current thread privatization buffer index.
         * This is the index that is NOT the index for the original buffer.
         * These variables are used to select the correct address when a variable is written or read.
         */
        current_task_buffer_index = thread->buffer.original_buffer_index ^ 1u;

        /* If this is the first task in the thread (entry task), then we need to check if there is an event in the queue for that thread.
         * We can simply take the first event from the queue, because if it does not exist it is NULL.
         */
        if(thread->next == thread->entry){
            /* Pops an event from the queue, but does not commit this pop.
             * This way, if a power failure occurs, the event will still be in the queue
             * and can be processed again.
             * Due to the way that event queues are implemented, an ISR cannot overwrite this event so the
             * event pointer should always point to the correct event.
             */
            isr_event_t *event = __lock_event(thread);

            /* Execute the current task.
             * We store the next task into a temporary pointer. If we did not do this and
             * a power failure occurs before we go to TASK_PRECOMMIT, the scheduler
             * would execute the wrong task on reboot.
             */
            thread->next_temp = (void *)((entry_task_t)thread->entry)(event);
        }
        else{
            thread->next_temp = (void *)(((task_t)thread->next)());
        }

        /* Even though we might not have used an event, we always need to go to the same state to avoid break statements. */
        thread->state = TASK_PRECOMMIT;
#ifdef RAISE_PIN
            __port_off(1, 4);
#endif
    case TASK_PRECOMMIT:
#ifdef RAISE_PIN
        __port_on(3,5);
#endif
        /* Commit the event pop from the queue, since the task is now done executing.
         * If there was no event, this does nothing.
         * We can repeatedly execute this function without causing any side effects.
         */
        __release_event(thread);

        /* Commit the next task since the previous task is done executing. */
        thread->next = thread->next_temp;

        /* Set the new index for the original task-shared variable and thread-shared variable buffers.
         * We use a temporary variable here. Setting the original buffer immediately is not a repeatable
         * action so we must use a temporary variable. This way we are still consistent in case of a power failure.
         *
         * Example (idx starts at 0):
         * >>> idx = idx ^ 1; // idx = 1
         * POWER FAILURE
         * >>> idx = idx ^ 1; // idx = 0
         * >>> state = COMMIT // Inconsistent value on state switch!!!
         */
        thread->buffer.buffer_index_temp = thread->buffer.original_buffer_index ^ 1;

        thread->state = TASK_COMMIT;
    case TASK_COMMIT:
        /* The temporary variables are now copied into the original buffer index.
         * This is an atomic action so can be executed repeatedly when power failures happen.
         */
        thread->buffer.original_buffer_index = thread->buffer.buffer_index_temp;
#ifdef RAISE_PIN
        __port_off(3,5);
        __port_on(3,5);
#endif

        if (thread->next == NULL)
        {
            __disable_interrupt();
            // check if there are any pending events
            if(!__has_events(thread)){
                // suspend the thread if there are no pending events
                __stop_thread(thread);
            }
            else{
                // thread re-starts from the entry task
                thread->next = thread->entry;
                // ready to execute tasks again.
                thread->state = TASK_READY;
            }
            __enable_interrupt();
        }
        else{
            // ready to execute successive tasks
            thread->state = TASK_READY;
        }
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
    }
}

