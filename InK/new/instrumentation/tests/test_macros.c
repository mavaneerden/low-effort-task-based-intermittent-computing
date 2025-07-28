// How this will go:
// 1. Do the variable collection as normal. However, do not make a distinction for static variables; they go into the same map.
//    For every variable, save the following: VarDecl, Functions { Uses }
// 2. Propagate global init stuff, then remove read-only variables as normal.
// 3. Every variable is assigned a number. Store this in the map.

#include <stddef.h>
#include "ink/ink.h"
#include "ink/address_translation.h"

// Global declaration/defintions removed

void* t_read();
void* t_write();
void* t_static();

typedef struct
{
    INK_INSTRUMENTATION_SHARED_VAR_STRUCT_FIELD(int, shared_var, 0); // Add number to each variable to avoid name clashes with static vars
    INK_INSTRUMENTATION_SHARED_VAR_STRUCT_FIELD(int, static_var, 1);
    INK_INSTRUMENTATION_SHARED_VAR_STRUCT_FIELD_ARRAY(int, arr, 2, [6 - 1]); /* LIMITATION: array index const variables must be declared before the struct. */
} INK_INSTRUMENTATION_SHARED_VAR_STRUCT_TYPE;
static INK_INSTRUMENTATION_SHARED_VAR_STRUCT_TYPE INK_PERSISTENT INK_INSTRUMENTATION_SHARED_VAR_STRUCT_NAME[2];

INK_CREATE_THREAD(1, true) // This macro must also pass the buffer to the task function!
{
    return t_read;
}

void* t_read(INK_INSTRUMENTATION_TASK_BUFFER_ARG) // void* __ink_task_shared_variable_buffer
{
    int local_var;

    /* Simple read. */
    local_var = INK_INSTRUMENTATION_TASK_BUFFER_GET(shared_var, 0); // (((__ink_shared_vars_buffer_t*)__ink_task_shared_variable_buffer)->shared_var0);

    return t_write;
}

void* t_write(INK_INSTRUMENTATION_TASK_BUFFER_ARG)
{
    int local_var = 0;

    /* Simple write. */
    INK_INSTRUMENTATION_TASK_BUFFER_GET(shared_var, 0) = local_var;

    return t_static;
}

void* t_static(void* __ink_task_shared_variable_buffer)
{
    int local_var = 0;

    const unsigned var = 1;

    /* Static variable, stays the same between task executions so must be instrumented. */
    // Static declaration/definiton replaced by this
    INK_INSTRUMENTATION_STATIC_INIT(static_var, 1, var + 1)

    /* Simple write. */
    INK_INSTRUMENTATION_TASK_BUFFER_GET(static_var, 1)++;

    return NULL;
}

// End of file, since there may be some init that is below the struct.
#include <string.h>
INK_INSTRUMENTATION_SHARED_VARS_INIT_FUNC(1)
{
    if (ink_is_first_boot())
    {
        INK_INSTRUMENTATION_SHARED_VARS_INIT_GET(shared_var, 0) = 1;
        // Multidimensional arrays are a PAIN!!!!!
        // Need to find a way to get the number of elements from LLVM, is this possible?
        int a[5] = {0, 1, 2, 3, 4};
        INK_INSTRUMENTATION_SHARED_VARS_INIT_ARRAY(int, arr, 2, [6 - 1], 5, {0, 1, 2, 3, 4});
    }
}
