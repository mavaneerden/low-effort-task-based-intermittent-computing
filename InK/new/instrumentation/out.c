#include "ink/address_translation.h"
#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 3

// TODO: add tests for 2D and 3D arrays!!!
// TODO: add tests for complex array indexing (via pointers/shared variables, etc)

int __attribute__((section("ink.task_shared.")))shared_array[ARRAY_SIZE];
int shared_array_2d[ARRAY_SIZE][ARRAY_SIZE];
void* __attribute__((section("ink.task_shared.")))shared_ptr;

struct s
{
    int* p[ARRAY_SIZE];
    int* i;
} __attribute__((section("ink.task_shared.")))s;


INK_CREATE_THREAD(1, false)
{
    __typeof__(s)(* const __ink_pointer_s) = __INK_GET_VARIABLE_ADDRESS(s);
__typeof__(shared_ptr)(* const __ink_pointer_shared_ptr) = __INK_GET_VARIABLE_ADDRESS(shared_ptr);
__typeof__(shared_array)(* const __ink_pointer_shared_array) = __INK_GET_VARIABLE_ADDRESS(shared_array);
int x;

    // Array access (not instrumented since arrays can't be reassigned)
    (*__ink_pointer_shared_array)[x];

    // Pointer expr array subscript
    ((void *)__INK_TRANSLATE_POINTER_DEREFERENCE(((*__ink_pointer_shared_ptr) + x)))[x];

    // Pointer expr member access
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p;
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i;

    // Struct member array access (not instrumented since arrays can't be reassigned)
    (*__ink_pointer_s).p[x];
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE((*__ink_pointer_s).i))[x];

    // Pointer expr member array access (not instrumented since arrays can't be reassigned)
    ((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x];
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->i))[x];

    // Struct member pointer access
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE((*__ink_pointer_s).p[x]))[x];

    // Pointer expr member pointer access
    ((int *)__INK_TRANSLATE_POINTER_DEREFERENCE(((struct s *)__INK_TRANSLATE_POINTER_DEREFERENCE(((struct s*)((*__ink_pointer_shared_ptr) + x))))->p[x]))[x];
}
