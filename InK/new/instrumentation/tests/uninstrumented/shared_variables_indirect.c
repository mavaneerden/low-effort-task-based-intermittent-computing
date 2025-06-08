#include <stddef.h>
#include "ink/ink.h"

int shared_int;
int shared_int2;
int* shared_var = &shared_int;
int* shared_var2 = &shared_int2;
int* shared_var3 = &shared_int;
int* shared_var_ptr[3] ={ &shared_var, &shared_var2, &shared_var3 };

/* Since shared_var_ptr is used in this function, it is task-shared.
 * Therefore, shared_var should also be task-shared since its value may be changed
 * via the shared_var_ptr pointer.
 */
INK_CREATE_THREAD(1, false)
{
    int local_var;

    local_var = shared_var_ptr[0][0];

    return NULL;
}
