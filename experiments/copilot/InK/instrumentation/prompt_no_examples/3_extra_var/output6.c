#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

// Task-shared variables
__shared(
    uint8_t blink_counter;
);

// Persistent non-task-shared variable
__nv uint16_t other_variable;

// Forward declarations
void* t_init();
void* t_blink_on();
void* t_blink_off();

// Entry task
ENTRY_TASK(t_init)
{
    __SET(blink_counter, 0);
    return t_blink_on;
}

TASK(t_blink_on)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    other_variable++; // Not task-shared, so no __GET/__SET
    __delay_cycles(400000);
    return t_blink_off;
}

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

// Thread creation on first boot
void __app_init()
{
    __CREATE(1, t_init); // Priority 1, entry task is t_init
}

// Optional reboot handler
void __app_reboot()
{
    // No special reboot logic needed
}
