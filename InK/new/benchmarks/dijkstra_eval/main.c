#include <msp430.h>
#include <stdint.h>
#include <stdio.h>

#include "benchmark_helpers.h"
#include "ink/ink.h"

// Profiling flags.
#if RAISE_PIN
INK_PERSISTENT uint8_t full_run_started = 0;
INK_PERSISTENT uint8_t first_run        = 1;
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
static void* task_init_list();
static void* task_select_nearest_node();
static void* task_find_shorter_path();
static void* task_done();

// Task-shared protected variables.
queue_t  queue[Q_SIZE];  // largest size?
uint16_t deq_idx;
uint16_t enq_idx;
uint16_t node_idx;
uint16_t src_node;
queue_t  nearest_node;
node_t   node_list[N_NODES];

INK_CREATE_THREAD(15, true)
{
#if RAISE_PIN
    full_run_started = 1;
#endif

    deq_idx = 0;
    enq_idx = 0;

    // Enqueue.
    queue[0].node = src_node;
    queue[0].dist = 0;
    queue[0].prev = UNDEFINED;
    ++enq_idx;
    // LOG("E: %u, D: %u\n", RP(enq_idx), RP(deq_idx));

    return task_init_list;
}

static void* task_init_list()
{
    uint16_t i, sn;

    for (i = 0; i < N_NODES; i++)
    {
        node_list[i].dist = INFINITY;
        node_list[i].prev = UNDEFINED;
    }

    sn                 = src_node;
    node_list[sn].dist = 0;
    node_list[sn].prev = UNDEFINED;

    sn++;
    // Test nodes 0, 1, 2, 3.
    if (sn < 4)
    {
        src_node = sn;
    }
    else
    {
        src_node = 0;
    }

    return task_select_nearest_node;
}

static void* task_select_nearest_node()
{
    uint16_t i = deq_idx;

    if (enq_idx != i)
    {
        // Dequeue nearest node.
        nearest_node.node = queue[i].node;
        nearest_node.dist = queue[i].dist;
        nearest_node.prev = queue[i].prev;
        i++;
        if (i < Q_SIZE)
        {
            deq_idx = i;
        }
        else
        {
            deq_idx = 0;
        }
        // LOG("E: %u, D: %u\n", RP(enq_idx), RP(deq_idx));

        node_idx = 0;
        return task_find_shorter_path;
    }
    else
    {
        return task_done;
    }
}

static void* task_find_shorter_path()
{
    uint16_t cost, node, dist, nearest_dist, i;

    node = nearest_node.node;
    i    = node_idx;
    cost = adj_matrix[node][i];

    if (cost != INFINITY)
    {
        nearest_dist = nearest_node.dist;
        dist         = node_list[i].dist;
        if (dist == INFINITY || dist > (cost + nearest_dist))
        {
            node_list[i].dist = nearest_dist + cost;
            node_list[i].prev = node;

            // Enqueue.
            uint16_t j = enq_idx;
            if (j == (deq_idx - 1))
            {
                // LOG("QUEUE IS FULL!");
            }
            queue[j].node = i;
            queue[j].dist = nearest_dist + cost;
            queue[j].prev = node;
            j++;
            if (j < Q_SIZE)
            {
                enq_idx = j;
            }
            else
            {
                enq_idx = 0;
            }
            // LOG("E: %u, D: %u\n", RP(enq_idx), RP(deq_idx));
        }
    }

    if (++node_idx < N_NODES)
    {
        return task_find_shorter_path;
    }
    else
    {
        return task_select_nearest_node;
    }
}

static void* task_done()
{
    __no_operation();

#if RAISE_PIN
    if (full_run_started)
    {
        __port_on(3, 4);
        __port_off(3, 4);
        full_run_started = 0;
    }
#endif

    return INK_THREAD_ENTRY_TASK;
}

int main(void)
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode

#ifdef RAISE_PIN
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
#endif

    /* Start the scheduler. */
    ink_scheduler_run();

    return 0;
}
