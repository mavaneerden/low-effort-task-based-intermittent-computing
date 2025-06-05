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
    int* y;

    // Array access
    x = shared_array[x]; // NOT INSTRUMENTED

    // Pointer expr array subscript
    x = ((int*)(shared_ptr + x))[x];

    // Pointer expr member access
    y = ((struct s*)(shared_ptr + x))->i;

    // Struct member array access
    y = s.p[x]; // NOT INSTRUMENTED
    x = s.i[x];

    // Pointer expr member array access
    y = ((struct s*)(shared_ptr + x))->p[x];
    x = ((struct s*)(shared_ptr + x))->i[x];

    // Struct member pointer access
    x = s.p[x][x];

    // Pointer expr member pointer access
    x = ((struct s*)(shared_ptr + x))->p[x][x];

    return t_assign;
}

void* t_assign()
{
    int x;
    int* y;

    // Array access
    shared_array[x] = x; // NOT INSTRUMENTED

    // Pointer expr array subscript
    ((int*)(shared_ptr + x))[x] = x;

    // Pointer expr member access
    ((struct s*)(shared_ptr + x))->i = s.i;

    // Struct member array access
    s.p[x] = y; // NOT INSTRUMENTED
    s.i[x] = x;

    // Pointer expr member array access
    ((struct s*)(shared_ptr + x))->p[x] = y;
    ((struct s*)(shared_ptr + x))->i[x] = x;

    // Struct member pointer access
    s.p[x][x] = x;

    // Pointer expr member pointer access
    ((struct s*)(shared_ptr + x))->p[x][x] = x;

    return t_parentheses;
}

void* t_parentheses()
{
    int x;
    int* y;

    // Array access
    (shared_array[(x)]) = x; // NOT INSTRUMENTED

    // Pointer expr array subscript
    ((((int*)((shared_ptr) + (x))))[x]) = x;

    // Pointer expr member access
    ((((struct s*)((shared_ptr) + (x))))->i) = s.i;

    // Struct member array access
    (((s).p)[x]) = y; // NOT INSTRUMENTED
    (((s).i)[x]) = x;

    // Pointer expr member array access
    ((((struct s*)((shared_ptr) + (x)))->p)[x]) = y;
    ((((struct s*)((shared_ptr) + (x)))->i)[x]) = x;

    // Struct member pointer access
    ((((s).p)[x])[x]) = x;

    // Pointer expr member pointer access
    ((((struct s*)((shared_ptr) + (x)))->p[x])[x]) = x;

    return t_nested;
}

void* t_nested()
{
    int x;

    // Array access
    shared_array[shared_array[x]] = x;

    // Pointer expr array subscript
    ((int*)(shared_ptr + x))[((int*)(shared_ptr + x))[x]] = x;

    ((struct s*)(shared_ptr + x + ((struct s*)(shared_ptr + x))->i[x]))->i[((struct s*)(shared_ptr + x))->i[x]] = x;

    // return NULL;
}
