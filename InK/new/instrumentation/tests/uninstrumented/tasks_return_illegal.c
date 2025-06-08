#include <stddef.h>
#include "ink/ink.h"

void* some_ptr;

void* t_init();

INK_CREATE_THREAD(1, false)
{
    return t_init;
}

void* t_init()
{
    return some_ptr;
}
