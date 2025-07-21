#include <msp430.h>
#include <stdint.h>

#include "gpio.h"

uint32_t  blink_counter;

void* t_init();
void* t_blink_on();
void* t_blink_off();
void* t_end();

void* t_init()
{
    blink_counter = 0;

    return t_blink_on;
}

void* t_blink_on()
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;

    __delay_cycles(400000);

    return t_blink_off;
}

void* t_blink_off()
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);

    __delay_cycles(400000);

    if (blink_counter == 10)
    {
        return t_end;
    }

    return t_blink_on;
}

void* t_end()
{
    return (void*)0;
}
