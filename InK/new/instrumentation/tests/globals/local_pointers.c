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

    // At runtime, it may be unknown what this pointer points to.
    // In this case, it points to shared data which is not yet instrumented.
    // We have to instrument any dereferences to this pointer to make sure we use
    // the correct buffer for the shared data.
    // To correctly do this, we need to start with two things:
    // 1. instrument var_pointers since it is shared
    // 2. instrument the subscript since var_pointers can point to shared data
    int* local_ptr_shared_var = var_pointers[0];

    local_var = *local_ptr_shared_var;
    *local_ptr_shared_var = local_var;

    local_var = *local_ptr_shared_var++;
    local_var = ++*local_ptr_shared_var;

    return t_subscript;
}

void *t_subscript()
{
    int local_var;

    // Array subscripts are treated as dereference operators, as seen in this example.
    // Here, a pointer points to other shared data.
    // To access this shared data via the local pointer, an array subscript operator can be used.
    // To make sure the correct buffer is accessed, we need to instrument the pointer.
    int* local_ptr_shared_var = shared_array_ptr;

    local_var = local_ptr_shared_var[0];
    local_ptr_shared_var[0] = local_var;

    return NULL;
}
