#include <stddef.h>
#include "ink/ink.h"

int shared_var = 0;
int shared_var2 = 0;
int shared_array[2] = {0, 1};
int* var_pointers[2] = {&shared_var, &shared_var2};
int* shared_array_ptr = (int*) shared_array;

void* t_subscript();

INK_CREATE_THREAD(1, false)
{
    int local_var;
    int* local_ptr_shared_var = var_pointers[0];

    local_var = *local_ptr_shared_var;
    *local_ptr_shared_var = local_var;

    local_var = *local_ptr_shared_var++;
    local_var = ++*local_ptr_shared_var;
    local_var = (*local_ptr_shared_var)++;
    *local_ptr_shared_var = *local_ptr_shared_var++;
    *local_ptr_shared_var = ++*local_ptr_shared_var;
    *local_ptr_shared_var = (*local_ptr_shared_var)++;
    *local_ptr_shared_var++;
    ++*local_ptr_shared_var;
    (*local_ptr_shared_var)++;

    *local_ptr_shared_var = *local_ptr_shared_var;
    *local_ptr_shared_var = 25 + *local_ptr_shared_var;

    return NULL;
}
