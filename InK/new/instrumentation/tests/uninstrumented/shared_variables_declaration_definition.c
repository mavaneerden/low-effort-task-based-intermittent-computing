#include <stddef.h>
#include "ink/ink.h"

static int shared_int;

INK_CREATE_THREAD(1, false)
{
    int local_var;

    shared_int = local_var;

    return NULL;
}

static int shared_int = 1;
