#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 5

struct
{
    struct
    {
        int a;
        struct
        {
            int b;
        } s2;
    } s1;
    int c;
} shared_anonymous_struct;

INK_CREATE_THREAD(1, false)
{
    int local_var;

    local_var = shared_anonymous_struct.s1.a;
    local_var = shared_anonymous_struct.s1.s2.b;
    local_var = shared_anonymous_struct.c;

    shared_anonymous_struct.s1.a = local_var;
    shared_anonymous_struct.s1.s2.b = local_var;
    shared_anonymous_struct.c = local_var;

    return NULL;
}
