#include "api/include/events.h"
#include "isr/isrmanager.h"
#include "scheduler/scheduler.h"

inline bool ink_signal_event_isr(uint8_t thread_priority_to_signal, ink_isr_event_t *event)
{
    thread_t* thread = __get_thread(thread_priority_to_signal);

    /* Add the event to queue. */
    if (!__event_buffer_full_ISR(thread))
    {
        __event_signal_ISR(thread, event);
        return true;
    }

    return false;
}

