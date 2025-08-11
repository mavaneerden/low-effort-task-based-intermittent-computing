#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Task-shared variable (automatically detected by CITID compiler)
uint8_t blink_counter;

// Task declarations
void* t_init();
void* t_blink_on();
void* t_blink_off();

// Thread definition with entry task
CITID_CREATE_THREAD(1, true) {
    return t_init();
}

// Task implementations
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

// Main function to start CITID runtime
int main() {
    citid_scheduler_run();
    return 0;
}
