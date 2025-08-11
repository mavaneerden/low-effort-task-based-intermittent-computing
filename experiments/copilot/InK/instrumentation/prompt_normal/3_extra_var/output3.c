#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Include the InK API

// Declare task-shared variables
__shared(
    uint8_t blink_counter;
);

// Declare persistent non-task-shared variable
__nv uint16_t other_variable;

// Forward declarations of tasks
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);

// Optional helper function (not a task)
void increment_other_variable()
{
    other_variable++;
}

// Entry task: initializes blink_counter and returns next task
ENTRY_TASK(t_init)
{
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Task: turns LED on, increments counters, delays, returns next task
TASK(t_blink_on)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: turns LED off, delays, checks counter, returns next task
TASK(t_blink_off)
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10)
    {
        return t_init;
    }
    return t_blink_on;
}

// Called once on first boot: create thread with priority 1
void __app_init()
{
    __CREATE(1, t_init);
}

// Called on every reboot (optional, can be left empty)
void __app_reboot()
{
}
