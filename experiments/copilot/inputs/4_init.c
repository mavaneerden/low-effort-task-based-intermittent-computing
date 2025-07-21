#include <msp430.h>
#include <stdint.h>

#include "gpio.h"

uint16_t other_variable = 10;
uint8_t  blink_counter = 5;

void* t_init();
void* t_blink_on();
void* t_blink_off();
void* t_end();
int a;
int a;
double a;

void increment_other_variable()
{
    other_variable++;
}

void* t_init()
{
    return t_blink_on;
}

void* t_blink_on()
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;

    increment_other_variable();

    __delay_cycles(400000);

    return t_blink_off;
}

void* t_blink_off()
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);

    __delay_cycles(400000);

    if (blink_counter == 10)
    {
        return t_init;
    }

    return t_blink_on;
}

void* t_end()
{
    blink_counter = 0;

    return t_init();
}
