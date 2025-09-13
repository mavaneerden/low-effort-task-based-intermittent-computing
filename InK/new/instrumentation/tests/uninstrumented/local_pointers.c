#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 5

static void* t_assign();
static void* t_assign_self();
static void* t_nested();

INK_CREATE_THREAD(1, false)
{
    int x;
    int* y;
    int shared_array[ARRAY_SIZE];
    int* shared_ptr;
    struct s
    {
        int* p2[ARRAY_SIZE][ARRAY_SIZE];
        int* p[ARRAY_SIZE];
        int* i;
    } s;

    /* Array access read, this won't be instrumented since an array cannot be reassigned. */
    x = shared_array[x];

    /* Pointer dereference. */
    x = *shared_ptr;

    /* Pointer dereference via array subscript. */
    x = ((int*)(shared_ptr + x))[x];

    /* Pointer dereference via struct member access. */
    y = ((struct s*)(shared_ptr + x))->i;

    /* Array access of struct members. First line won't be instrumented since it is an array and can't be reassigned. */
    y = s.p[x];
    x = s.i[x];

    /* Array access of struct members combined with pointer dereference via struct member access. */
    y = ((struct s*)(shared_ptr + x))->p[x];
    x = ((struct s*)(shared_ptr + x))->i[x];

    /* Pointer dereference via array subscript on struct member. */
    x = s.p[x][x];

    /* Pointer dereference via array access combined with pointer dereference via struct member access, for a multi-dimensional array. */
    x = ((struct s*)(shared_ptr + x))->p[x][x];

    return t_assign;
}

void* t_assign()
{
    int x;
    int* y;
    int shared_array[ARRAY_SIZE];
    int* shared_ptr;
    struct s
    {
        int* p2[ARRAY_SIZE][ARRAY_SIZE];
        int* p[ARRAY_SIZE];
        int* i;
    } s;

    /* Array access write, this won't be instrumented since an array cannot be reassigned. */
    shared_array[x] = x;
    shared_array[x] += x;
    shared_array[x]++;
    ++shared_array[x];

    /* Pointer dereference. */
    *shared_ptr = x;
    *shared_ptr += x;
    *shared_ptr++;
    ++*shared_ptr;

    /* Pointer dereference via array subscript. */
    ((int*)(shared_ptr + x))[x] = x;
    ((int*)(shared_ptr + x))[x] += x;
    ((int*)(shared_ptr + x))[x]++;
    ++((int*)(shared_ptr + x))[x];

    /* Pointer dereference via struct member access. */
    ((struct s*)(shared_ptr + x))->i = s.i;
    ((struct s*)(shared_ptr + x))->i += x;
    ((struct s*)(shared_ptr + x))->i++;
    ++((struct s*)(shared_ptr + x))->i;

    /* Array access of struct members. First line won't be instrumented since it is an array and can't be reassigned. */
    s.p[x] = y;
    s.p[x] += x;
    s.p[x]++;
    ++s.p[x];
    s.i[x] = x;
    s.i[x] += x;
    s.i[x]++;
    ++s.i[x];

    /* Array access of struct members combined with pointer dereference via struct member access. */
    ((struct s*)(shared_ptr + x))->p[x] = y;
    ((struct s*)(shared_ptr + x))->p[x] += x;
    ((struct s*)(shared_ptr + x))->p[x]++;
    ++((struct s*)(shared_ptr + x))->p[x];
    ((struct s*)(shared_ptr + x))->i[x] = x;
    ((struct s*)(shared_ptr + x))->i[x] += x;
    ((struct s*)(shared_ptr + x))->i[x]++;
    ++((struct s*)(shared_ptr + x))->i[x];

    /* Pointer dereference via array subscript on struct member. */
    s.p[x][x] = x;
    s.p[x][x] += x;
    s.p[x][x]++;
    ++s.p[x][x];

    /* Pointer dereference via array access combined with pointer dereference via struct member access, for a multi-dimensional array. */
    ((struct s*)(shared_ptr + x))->p[x][x] = x;
    ((struct s*)(shared_ptr + x))->p[x][x] += x;
    ((struct s*)(shared_ptr + x))->p[x][x]++;
    ++((struct s*)(shared_ptr + x))->p[x][x];

    return t_assign_self;
}

void *t_assign_self()
{
    int x;
    int* y;
    int shared_array[ARRAY_SIZE];
    int* shared_ptr;
    struct s
    {
        int* p2[ARRAY_SIZE][ARRAY_SIZE];
        int* p[ARRAY_SIZE];
        int* i;
    } s;

    /* Pointer dereference. */
    *shared_ptr = *shared_ptr;

    /* Pointer dereference via array subscript. */
    ((int*)(shared_ptr + x))[x] = ((int*)(shared_ptr + x))[x];

    /* Pointer dereference via struct member access. */
    ((struct s*)(shared_ptr + x))->i = ((struct s*)(shared_ptr + x))->i;

    /* Pointer dereference via array subscript for struct members. */
    s.i[x] = s.i[x];

    /* Array access of struct members combined with pointer dereference via struct member access. */
    ((struct s*)(shared_ptr + x))->p[x] = ((struct s*)(shared_ptr + x))->p[x];
    ((struct s*)(shared_ptr + x))->i[x] = ((struct s*)(shared_ptr + x))->i[x];

    /* Pointer dereference via array subscript on struct member. */
    s.p[x][x] = s.p[x][x];

    /* Pointer dereference via array access combined with pointer dereference via struct member access, for a multi-dimensional array. */
    ((struct s*)(shared_ptr + x))->p[x][x] = ((struct s*)(shared_ptr + x))->p[x][x];

    return t_nested;
}

void* t_nested()
{
    int x;
    int shared_array[ARRAY_SIZE];
    int* shared_ptr;
    struct s
    {
        int* p2[ARRAY_SIZE][ARRAY_SIZE];
        int* p[ARRAY_SIZE];
        int* i;
    } s;

    /* Pointer dereference in array subscript index. */
    ((int*)(shared_ptr + x))[((int*)(shared_ptr + x))[x]] = x;

    /* Pointer dereference in struct member base and array subscript index. */
    ((struct s*)(shared_ptr + x + ((struct s*)(shared_ptr + x))->i[x]))->i[((struct s*)(shared_ptr + x))->i[x]] = x;

    return NULL;
}
