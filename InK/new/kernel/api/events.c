#include "api/include/events.h"
#include "isr/isrmanager.h"
#include "scheduler/scheduler.h"

inline void ink_signal_thread(uint8_t thread_priority_to_signal, ink_isr_event_t *event)
{
    /* Add the event to queue. */
    __event_signal_ISR(__get_thread(thread_priority_to_signal), event);
    /* Event commit is called when task execution is finished. */
}

inline void ink_signal_thread_isr(uint8_t thread_priority_to_signal, ink_isr_event_t *event)
{
    /* Add the event to queue. */
    ink_signal_thread(thread_priority_to_signal, event);
    /* Commit to queue. We need to do this immediately because we are not in a task. */
    __events_commit();
}

