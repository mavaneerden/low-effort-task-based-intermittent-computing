#include <stddef.h>
#include "ink/ink.h"

#define ARRAY_SIZE 5

// TODO: add tests for 2D and 3D arrays!!!
// TODO: add tests for complex array indexing (via pointers/shared variables, etc)

int shared_array[ARRAY_SIZE];

void fill_array(int local_array[ARRAY_SIZE])
{
    for (size_t i = 0; i < ARRAY_SIZE; i++)
    {
        local_array[i] = i;
    }
}

INK_CREATE_THREAD(1, false)
{
    // Function manipulates shared_array: instrumentation makes sure correct buffer is used.
    // Direct manipulation of shared_array inside fill_array is therefore prohibited.
    fill_array(shared_array);

    // Array write
    shared_array[0] = 1;

    // Array read
    int i = shared_array[4];

    // Special edge-case: a pointer can also use subscript notation!
    // This must be instrumented as well, to maintain correctness.
    int* ptr = (int *)&shared_array;
    ptr[1] = 0;

    return NULL;
}
