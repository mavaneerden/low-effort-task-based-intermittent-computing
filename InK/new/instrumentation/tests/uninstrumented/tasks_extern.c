#include <stddef.h>
#include "ink/ink.h"

extern void* t_extern();

/* Returning an extern task: this is illegal. */
INK_CREATE_THREAD(1, false)
{
    return t_extern;
}
