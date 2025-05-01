#pragma once

#include <stdint.h>
#include <stdbool.h>

void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot);

#define INK_CREATE_THREAD(priority, entry_task, start_on_first_boot) \
    void __attribute__((constructor(100##priority))) __ink_create_thread_##priority(void) \
    { \
        if (ink_is_first_boot()) \
        { \
            __ink_create_thread(priority, entry_task, start_on_first_boot); \
        } \
    }

// creates a thread
// #define __CREATE(priority,entry)  \
//         __create_thread(priority,(void *)entry,(void *)&__persistent_vars[0],(void *)&__persistent_vars[1],sizeof(FRAM_data_t))

// // puts the thread state into ACTIVE
// #define __SIGNAL(priority) \
//         __disable_interrupt();  \
//         __start_thread(__get_thread(priority)); \
//         __enable_interrupt()

// // event related information
// #define __EVENT __event
// #define __EVENT_DATA __event->data
// #define __EVENT_DATALEN __event->size
// #define __EVENT_TIME __event->timestamp
