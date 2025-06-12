/**
 * This file tests that shared variables that are used in
 * non-task functions are illegal.
 */
#include <stddef.h>
#include "ink/ink.h"

int shared_var;

#define SHARED_VAR_MACRO shared_var


INK_CREATE_THREAD(1, false)
{
    int local_var;

    SHARED_VAR_MACRO++;
    local_var = SHARED_VAR_MACRO;

    shared_var++;
    local_var = shared_var;

    return NULL;
}
