#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Global variables used in tasks (automatically detected as task-shared)
uint16_t other_variable;
uint8_t blink_counter;

// Forward declarations of tasks
void* t_init();
void* t_blink_on();
void* t_blink_off();

// Helper function (not a task, but used inside tasks)
void increment_other_variable() {
    other_variable++;
}

// Define CITID thread with priority 10, activated on first boot
CITID_CREATE_THREAD(10, true) {
    return t_init();
}

// Task: Initialize blink counter
void* t_init() {
    blink_counter = 0;
    return t_blink_on;
}

// Task: Turn LED on, increment counters
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: Turn LED off, check blink count
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_init;
    }
    return t_blink_on;
}

// Start CITID scheduler
int main() {
    citid_scheduler_run();
    return 0;
}
