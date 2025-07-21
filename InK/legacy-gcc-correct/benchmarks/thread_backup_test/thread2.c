#include <msp430.h>
#include <stdint.h>

#include "gpio.h"
#include "ink.h"

#define MAX_BLINK       5
#define TEST_ARRAY_SIZE 998

__shared(uint8_t test_array[TEST_ARRAY_SIZE]; uint16_t blink_counter;  // Cannot be uint8_t in InK: alignment of array
                                                                       // elements is greater than element size
         )

    ENTRY_TASK(t_init);
TASK(t_blink_on);
TASK(t_blink_off);
TASK(t_end);

void thread2_init()
{
    // create a thread with priority 15 and entry task t_init
    __CREATE(16, t_init);
    __SIGNAL(16);
}

// void* t_init(void *event)
ENTRY_TASK(t_init)
{
    __SET(blink_counter, 0);
    __SET(test_array[0], 0xAB);

    return t_blink_on;
}

TASK(t_blink_on)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);

    __delay_cycles(400000);

    return t_blink_off;
}

TASK(t_blink_off)
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);

    __delay_cycles(400000);

    if (__GET(blink_counter) == MAX_BLINK)
    {
        return t_end;
    }

    return t_blink_on;
}

TASK(t_end)
{
    return (void*)0;
}
