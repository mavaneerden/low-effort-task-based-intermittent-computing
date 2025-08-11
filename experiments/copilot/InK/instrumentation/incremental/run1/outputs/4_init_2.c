#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Declare task-shared variables (total ≥ 2 bytes)
__shared(uint16_t other_variable; uint8_t blink_counter;)

__nv uint8_t initialized = 0;

// Forward declarations of tasks
ENTRY_TASK(t_blink_on);
TASK(t_blink_off);
TASK(t_end);

// Entry task
ENTRY_TASK(t_blink_on)
{
    if (!initialized) {
        __SET(blink_counter, 5);
        __SET(other_variable, 10);
        initialized = 1;
    }

    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);

    __SET(other_variable, __GET(other_variable) + 1);

    __delay_cycles(400000);
    return t_blink_off;
}

TASK(t_blink_off)
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (__GET(blink_counter) == 10)
    {
        return t_end;
    }
    return t_blink_on;
}

TASK(t_end)
{
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Called once at first boot
void __app_init()
{
    __CREATE(1, t_blink_on);     // Create thread with priority 1
    __SIGNAL(1);             // Activate thread immediately
}

// Optional: called on every reboot
void __app_reboot()
{
    // No reboot-specific logic needed here
}
