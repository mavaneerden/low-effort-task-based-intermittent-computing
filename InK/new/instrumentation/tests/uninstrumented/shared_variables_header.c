#include "ink/ink.h"

#include "shared_variables_header.h"

/* Using a non-const variable from a header file: illegal. */
INK_CREATE_THREAD(1, false)
{
    header_shared_var++;
}
