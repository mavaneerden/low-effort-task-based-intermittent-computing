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
    __fram_word_copy(buffer->buf[buffer->original_buffer_index],buffer->buf[buffer->original_buffer_index ^ 1u], buffer->size >> 1u);
#ifdef RAISE_PIN
    __port_off(3,6);
#endif
}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    // TODO: why is there a switch-case here? Why isn't everything combined?
    // Could this not lead to corrupted data, since the TASK_FINISHED and TASK_COMMIT will not run if a higher-priority thread is activated?

    switch (thread->state)
    {
    case TASK_READY:
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
        // refresh thread stack
        __prologue(thread);
        // get thread buffer
        current_thread_shared_buffer_index = thread_shared_buffer_index_temp ^ 1u;
        current_task_buffer_index = thread->buffer.privatization_buffer_index ^ 1u;

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
        // TODO: why is this not combined with TASK_COMMIT?
        //switch stack index to commit changes
        thread->buffer.privatization_buffer_index = thread->buffer.original_buffer_index ^ 1;
        thread_shared_buffer_index_temp = thread_shared_buffer_index ^ 1;
        thread->state = TASK_COMMIT;
    case TASK_COMMIT:
        // TODO: commit events here?
        // copy the real index from temporary index
        thread->buffer.original_buffer_index = thread->buffer.privatization_buffer_index;
        thread_shared_buffer_index = thread_shared_buffer_index_temp;
        // Task execution finished. Check if the whole tasks are executed (thread finished)
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
    }
}

