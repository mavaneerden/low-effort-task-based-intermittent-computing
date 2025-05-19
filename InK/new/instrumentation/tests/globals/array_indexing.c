#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 3

// TODO: add tests for 2D and 3D arrays!!!
// TODO: add tests for complex array indexing (via pointers/shared variables, etc)

int shared_array[ARRAY_SIZE];
int shared_array_2d[ARRAY_SIZE][ARRAY_SIZE];
void* shared_ptr;

struct s
{
    int* p[ARRAY_SIZE];
    int* i;
} s;


INK_CREATE_THREAD(1, false)
{
    int x;

    // Array access (not instrumented since arrays can't be reassigned)
    shared_array[x];

    // Pointer expr array subscript
    (shared_ptr + x)[x];

    // Pointer expr member access
    ((struct s*)(shared_ptr + x))->p;
    ((struct s*)(shared_ptr + x))->i;

    // Struct member array access (not instrumented since arrays can't be reassigned)
    s.p[x];
    s.i[x];

    // Pointer expr member array access (not instrumented since arrays can't be reassigned)
    ((struct s*)(shared_ptr + x))->p[x];
    ((struct s*)(shared_ptr + x))->i[x];

    // Struct member pointer access
    s.p[x][x];

    // Pointer expr member pointer access
    ((struct s*)(shared_ptr + x))->p[x][x];
}
