#include <stddef.h>
#include "ink/ink.h"

int __attribute__((section(".ink.task_shared.1")))shared_int;
int __attribute__((section(".ink.task_shared.1")))shared_int2;
int* const __attribute__((section(".ink.task_shared.1")))shared_var = &shared_int;
int* const __attribute__((section(".ink.task_shared.1")))shared_var2 = &shared_int2;
int* const __attribute__((section(".ink.task_shared.1")))shared_var3 = &shared_int;
int* __attribute__((section(".ink.task_shared.1")))shared_var_ptr[3] ={ shared_var, shared_var2, shared_var3 };

int __attribute__((section(".ink.task_shared.1")))a;
int* const __attribute__((section(".ink.task_shared.1")))b = &a;
const long int __attribute__((section(".ink.task_shared.1")))c = (long int)b;
int* const __attribute__((section(".ink.task_shared.1")))d = (int*)c;

#include "ink/address_translation.h"
typedef struct {
    __INK_SHARED_VAR_STRUCT_FIELD(int, shared_int);
    __INK_SHARED_VAR_STRUCT_FIELD(int, shared_int2);
    __INK_SHARED_VAR_STRUCT_FIELD(int *const, shared_var);
    __INK_SHARED_VAR_STRUCT_FIELD(int *const, shared_var2);
    __INK_SHARED_VAR_STRUCT_FIELD(int *const, shared_var3);
    __INK_SHARED_VAR_STRUCT_FIELD(int *, shared_var_ptr);
    __INK_SHARED_VAR_STRUCT_FIELD(int, a);
    __INK_SHARED_VAR_STRUCT_FIELD(int *const, b);
    __INK_SHARED_VAR_STRUCT_FIELD(const long, c);
    __INK_SHARED_VAR_STRUCT_FIELD(int *const, d);
} __INK_SHARED_VAR_STRUCT_TYPE;
static __INK_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT __INK_SHARED_VAR_STRUCT_NAME[2];INK_CREATE_THREAD(1, false)
{
    __INK_SET_CURRENT_TASK_BUFFER_INDEX
int local_var;

    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(__INK_GET_VAR_FROM_BUF_ARRAY(shared_var_ptr)[0], 1))[0] = local_var;
    *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(__INK_GET_VAR_FROM_BUF(shared_var3), 1)) = local_var;
    *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(__INK_GET_VAR_FROM_BUF(d), 1)) = local_var;

    return NULL;
}
__INK_INITIALIZE_SHARED_VARS_FUNC(1){
    __INK_SET_BUFFER_POINTERS(shared_int);
    __INK_SET_BUFFER_POINTERS(shared_int2);
    __INK_SET_BUFFER_POINTERS(shared_var);
    __INK_SET_BUFFER_POINTERS(shared_var2);
    __INK_SET_BUFFER_POINTERS(shared_var3);
    __INK_SET_BUFFER_POINTERS_ARRAY(shared_var_ptr);
    __INK_SET_BUFFER_POINTERS(a);
    __INK_SET_BUFFER_POINTERS(b);
    __INK_SET_BUFFER_POINTERS(c);
    __INK_SET_BUFFER_POINTERS(d);
}
