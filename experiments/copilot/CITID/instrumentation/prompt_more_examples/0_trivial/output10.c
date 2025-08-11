#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"

#define THREAD_PRIORITY 1

// Task-shared variable
uint32_t blink_counter;

// Forward task declarations
void* t_init(void);
void* t_blink_on(void);
void* t_blink_off(void);
void* t_end(void);

// Entry task
CITID_CREATE_THREAD(THREAD_PRIORITY, true) {
    return t_init;
}

void* t_init(void)
{
    blink_counter = 0;
    return t_blink_on;
}

void* t_blink_on(void)
{
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    __delay_cycles(400000);
    return t_blink_off;
}

void* t_blink_off(void)
{
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10)
    {
        return t_end;
    }
    return t_blink_on;
}

void* t_end(void)
{
    return (void*)0;
}

int main(void)
{
    citid_scheduler_run();
}
