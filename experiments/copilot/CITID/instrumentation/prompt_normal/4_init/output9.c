#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Global variables used in tasks (automatically treated as task-shared)
uint16_t other_variable = 10;
uint8_t blink_counter = 5;

// Forward declarations
void* t_blink_on();
void* t_blink_off();
void* t_end();

// Helper function (used inside a task)
void increment_other_variable() {
    other_variable++;
}

// CITID thread definition with priority 1, activated on first boot
CITID_CREATE_THREAD(1, true) {
    return t_blink_on();
}

// Task: Turn LED on
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: Turn LED off
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_end;
    }
    return t_blink_on;
}

// Task: Reset counter
void* t_end() {
    blink_counter = 0;
    return t_blink_on;
}

// Main function to start CITID scheduler
int main() {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0); // Setup LED pin
    citid_scheduler_run(); // Start CITID runtime
    return 0;
}
