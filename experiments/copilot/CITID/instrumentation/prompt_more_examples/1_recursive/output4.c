#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"

#define THREAD_PRIORITY 1

// Task-shared variable
uint32_t blink_counter;

// Forward task declarations
void* t_init();
void* t_blink_on();
void* t_blink_off();

// Entry task
CITID_CREATE_THREAD(THREAD_PRIORITY, true) {
    return t_init;
}

void* t_init() {
    blink_counter = 0;
    return t_blink_on;
}

void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    __delay_cycles(400000);
    return t_blink_off;
}

void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_init;
    }
    return t_blink_on;
}

int main(void) {
    citid_scheduler_run();
}
