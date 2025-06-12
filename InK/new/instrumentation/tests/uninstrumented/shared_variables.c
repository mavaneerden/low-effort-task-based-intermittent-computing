#include <stddef.h>
#include "ink/ink.h"

int shared_var;

void* t_read();
void* t_write();
void* t_static();

INK_CREATE_THREAD(1, false)
{
    return t_read;
}

void* t_read()
{
    int local_var;

    /* Simple read. */
    local_var = shared_var;

    return t_write;
}

void* t_write()
{
    int local_var = 0;

    /* Simple write. */
    shared_var = local_var;
    shared_var += local_var;
    shared_var -= local_var;
    shared_var++;
    ++shared_var;

    return t_static;
}

void* t_static()
{
    int local_var = 0;

    /* Static variable, stays the same between task executions so must be instrumented. */
    static int static_var;

    /* Simple read. */
    static_var = local_var;

    /* Simple write. */
    static_var = local_var;
    static_var += local_var;
    static_var -= local_var;
    static_var++;
    ++static_var;

    return NULL;
}
