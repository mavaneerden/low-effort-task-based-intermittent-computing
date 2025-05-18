#include <stddef.h>
#include "ink/ink.h"

int thread_shared_variable = 0;
int task_shared_variable = 1;

void* t_next(void);

INK_CREATE_THREAD(1, false)
{
    thread_shared_variable = thread_shared_variable + 10;
    thread_shared_variable++;
    int a = --thread_shared_variable;

    task_shared_variable = task_shared_variable + 10;
    task_shared_variable++;
    a = --task_shared_variable;

    return t_next;
}

void* t_next()
{
    return NULL;
}

INK_CREATE_THREAD(2, false)
{
    thread_shared_variable = thread_shared_variable + 10;
    thread_shared_variable++;
    int a = --thread_shared_variable;

    return NULL;
}
