#pragma once

#include <stdint.h>
#include <stdbool.h>

void __ink_create_thread(uint8_t priority, void* entry_task, bool start_on_first_boot);

#define __INK_CONSTRUCTOR_VALUE(priority) 100 ## priority

#define __INK_STRINGIZE_INTERNAL(S) #S
#define __INK_STRINGIZE(S) __INK_STRINGIZE_INTERNAL(S)

#define __INK_STRCONCAT_INTERNAL(S1, S2) S1 ## S2
#define __INK_STRCONCAT(S1, S2) __INK_STRCONCAT_INTERNAL(S1, S2)

#define INK_CREATE_THREAD(priority, start_on_first_boot) \
    __attribute__((annotate(__INK_STRINGIZE(__INK_STRCONCAT_INTERNAL(INK::TASK, priority))))) void* __ink_entry_task_##priority(void*); \
    void __attribute__((constructor(__INK_CONSTRUCTOR_VALUE(priority)))) __ink_create_thread_##priority(void) \
    { \
        if (ink_is_first_boot()) \
        { \
            __ink_create_thread(priority, __ink_entry_task_##priority, start_on_first_boot); \
        } \
    } \
    void* __ink_entry_task_##priority(isr_event_t *ink_event)
