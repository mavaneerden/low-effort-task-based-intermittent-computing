#include <stddef.h>
#include "ink/ink.h"

int shared_int;
int shared_int2;
int* shared_var = &shared_int;
int* shared_var2 = &shared_int2;
int* shared_var3 = &shared_int;
int* shared_var_ptr[3] ={ &shared_var, &shared_var2, &shared_var3 };

INK_CREATE_THREAD(1, false)
{
    int local_var;

    shared_var_ptr[0][0] = local_var;
    *shared_var3 = local_var;

    return NULL;
}
