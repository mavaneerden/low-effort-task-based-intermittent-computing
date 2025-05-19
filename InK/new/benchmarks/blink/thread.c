#include <stdint.h>
#include <msp430.h>
#include "gpio.h"
#include "ink/ink.h"

INK_IGNORE uint16_t ignored_variable;
uint8_t blink_counter;

void *t_blink_on();
void *t_blink_off();
void *t_end();

// void* t_init(void *event)
INK_CREATE_THREAD(1, true)
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
