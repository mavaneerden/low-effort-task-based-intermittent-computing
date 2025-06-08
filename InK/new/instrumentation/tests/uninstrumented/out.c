#include <stddef.h>
#include "ink/ink.h"

int __attribute__((section(".ink.task_shared.1")))shared_int;
int __attribute__((section(".ink.task_shared.1")))shared_int2;
int* __attribute__((section(".ink.task_shared.1")))shared_var = &shared_int;
int* __attribute__((section(".ink.task_shared.1")))shared_var2 = &shared_int2;
int* __attribute__((section(".ink.task_shared.1")))shared_var3 = &shared_int;
int* __attribute__((section(".ink.task_shared.1")))shared_var_ptr[3] ={&shared_var, &shared_var2, &shared_var3};

/* Since shared_var_ptr is used in this function, it is task-shared.
 * Therefore, shared_var should also be task-shared since its value may be changed
 * via the shared_var_ptr pointer.
 */
INK_CREATE_THREAD(1, false)
{
    __typeof__(shared_var_ptr)(* const __ink_pointer_shared_var_ptr) = __INK_GET_VARIABLE_ADDRESS(shared_var_ptr);
int local_var;

    local_var = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_shared_var_ptr)[0]))[0];

    return NULL;
}
