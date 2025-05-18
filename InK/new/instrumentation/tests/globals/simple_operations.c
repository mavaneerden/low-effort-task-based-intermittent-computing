#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 5

int shared_scalar;
int *shared_pointer;
int shared_array[ARRAY_SIZE];

struct s
{
    int scalar;
    int *pointer;
    int array[ARRAY_SIZE];
} shared_struct;

struct
{
    int scalar;
    int *pointer;
    int array[ARRAY_SIZE];
} shared_anonymous_struct;

union u
{
    uint8_t byte;
    uint16_t word;
    int integer;
} shared_union;

union
{
    uint8_t byte;
    uint16_t word;
    int integer;
} shared_anonymous_union;

void* t_assign();
void* t_prepost();

INK_CREATE_THREAD(1, true)
{
    return t_assign;
}

void* t_assign()
{
    int local_var;

    local_var = shared_scalar;
    local_var = shared_struct.scalar;
    local_var = shared_anonymous_struct.scalar;
    local_var = shared_union.integer;
    local_var = shared_anonymous_union.integer;
    local_var = *shared_pointer;
    local_var = shared_array[0];

    shared_scalar = local_var;
    shared_struct.scalar = local_var;
    shared_anonymous_struct.scalar = local_var;
    shared_union.integer = local_var;
    shared_anonymous_union.integer = local_var;
    *shared_pointer = local_var;
    shared_array[0] = local_var;

    return t_prepost;
}

void* t_prepost()
{
    int local_var;

    local_var = shared_scalar++;
    local_var = shared_struct.scalar++;
    local_var = shared_anonymous_struct.scalar++;
    local_var = shared_union.integer++;
    local_var = shared_anonymous_union.integer++;
    local_var = *shared_pointer++;
    local_var = shared_array[0]++;

    local_var = ++shared_scalar;
    local_var = ++shared_struct.scalar;
    local_var = ++shared_anonymous_struct.scalar;
    local_var = ++shared_union.integer;
    local_var = ++shared_anonymous_union.integer;
    local_var = ++*shared_pointer;
    local_var = ++shared_array[0];

    return NULL;
}
