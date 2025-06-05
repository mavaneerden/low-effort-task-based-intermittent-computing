#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 3

// TODO: add tests for 2D and 3D arrays!!!
// TODO: add tests for complex array indexing (via pointers/shared variables, etc)

int __attribute__((section(".ink.task_shared.1")))shared_array[ARRAY_SIZE];
int shared_array_2d[ARRAY_SIZE][ARRAY_SIZE];
void* shared_ptr;
int __attribute__((section(".ink.task_shared.1")))shared = 0;

struct s
{
    int* p2[ARRAY_SIZE][ARRAY_SIZE];
    int* p[ARRAY_SIZE];
    int* i;
} s;

void* t_assign();
void* t_nested();
void* t_parentheses();

INK_CREATE_THREAD(1, false)
{
    __typeof__(shared)(* const __ink_pointer_shared) = __INK_GET_VARIABLE_ADDRESS(shared);
__typeof__(shared_array)(* const __ink_pointer_shared_array) = __INK_GET_VARIABLE_ADDRESS(shared_array);
int x;

    (*__ink_pointer_shared) = x;
    x = (*__ink_pointer_shared);
    (*__ink_pointer_shared) = (*__ink_pointer_shared);

    (*__ink_pointer_shared_array)[(*__ink_pointer_shared_array)[(*__ink_pointer_shared)]] = x;

    (*__ink_pointer_shared_array)[(*__ink_pointer_shared_array)[(*__ink_pointer_shared)++]] = x;

    return NULL;
}