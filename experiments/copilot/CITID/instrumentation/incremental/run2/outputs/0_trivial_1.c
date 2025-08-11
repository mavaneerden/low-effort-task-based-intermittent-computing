#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Global variable used in tasks → automatically task-shared
uint32_t blink_counter;

// Entry task for the thread
CITID_CREATE_THREAD(1, true) {
    blink_counter = 0;
    return t_blink_on;
}

// Task: turn LED on
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: turn LED off
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_end;
    }
    return t_blink_on;
}

// Task: end program
void* t_end() {
    return (void*)0;
}

// Main function: start CITID scheduler
int main() {
    citid_scheduler_run();
    return 0;
}
