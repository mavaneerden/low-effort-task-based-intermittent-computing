#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Global variables used in tasks → automatically task-shared
uint16_t other_variable = 10;
uint8_t blink_counter = 5;

// Entry task for the thread
CITID_CREATE_THREAD(1, true) {
    return t_blink_on;
}

// Task: turn LED on
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    other_variable++;
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

// Task: reset counter and restart
void* t_end() {
    blink_counter = 0;
    return CITID_THREAD_ENTRY_TASK();  // Restart from entry task
}

// Main function: start CITID scheduler
int main() {
    citid_scheduler_run();
    return 0;
}
