#pragma once

#include <stdbool.h>
#include <stdint.h>

int __ink_get_current_task_buffer_index();
void*  __ink_get_variable_address_with_offset(void*);

extern int __ink_buffers_offset;
static const uintptr_t buffer_offset = (uintptr_t)&__ink_buffers_offset;

#define __INK_GET_VARIABLE_ADDRESS_WITH_OFFSET(var) (((void*)(&var)) + buffer_offset)

#define __INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var_name) __ink_pointer_ ## var_name
#define __INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var_name, num) __ink_pointer_ ## var_name ## _ ## num

#define __INK_SHARED_VAR_STRUCT_TYPE __ink_shared_vars_buffer_t
#define __INK_SHARED_VAR_STRUCT_NAME __ink_shared_vars_buffers
#define __INK_SHARED_VAR_STRUCT_NAME_CURRENT __ink_shared_vars_buffer

#define __INK_SET_CURRENT_TASK_BUFFER_INDEX __INK_SHARED_VAR_STRUCT_TYPE* __INK_SHARED_VAR_STRUCT_NAME_CURRENT = &__INK_SHARED_VAR_STRUCT_NAME[__ink_get_current_task_buffer_index()];

#define __INK_SHARED_VAR_STRUCT_FIELD(var_type, var_name) var_type* __INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var_name)
#define __INK_SHARED_VAR_STRUCT_FIELD_ARRAY(var_type, var_name, array_dims) var_type (*__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var_name)) array_dims
#define __INK_SHARED_VAR_STRUCT_FIELD_STATIC(var_type, var_name, num) var_type* __INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var_name, num)
#define __INK_SHARED_VAR_STRUCT_FIELD_STATIC_ARRAY(var_type, var_name, num, array_dims) var_type (*__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var_name, num)) array_dims

#define __INK_GET_VAR_FROM_BUF(var) (*((__INK_SHARED_VAR_STRUCT_NAME_CURRENT)->__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var)))
#define __INK_GET_VAR_FROM_BUF_STATIC(var, num) (*((__INK_SHARED_VAR_STRUCT_NAME_CURRENT)->__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var, num)))
#define __INK_GET_VAR_FROM_BUF_ARRAY(var) (((__INK_SHARED_VAR_STRUCT_NAME_CURRENT)->__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var)))
#define __INK_GET_VAR_FROM_BUF_STATIC_ARRAY(var, num) (((__INK_SHARED_VAR_STRUCT_NAME_CURRENT)->__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var, num)))

#define __INK_SET_BUFFER_POINTERS(var) \
    __INK_SHARED_VAR_STRUCT_NAME[0].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var) = &(var); \
    __INK_SHARED_VAR_STRUCT_NAME[1].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var) = (__typeof__(var)*)__INK_GET_VARIABLE_ADDRESS_WITH_OFFSET(var);
#define __INK_SET_BUFFER_POINTERS_ARRAY(var) \
    __INK_SHARED_VAR_STRUCT_NAME[0].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var) = &(var[0]); \
    __INK_SHARED_VAR_STRUCT_NAME[1].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME(var) = __INK_GET_VARIABLE_ADDRESS_WITH_OFFSET(var[0]);
#define __INK_SET_BUFFER_POINTERS_STATIC(var, num) \
    __INK_SHARED_VAR_STRUCT_NAME[0].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var, num) = &(var); \
    __INK_SHARED_VAR_STRUCT_NAME[1].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var, num) = (__typeof__(var)*)__INK_GET_VARIABLE_ADDRESS_WITH_OFFSET(var);
#define __INK_SET_BUFFER_POINTERS_STATIC_ARRAY(var, num) \
    __INK_SHARED_VAR_STRUCT_NAME[0].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var, num) = &(var[0]); \
    __INK_SHARED_VAR_STRUCT_NAME[1].__INK_GET_SHARED_VAR_STRUCT_FIELD_NAME_STATIC(var, num) = __INK_GET_VARIABLE_ADDRESS_WITH_OFFSET(var[0]);

#define __INK_INITIALIZE_STATIC_FUNCTION_NAME(var, num) __ink_initialize_static_var_ ## var ## _ ## num
#define __INK_INITIALIZE_STATIC_FUNCTION_CALL(var, num) __INK_INITIALIZE_STATIC_FUNCTION_NAME(var, num)((void*)(var));
#define __INK_INITIALIZE_STATIC_FUNCTION_DECL(var, num) inline void __INK_INITIALIZE_STATIC_FUNCTION_NAME(var, num)(void * static_var)
#define __INK_INITIALIZE_STATIC_FUNCTION_DEF(var, num) __INK_INITIALIZE_STATIC_FUNCTION_DECL(var, num) { __INK_SET_BUFFER_POINTERS_STATIC(var, num) }

#define __INK_CONSTRUCTOR_VALUE_TRANSLATION(priority) 200 ## priority

#define __INK_INITIALIZE_SHARED_VARS_FUNC(priority) \
    void __attribute__((constructor(__INK_CONSTRUCTOR_VALUE_TRANSLATION(priority)))) __ink_initialize_shared_vars_##priority(void)

// void* __ink_translate_variable_address(void* variable_address);
void* __ink_translate_pointer_address(void* pointer_address, const bool is_write, uint8_t priority);
// void __ink_set_backup_task_shared_buffer(uint8_t priority, bool enable);

// /**
//  * Translates the shared variable address to the correct one, depending on the buffer used.
//  * Then dereferences that address.
//  *
//  * Can be used for reads AND writes.
//  * Must be used for ONLY thread-shared or task-shared variables.
//  *
//  * This macro is meant for InK-internal use ONLY!
//  */
// #define __INK_GET_VARIABLE_ADDRESS(variable) (__ink_translate_variable_address((void*) &(variable)))

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

// #define __INK_ENABLE_TASK_SHARED_BACKUP(priority) (__ink_set_backup_task_shared_buffer((priority), true))
