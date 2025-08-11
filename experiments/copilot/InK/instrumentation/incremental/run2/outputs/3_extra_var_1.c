#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"  // InK API

// Declare task-shared and persistent variables
__shared(uint16_t blink_counter)
__nv uint16_t other_variable  // Persistent but not task-shared

// Declare task functions
ENTRY_TASK(t_init)
TASK(t_blink_on)
TASK(t_blink_off)

// Non-task function: modifies persistent variable
void increment_other_variable()
{
    other_variable++;  // Direct access is allowed since it's not task-shared
}

// Entry task: reset counter
ENTRY_TASK(t_init)
{
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Turn LED on and increment counter
TASK(t_blink_on)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    increment_other_variable();  // Call non-task function
    __delay_cycles(400000);
    return t_blink_off;
}

// Turn LED off and check counter
TASK(t_blink_off)
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10) {
        return t_init;  // Restart the cycle
    }
    return t_blink_on;
}

// Called once on first boot
void __app_init()
{
    __CREATE(1, &t_init);   // Create thread with priority 1
    __SIGNAL(1);            // ✅ Activate thread so it runs after flashing
}

// Called on every reboot (optional)
void __app_reboot()
{
    // No reboot-specific logic needed
}
