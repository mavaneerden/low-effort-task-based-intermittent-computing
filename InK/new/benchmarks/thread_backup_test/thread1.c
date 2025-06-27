#include <stdint.h>
#include <msp430.h>
#include "gpio.h"
#include "ink/ink.h"

#define MAX_BLINK 5
#define TEST_ARRAY_SIZE 8

static uint8_t test_array[TEST_ARRAY_SIZE];
static uint16_t blink_counter;

static void *t_init();
static void *t_blink_on();
static void *t_blink_off();
static void *t_end();

INK_CREATE_THREAD(15, true)
{
    blink_counter = 0;
    test_array[0] = 0xAB;

    return t_blink_on;
}

void *t_blink_on()
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;

    __delay_cycles(400000);

    return t_blink_off;
}

void *t_blink_off()
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);

    __delay_cycles(400000);

    if (blink_counter == MAX_BLINK)
    {
        return t_end;
    }

    return t_blink_on;
}

void *t_end()
{
    return (void *)0;
}
