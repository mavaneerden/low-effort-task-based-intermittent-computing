#include <stddef.h>
#include "ink/ink.h"

INK_CREATE_THREAD(1, false)
{
    return NULL;
}

INK_CREATE_THREAD(2, false)
{
    return NULL;
}