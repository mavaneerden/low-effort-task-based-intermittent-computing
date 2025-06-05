#include <stddef.h>
#include "ink/ink.h"
#include "ink/address_translation.h"

#define ARRAY_SIZE 5

int __attribute__((section(".ink.task_shared.1")))shared_array[ARRAY_SIZE];
int shared_array_2d[ARRAY_SIZE][ARRAY_SIZE];
int* __attribute__((section(".ink.task_shared.1")))shared_ptr;

struct s
{
    int* p2[ARRAY_SIZE][ARRAY_SIZE];
    int* p[ARRAY_SIZE];
    int* i;
} __attribute__((section(".ink.task_shared.1")))s;

void* __attribute__((annotate("INK::TASK1"))) t_assign();
void* __attribute__((annotate("INK::TASK1"))) t_assign_self();
void* __attribute__((annotate("INK::TASK1"))) t_nested();

INK_CREATE_THREAD(1, false)
{
    __typeof__(s)(* const __ink_pointer_s) = __INK_GET_VARIABLE_ADDRESS(s);
__typeof__(shared_ptr)(* const __ink_pointer_shared_ptr) = __INK_GET_VARIABLE_ADDRESS(shared_ptr);
__typeof__(shared_array)(* const __ink_pointer_shared_array) = __INK_GET_VARIABLE_ADDRESS(shared_array);
int x;
    int* y;

    /* Array access read, this won't be instrumented since an array cannot be reassigned. */
    x = (*__ink_pointer_shared_array)[x];

    /* Pointer dereference. */
    x = *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_shared_ptr)));

    /* Pointer dereference via array subscript. */
    x = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((int*)((*__ink_pointer_shared_ptr) + x))))[x];

    /* Pointer dereference via struct member access. */
    y = ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i;

    /* Array access of struct members. First line won't be instrumented since it is an array and can't be reassigned. */
    y = (*__ink_pointer_s).p[x];
    x = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_s).i))[x];

    /* Array access of struct members combined with pointer dereference via struct member access. */
    y = ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x];
    x = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x];

    /* Pointer dereference via array subscript on struct member. */
    x = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_s).p[x]))[x];

    /* Pointer dereference via array access combined with pointer dereference via struct member access, for a multi-dimensional array. */
    x = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x];

    return t_assign;
}

void* t_assign()
{
    __typeof__(s)(* const __ink_pointer_s) = __INK_GET_VARIABLE_ADDRESS(s);
__typeof__(shared_ptr)(* const __ink_pointer_shared_ptr) = __INK_GET_VARIABLE_ADDRESS(shared_ptr);
__typeof__(shared_array)(* const __ink_pointer_shared_array) = __INK_GET_VARIABLE_ADDRESS(shared_array);
int x;
    int* y;

    /* Array access write, this won't be instrumented since an array cannot be reassigned. */
    (*__ink_pointer_shared_array)[x] = x;
    (*__ink_pointer_shared_array)[x] += x;
    (*__ink_pointer_shared_array)[x]++;
    ++(*__ink_pointer_shared_array)[x];

    /* Pointer dereference. */
    *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_shared_ptr))) = x;
    *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_shared_ptr))) += x;
    *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_shared_ptr)++));
    ++*((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_shared_ptr)));

    /* Pointer dereference via array subscript. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((int*)((*__ink_pointer_shared_ptr) + x))))[x] = x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((int*)((*__ink_pointer_shared_ptr) + x))))[x] += x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((int*)((*__ink_pointer_shared_ptr) + x))))[x]++;
    ++((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((int*)((*__ink_pointer_shared_ptr) + x))))[x];

    /* Pointer dereference via struct member access. */
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i = (*__ink_pointer_s).i;
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i += x;
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i++;
    ++((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i;

    /* Array access of struct members. First line won't be instrumented since it is an array and can't be reassigned. */
    (*__ink_pointer_s).p[x] = y;
    (*__ink_pointer_s).p[x] += x;
    (*__ink_pointer_s).p[x]++;
    ++(*__ink_pointer_s).p[x];
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).i))[x] = x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).i))[x] += x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).i))[x]++;
    ++((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).i))[x];

    /* Array access of struct members combined with pointer dereference via struct member access. */
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x] = y;
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x] += x;
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]++;
    ++((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x];
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x] = x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x] += x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x]++;
    ++((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x];

    /* Pointer dereference via array subscript on struct member. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).p[x]))[x] = x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).p[x]))[x] += x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).p[x]))[x]++;
    ++((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).p[x]))[x];

    /* Pointer dereference via array access combined with pointer dereference via struct member access, for a multi-dimensional array. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x] = x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x] += x;
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x]++;
    ++((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x];

    return t_assign_self;
}

void *t_assign_self()
{
    __typeof__(s)(* const __ink_pointer_s) = __INK_GET_VARIABLE_ADDRESS(s);
__typeof__(shared_ptr)(* const __ink_pointer_shared_ptr) = __INK_GET_VARIABLE_ADDRESS(shared_ptr);
int x;
    int* y;

    /* Pointer dereference. */
    *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_shared_ptr))) = *((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_shared_ptr)));

    /* Pointer dereference via array subscript. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((int*)((*__ink_pointer_shared_ptr) + x))))[x] = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((int*)((*__ink_pointer_shared_ptr) + x))))[x];

    /* Pointer dereference via struct member access. */
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i = ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i;

    /* Pointer dereference via array subscript for struct members. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).i))[x] = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_s).i))[x];

    /* Array access of struct members combined with pointer dereference via struct member access. */
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x] = ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x];
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x] = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x];

    /* Pointer dereference via array subscript on struct member. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE((*__ink_pointer_s).p[x]))[x] = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ((*__ink_pointer_s).p[x]))[x];

    /* Pointer dereference via array access combined with pointer dereference via struct member access, for a multi-dimensional array. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x] = ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x];

    return t_nested;
}

void* t_nested()
{
    __typeof__(shared_ptr)(* const __ink_pointer_shared_ptr) = __INK_GET_VARIABLE_ADDRESS(shared_ptr);
int x;

    /* Pointer dereference in array subscript index. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((int*)((*__ink_pointer_shared_ptr) + x))))[((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((int*)((*__ink_pointer_shared_ptr) + x))))[x]] = x;

    /* Pointer dereference in struct member base and array subscript index. */
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_WRITE(((struct s*)((*__ink_pointer_shared_ptr) + x + ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x]))))->i))[((int *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE_READ(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x]] = x;

    return NULL;
}
