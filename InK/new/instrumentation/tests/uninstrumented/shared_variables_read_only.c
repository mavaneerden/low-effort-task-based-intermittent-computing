#include <stddef.h>
#include "ink/ink.h"

static int shared_var;

INK_CREATE_THREAD(1, false)
{
    int local_var;

    local_var = shared_var;

    return NULL;
}
