/**
 * This file tests the handling of structs.
 * Struct pointers are tested separately in the pointer test.
 */

#include <stddef.h>
#include "ink/ink.h"

int shared_array[5];
int shared_array_2d[5][5];
int shared_array_3d[5][5][5];

void* t_read();
void* t_write();
void* t_nested();

INK_CREATE_THREAD(1, false)
{
    return t_read;
}

void* t_read()
{
    int local_var;

    /* Simple read. */
    local_var = shared_array[0];
    local_var = shared_array_2d[0][0];
    local_var = shared_array_3d[0][0][0];

    return t_write;
}

void* t_write()
{
    int local_var = 0;

    /* Simple write. */
    shared_array[0] = local_var;
    shared_array[0] += local_var;
    shared_array[0] -= local_var;
    shared_array[0]++;
    ++shared_array[0];
    shared_array_2d[0][0] = local_var;
    shared_array_2d[0][0] += local_var;
    shared_array_2d[0][0] -= local_var;
    shared_array_2d[0][0]++;
    ++shared_array_2d[0][0];
    shared_array_3d[0][0][0] = local_var;
    shared_array_3d[0][0][0] += local_var;
    shared_array_3d[0][0][0] -= local_var;
    shared_array_3d[0][0][0]++;
    ++shared_array_3d[0][0][0];

    return t_nested;
}

void* t_nested()
{
    int local_var;

    /* Nesting read. */
    local_var = shared_array_3d[0][shared_array_2d[0][shared_array[0]]][0];

    /* Nesting write. */
    local_var = shared_array_3d[0][shared_array_2d[0][++shared_array[0]]++][0];

    return NULL;
}
