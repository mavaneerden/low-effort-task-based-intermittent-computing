#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // CITID API

// Global variables used in tasks → automatically task-shared
uint16_t other_variable = 10;
uint8_t blink_counter = 5;

// Forward declarations
void* t_blink_on();
void* t_blink_off();
void* t_end();

// Non-task function
void increment_other_variable() {
    other_variable++;
}

// Entry task and thread creation
CITID_CREATE_THREAD(1, true) {
    return t_blink_on();
}

// Task: turn LED on
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    increment_other_variable();
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

// Task: reset counter
void* t_end() {
    blink_counter = 0;
    return t_blink_on;
}

// Main function to start CITID runtime
int main() {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0); // Setup LED pin
    citid_scheduler_run(); // Start CITID runtime
    return 0;
}
