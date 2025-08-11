The following is an example application of how to use CITID. Remember this example for use in instrumenting code later.
In this example, there is a thread with priority 42, which is activated on first boot.
There is also an event, which is triggered by a hardware timer. The data in this event is a counter, which is incremented every time the interrupt triggers.
The entry task takes the event data and stores it in the task-shared variable counter.
Task 'task1' then calls an external function with the counter value as its argument.
The thread then waits again for the next event.
When the microcontroller reboots, it is necessary to set up the hardware again. In this example, it is done using the hardware_setup() function.
```
#include "example.h"
#include "citid.h"

#define THREAD_PRIORITY 42

CITID_PERSISTENT int counter_isr = 0; // Persistent non task-shared event data variable
citid_event_t counter_isr_event = { .data = &counter_isr, .size = sizeof(int), .timestamp = 0 }; // Event struct

int counter; // Task-shared variable

// Forward task declarations
void* task1(void);

// Entry task
CITID_CREATE_THREAD(THREAD_PRIORITY, true) {
    counter = *(int*)citid_event->data; // Get data from event and store into task-shared variable

    return task2; // The next task is task2
}

void* task1(void) {
    do_something_with_counter(counter);

    return NULL; // This is the last task to execute in the thread: the thread lays dormant until awoken by an event.
}

int main(void) {
    hardware_setup(); // Included from "example.h"

    citid_scheduler_run();
}

void __attribute__ ((interrupt(TIMER0_A0_VECTOR))) TIMER0_A0_ISR(void) {
    counter_isr++;

    citid_signal_event_isr(THREAD_PRIORITY, &counter_isr_event);
}
```
