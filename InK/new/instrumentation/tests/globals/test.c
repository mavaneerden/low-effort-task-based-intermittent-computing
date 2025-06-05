#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 3

// TODO: add tests for 2D and 3D arrays!!!
// TODO: add tests for complex array indexing (via pointers/shared variables, etc)

int shared_array[ARRAY_SIZE];
int shared_array_2d[ARRAY_SIZE][ARRAY_SIZE];
void* shared_ptr;
int shared = 0;

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
    int x;

    shared = x;
    x = shared;
    shared = shared;

    shared_array[shared_array[shared]] = x;

    shared_array[shared_array[shared++]] = x;

    return NULL;
}