/**
 * This file tests that shared variables that are used in
 * non-task functions are illegal.
 */
#include <stddef.h>
#include "ink/ink.h"

int shared_var;

void some_func()
{
    shared_var++;
}

INK_CREATE_THREAD(1, false)
{
    shared_var++;

    return NULL;
}
