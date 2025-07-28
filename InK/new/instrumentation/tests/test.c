#include <stddef.h>
#include "ink/ink.h"

// Global declaration/defintions removed

void* t_read();
void* t_write();
void* t_static();

typedef struct
{
    int shared_var0; // Add number to each variable to avoid name clashes with static vars
    int static_var1;
} __ink_shared_vars_buffer_t; // Use underscores in names to avoid clashes (no programmer should use underscores)
__ink_shared_vars_buffer_t __ink_shared_vars_buffers[2] __attribute__((section(".persistent")));

INK_CREATE_THREAD(1, true)
{
    return t_read;
}

void* t_read(void* __ink_task_shared_variable_buffer)
{
    int local_var;

    /* Simple read. */
    local_var = (((__ink_shared_vars_buffer_t*)__ink_task_shared_variable_buffer)->shared_var0);

    return t_write;
}

void* t_write(void* __ink_task_shared_variable_buffer)
{
    int local_var = 0;

    /* Simple write. */
    (((__ink_shared_vars_buffer_t*)__ink_task_shared_variable_buffer)->shared_var0) = local_var;

    return t_static;
}

void* t_static(void* __ink_task_shared_variable_buffer)
{
    int local_var = 0;

    /* Static variable, stays the same between task executions so must be instrumented. */
    // Static declaration/definiton removed

    /* Simple write. */
    (((__ink_shared_vars_buffer_t*)__ink_task_shared_variable_buffer)->static_var1)++;

    return NULL;
}

void __attribute__((constructor(1))) __ink_initialize_shared_vars_1(void)
{
    if (ink_is_first_boot())
    {
        __ink_shared_vars_buffers[0].shared_var0 = 1;
        __ink_shared_vars_buffers[0].static_var1 = 5;
    }
}
