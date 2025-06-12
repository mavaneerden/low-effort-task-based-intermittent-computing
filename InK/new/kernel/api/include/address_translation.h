#pragma once

#include <stdbool.h>
#include <stdint.h>

void* __ink_translate_variable_address(void* variable_address);
void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority);
void __ink_set_backup_task_shared_buffer(uint8_t priority, bool enable);

/**
 * Translates the shared variable address to the correct one, depending on the buffer used.
 * Then dereferences that address.
 *
 * Can be used for reads AND writes.
 * Must be used for ONLY thread-shared or task-shared variables.
 *
 * This macro is meant for InK-internal use ONLY!
 */
#define __INK_GET_VARIABLE_ADDRESS(variable) (__ink_translate_variable_address((void*) &(variable)))

/**
 * Translates the pointer address to the correct one, depending on the buffer used.
 * If the pointer does not point towards a thread- or task-shared section,
 * then nothing is changed.
 *
 * Can be used for reads AND writes to underlying pointer values.
 * Must be used for ALL pointer dereferences!
 *
 * This macro is meant for InK-internal use ONLY!
 */
#define __INK_TRANSLATE_POINTER_DEREFERENCE_READ(pointer, priority) (__ink_translate_pointer_address((void*) (pointer), false, (priority)))
#define __INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(pointer, priority) (__ink_translate_pointer_address((void*) (pointer), true, (priority)))

#define __INK_ENABLE_TASK_SHARED_BACKUP(priority) (__ink_set_backup_task_shared_buffer((priority), true))
