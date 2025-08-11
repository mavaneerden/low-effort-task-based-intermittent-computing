#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variables
__shared(uint8_t blink_counter;);

// Declare persistent non-task-shared variable
__nv uint16_t other_variable;

// Entry task declaration
ENTRY_TASK(t_init);

// Task declarations
TASK(t_blink_on);
TASK(t_blink_off);

// Function to increment persistent variable
void increment_other_variable()
{
    other_variable++;
}

// Entry task definition
ENTRY_TASK(t_init)
{
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Task definition: turn LED on
TASK(t_blink_on)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Task definition: turn LED off
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

// Called on first boot
void __app_init()
{
    __CREATE(15, t_init); // Priority 15 is arbitrary but must be unique
}

// Called on every reboot
void __app_reboot()
{
    // Optional: add reboot-specific logic here
}
