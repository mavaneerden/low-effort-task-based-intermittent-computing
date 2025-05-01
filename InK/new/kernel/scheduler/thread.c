#include "ink.h"

__nv uint8_t current_task_buffer_index = 0u;

// prepares the stack of the thread for the task execution
static inline void __prologue(thread_t *thread)
{
    buffer_t *buffer = &thread->buffer;
#ifdef RAISE_PIN
    __port_on(3,6);
#endif
    // copy original stack to the temporary stack
    __fram_word_copy(buffer->buf[buffer->idx],buffer->buf[buffer->idx ^ 1u], buffer->size >> 1u);
#ifdef RAISE_PIN
    __port_off(3,6);
#endif

}

// runs one task inside the current thread
void __tick(thread_t *thread)
{
    void *current_task_buffer = NULL;
    switch (thread->state)
    {
    case TASK_READY:
#ifdef RAISE_PIN
        __port_off(3,5);
#endif
        // refresh thread stack
        __prologue(thread);
        // get thread buffer
        current_task_buffer_index = thread->buffer._idx ^ 1u;
        current_task_buffer = thread->buffer.buf[current_task_buffer_index];
        // Check if it is the entry task. The entry task always
        // consumes an event in the event queue.
        if(thread->next == thread->entry){
            // pop an event since the thread most probably woke up due to
            // an event
            isr_event_t *event = __lock_event(thread);
            // push event data to the entry task
            // thread->next = (void *)((entry_task_t)thread->entry)(buf,(void *)event);
            thread->next = (void *)((entry_task_t)thread->entry)((void *)event);
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
        //switch stack index to commit changes
        thread->buffer._idx = thread->buffer.idx ^ 1;
        thread->state = TASK_COMMIT;
    case TASK_COMMIT:
        // copy the real index from temporary index
        thread->buffer.idx = thread->buffer._idx;
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

