#pragma once

#include <stdbool.h>

void* __ink_translate_variable_address(void* variable_address);
void* __ink_translate_thread_shared_variable_address(void* variable_address);
void* __ink_translate_pointer_address(void* pointer_address, const bool is_write);

void __ink_set_backup_thread_shared_buffer();
void __ink_set_backup_task_shared_buffer();

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
#define __INK_GET_THREAD_SHARED_VARIABLE_ADDRESS(varialbe) (__ink_translate_thread_shared_variable_address((void*) &(variable)))

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
#define __INK_TRANSLATE_POINTER_DEREFERENCE_READ(pointer) (__ink_translate_pointer_address((void*) (pointer), false))
#define __INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(pointer) (__ink_translate_pointer_address((void*) (pointer), true))

#define __INK_ENABLE_THREAD_SHARED_BACKUP() __ink_set_backup_thread_shared_buffer()
#define __INK_ENABLE_TASK_SHARED_BACKUP() __ink_set_backup_task_shared_buffer()
