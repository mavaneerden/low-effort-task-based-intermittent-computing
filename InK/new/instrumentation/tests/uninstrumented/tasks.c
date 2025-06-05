#include <stddef.h>
#include "ink/ink.h"

void* t_init();
void* t_recurse();
void* t_branch_fwd();
void* t_branch_bwd();

INK_CREATE_THREAD(1, false)
{
    return t_init;
}

/* Simple task, returns next task. */
void* t_init()
{
    return t_branch_fwd;
}

/* Branches to tasks that were not before this task. */
void* t_branch_fwd()
{
    int x = 1;

    if (x)
        return t_recurse;
    else
        return t_branch_bwd;
}

/* Branches to a task that was before this task (t_init). */
void* t_branch_bwd()
{
    int x = 1;

    if (x)
        return t_recurse;
    else
        return t_init;
}

/* Branches to a task recursively. */
void* t_branch_recurse()
{
    int x = 1;

    if (x)
        return t_recurse;
    else
        return t_branch_recurse;
}

/* Returns recursively. */
void* t_recurse()
{
    return t_recurse;
}
