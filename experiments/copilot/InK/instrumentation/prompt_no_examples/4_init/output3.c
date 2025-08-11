#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variables
__shared(
    uint8_t blink_counter;
);

// Declare persistent non-task-shared variable
__nv uint16_t other_variable = 10;

// Forward declarations of tasks
void* t_blink_on();
void* t_blink_off();
void* t_end();

// Non-task function
void increment_other_variable()
{
    other_variable++;
}

// Entry task
ENTRY_TASK(t_blink_on)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

TASK(t_blink_off)
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_end;
    }
    return t_blink_on;
}

TASK(t_end)
{
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Called on first boot
void __app_init()
{
    __CREATE(1, t_blink_on);  // Create thread with priority 1
    __SIGNAL(1);              // Activate the thread immediately
}

// Called on every reboot
void __app_reboot()
{
    // No special reboot logic needed
}
