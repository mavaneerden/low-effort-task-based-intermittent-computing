#include <stddef.h>
#include "ink/ink.h"

int shared_var;
int* shared_var_ptr = &shared_var;

/* Since shared_var_ptr is used in this function, it is task-shared.
 * Therefore, shared_var should also be task-shared since its value may be changed
 * via the shared_var_ptr pointer.
 */
INK_CREATE_THREAD(1, false)
{
    int local_var;

    local_var = *shared_var_ptr;

    return NULL;
}
