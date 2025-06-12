#include "api/include/address_translation.h"
#include "scheduler/thread.h"
#include "scheduler/scheduler.h"

extern int __ink_buffers_start;
extern int __ink_buffers_end;
extern int __ink_buffers_offset;

const void* const buffer_start_address = (void*)&__ink_buffers_start;
const void* const buffer_end_address = (void*)&__ink_buffers_end;

const uintptr_t buffer_offset = (uintptr_t)&__ink_buffers_offset;

inline bool is_shared(void* address)
{
    return address >= buffer_start_address && address < buffer_end_address;
}

inline void* translate_address(void* address, const uint8_t buffer_index)
{
    return address + buffer_offset * buffer_index;
}

inline void* handle_pointer_to_shared(void* pointer_address, const bool is_write, uint8_t priority)
{
    if (is_write)
    {
        __ink_set_backup_task_shared_buffer(priority, true);
    }

    return translate_address(pointer_address, current_task_buffer_index);
}

inline void* __ink_translate_variable_address(void* variable_address)
{
    return translate_address(variable_address, current_task_buffer_index);
}

inline void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority)
{
    return is_shared(pointer_address) ? handle_pointer_to_shared(pointer_address, is_write, priority) : pointer_address;
}

inline void __ink_set_backup_task_shared_buffer(uint8_t priority, bool enable)
{
    __get_thread(priority)->copy_buffer_in_task_prologue = enable;
}
