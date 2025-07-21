#include <msp430.h>
#include <stdint.h>
#include <stdio.h>

#include "ink.h"

// Profiling flags.
#if RAISE_PIN
__nv uint8_t full_run_started = 0;
__nv uint8_t first_run        = 1;
#endif

#ifndef RST_TIME
#define RST_TIME 25000
#endif

#define N_NODES 25
#define Q_SIZE  4 * N_NODES

#define INFINITY  0xFFFF
#define UNDEFINED 0xFFFF

typedef struct
{
    uint16_t dist;
    uint16_t prev;
} node_t;

typedef struct
{
    uint16_t node;
    uint16_t dist;
    uint16_t prev;
} queue_t;

#include "data.h"

// Tasks.
ENTRY_TASK(task_init);
TASK(task_init_list);
TASK(task_select_nearest_node);
TASK(task_find_shorter_path);
TASK(task_done);

// Task-shared protected variables.
__shared(
    queue_t  queue[Q_SIZE];  // largest size?
    uint16_t deq_idx;
    uint16_t enq_idx;
    uint16_t node_idx;
    uint16_t src_node;
    queue_t  nearest_node;
    node_t   node_list[N_NODES];
)

    // called at the very first boot
void thread1_init()
{
    // create a thread with priority 15 and entry task t_init
    __CREATE(15, task_init);
    __SIGNAL(15);
}

__app_reboot()
{
#ifdef RAISE_PIN
    __port_init(3, 4);
#else
    __no_operation();
#endif
}

ENTRY_TASK(task_init)
{
#if RAISE_PIN
    full_run_started = 1;
#endif

    __SET(deq_idx, 0);
    __SET(enq_idx, 0);

    // Enqueue.
    __SET(queue[0].node, __GET(src_node));
    __SET(queue[0].dist, 0);
    __SET(queue[0].prev, UNDEFINED);
    __SET(enq_idx, ++__GET(enq_idx));
    // LOG("E: %u, D: %u\n", __GET(enq_idx), __GET(deq_idx));

    return task_init_list;
}

TASK(task_init_list)
{
    uint16_t i, sn;

    for (i = 0; i < N_NODES; i++)
    {
        __SET(node_list[i].dist, INFINITY);
        __SET(node_list[i].prev, UNDEFINED);
    }

    sn = __GET(src_node);
    __SET(node_list[sn].dist, 0);
    __SET(node_list[sn].prev, UNDEFINED);

    sn++;
    // Test nodes 0, 1, 2, 3.
    if (sn < 4)
    {
        __SET(src_node, sn);
    }
    else
    {
        __SET(src_node, 0);
    }

    return task_select_nearest_node;
}

TASK(task_select_nearest_node)
{
    uint16_t i = __GET(deq_idx);

    if (__GET(enq_idx) != i)
    {
        // Dequeue nearest node.
        __SET(nearest_node.node, __GET(queue[i].node));
        __SET(nearest_node.dist, __GET(queue[i].dist));
        __SET(nearest_node.prev, __GET(queue[i].prev));
        i++;
        if (i < Q_SIZE)
        {
            __SET(deq_idx, i);
        }
        else
        {
            __SET(deq_idx, 0);
        }
        // LOG("E: %u, D: %u\n", __GET(enq_idx), __GET(deq_idx));

        __SET(node_idx, 0);
        return task_find_shorter_path;
    }
    else
    {
        return task_done;
    }
}

TASK(task_find_shorter_path)
{
    uint16_t cost, node, dist, nearest_dist, i;

    node = __GET(nearest_node.node);
    i    = __GET(node_idx);
    cost = adj_matrix[node][i];

    if (cost != INFINITY)
    {
        nearest_dist = __GET(nearest_node.dist);
        dist         = __GET(node_list[i].dist);
        if (dist == INFINITY || dist > (cost + nearest_dist))
        {
            __SET(node_list[i].dist, nearest_dist + cost);
            __SET(node_list[i].prev, node);

            // Enqueue.
            uint16_t j = __GET(enq_idx);
            if (j == (__GET(deq_idx) - 1))
            {
                // LOG("QUEUE IS FULL!");
            }
            __SET(queue[j].node, i);
            __SET(queue[j].dist, nearest_dist + cost);
            __SET(queue[j].prev, node);
            j++;
            if (j < Q_SIZE)
            {
                __SET(enq_idx, j);
            }
            else
            {
                __SET(enq_idx, 0);
            }
            // LOG("E: %u, D: %u\n", __GET(enq_idx), __GET(deq_idx));
        }
    }

    __SET(node_idx, ++__GET(node_idx));
    if (__GET(node_idx) < N_NODES)
    {
        return task_find_shorter_path;
    }
    else
    {
        return task_select_nearest_node;
    }
}

TASK(task_done)
{
#ifdef RAISE_PIN
    if (full_run_started)
    {
        __port_on(3, 4);
        __port_off(3, 4);
        full_run_started = 0;
    }
#endif

    return task_init;
}
