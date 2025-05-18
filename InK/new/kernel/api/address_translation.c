#include "api/include/address_translation.h"
#include "scheduler/thread.h"

#include <stdint.h>

extern int __ink_buffers_start;
extern int __ink_buffers_end;
extern int __ink_buffers_offset;


inline void* __ink_translate_variable_address(void* variable_address)
{
    // return (current_task_buffer_index == 0u)
    //     ? variable_address
    //     : (variable_address + (uintptr_t)&__ink_buffers_offset);
    return variable_address + (uintptr_t)&__ink_buffers_offset * current_task_buffer_index;
}

inline void* __ink_translate_pointer_address(void* pointer_address)
{
    return (pointer_address >= (void*)&__ink_buffers_start && pointer_address < (void*)&__ink_buffers_end)
        ? __ink_translate_variable_address(pointer_address)
        : pointer_address;
}
