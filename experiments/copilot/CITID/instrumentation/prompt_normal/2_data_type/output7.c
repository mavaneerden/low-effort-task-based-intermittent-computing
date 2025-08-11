#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // CITID API

uint8_t blink_counter;  // Automatically task-shared

// Entry task and thread creation
CITID_CREATE_THREAD(1, true) {
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
        return CITID_THREAD_ENTRY_TASK();  // Restart from entry task
    }
    return t_blink_on;
}

int main() {
    citid_scheduler_run();  // Start CITID runtime
    return 0;
}
