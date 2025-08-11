#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // Include InK API

// Declare task-shared variables
__shared(
    uint8_t blink_counter;
);

// Declare persistent non-task-shared variable
__nv uint16_t other_variable;

// Declare task prototypes
ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);

// Function to increment persistent variable
void increment_other_variable()
{
    other_variable++;
}

// Entry task: initializes blink_counter
ENTRY_TASK(t_init)
{
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Task: turns LED on, increments counter and other_variable
TASK(t_blink_on)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: turns LED off, checks counter
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

// Called on first boot: create thread
void __app_init()
{
    __CREATE(1, t_init);  // Priority 1, entry task is t_init
}

// Called on every reboot
void __app_reboot()
{
    // Optional: add reboot logic here
}
