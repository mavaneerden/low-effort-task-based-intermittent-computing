#include <stddef.h>
#include "ink/ink.h"

static int shared_var;

#define SHARED_VAR_MACRO shared_var


INK_CREATE_THREAD(1, false)
{
    int local_var;

    SHARED_VAR_MACRO++;
    local_var = SHARED_VAR_MACRO;

    return NULL;
}
