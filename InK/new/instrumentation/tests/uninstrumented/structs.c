/**
 * This file tests the handling of structs.
 * Struct pointers are tested separately in the pointer test.
 */

#include <stddef.h>
#include "ink/ink.h"

static struct s {
    int a;
    int b[5];
    int c[5][5];
} shared_struct;

static struct
{
    struct
    {
        int a;
        struct
        {
            int b;
            int d[5];
        } s2;
    } s1;
    int c;
} shared_anonymous_struct;

static struct
{
    int a;
} anonymous_struct_array[5][5];


typedef struct
{
    int a;
} t_s;
static t_s typedef_anonymous_struct;


static void* t_read();
static void* t_write();

INK_CREATE_THREAD(1, false)
{
    return t_read;
}

static void* t_read()
{
    int local_var;

    /* Simple member read. */
    local_var = shared_struct.a;
    local_var = shared_anonymous_struct.c;

    /* Nested member read. */
    local_var = shared_anonymous_struct.s1.a;
    local_var = shared_anonymous_struct.s1.s2.b;

    /* Array member read. */
    local_var = shared_struct.b[0];
    local_var = shared_struct.c[0][0];
    local_var = shared_anonymous_struct.s1.s2.d[0];

    return t_write;
}

static void* t_write()
{
    int local_var = 0;

    /* Simple member write. */
    shared_struct.a = local_var;
    shared_struct.a += local_var;
    shared_struct.a -= local_var;
    shared_struct.a++;
    ++shared_struct.a;
    shared_anonymous_struct.c = local_var;
    shared_anonymous_struct.c += local_var;
    shared_anonymous_struct.c -= local_var;
    shared_anonymous_struct.c++;
    ++shared_anonymous_struct.c;

    /* Nested member write. */
    shared_anonymous_struct.s1.a = local_var;
    shared_anonymous_struct.s1.a += local_var;
    shared_anonymous_struct.s1.a -= local_var;
    shared_anonymous_struct.s1.a++;
    ++shared_anonymous_struct.s1.a;
    shared_anonymous_struct.s1.s2.b = local_var;
    shared_anonymous_struct.s1.s2.b += local_var;
    shared_anonymous_struct.s1.s2.b -= local_var;
    shared_anonymous_struct.s1.s2.b++;
    ++shared_anonymous_struct.s1.s2.b;

    /* Nested member write. */
    typedef_anonymous_struct.a = local_var;
    typedef_anonymous_struct.a += local_var;
    typedef_anonymous_struct.a -= local_var;
    typedef_anonymous_struct.a++;
    ++typedef_anonymous_struct.a;
    typedef_anonymous_struct.a = local_var;
    typedef_anonymous_struct.a += local_var;
    typedef_anonymous_struct.a -= local_var;
    typedef_anonymous_struct.a++;
    ++typedef_anonymous_struct.a;

    /* Nested member write. */
    anonymous_struct_array[0][0].a = local_var;
    anonymous_struct_array[0][0].a += local_var;
    anonymous_struct_array[0][0].a -= local_var;
    anonymous_struct_array[0][0].a++;
    ++anonymous_struct_array[0][0].a;
    anonymous_struct_array[0][0].a = local_var;
    anonymous_struct_array[0][0].a += local_var;
    anonymous_struct_array[0][0].a -= local_var;
    anonymous_struct_array[0][0].a++;
    ++anonymous_struct_array[0][0].a;

    /* Array member write. */
    shared_struct.b[0] = local_var;
    shared_struct.b[0] += local_var;
    shared_struct.b[0] -= local_var;
    shared_struct.b[0]++;
    ++shared_struct.b[0];
    shared_struct.c[0][0] = local_var;
    shared_struct.c[0][0] += local_var;
    shared_struct.c[0][0] -= local_var;
    shared_struct.c[0][0]++;
    ++shared_struct.c[0][0];
    shared_anonymous_struct.s1.s2.d[0] = local_var;
    shared_anonymous_struct.s1.s2.d[0] += local_var;
    shared_anonymous_struct.s1.s2.d[0] -= local_var;
    shared_anonymous_struct.s1.s2.d[0]++;
    ++shared_anonymous_struct.s1.s2.d[0];

    return NULL;
}
