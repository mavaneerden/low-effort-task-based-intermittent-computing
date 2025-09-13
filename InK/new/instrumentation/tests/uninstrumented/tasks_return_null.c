#include <stddef.h>
#include "ink/ink.h"

static void* t_init();

INK_CREATE_THREAD(1, false)
{
    return t_init;
}

static void* t_init()
{
    return NULL;
}
