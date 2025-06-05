#include <stddef.h>
#include "ink/ink.h"

extern int extern_shared_var;

/* Using a non-const extern variable: illegal. */
INK_CREATE_THREAD(1, false)
{
    extern_shared_var++;
}
