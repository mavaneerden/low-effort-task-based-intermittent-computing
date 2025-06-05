#include "ink/ink.h"

#include "tasks_header.h"

/* Returning an extern task: this is illegal. */
INK_CREATE_THREAD(1, false)
{
    return header_task;
}
