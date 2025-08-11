#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

#define THREAD_PRIORITY 10

__shared(
    uint8_t blink_counter;
)

uint16_t other_variable = 10; // Not task-shared
void* t_blink_on();
void* t_blink_off();
void* t_end();

void increment_other_variable()
{
    other_variable++;
}

TASK(t_blink_on)
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

void __app_init(void)
{
    __CREATE(THREAD_PRIORITY, t_blink_on);
    __SIGNAL(THREAD_PRIORITY);
}

void __app_reboot(void)
{
    // No reboot-specific setup needed
}
