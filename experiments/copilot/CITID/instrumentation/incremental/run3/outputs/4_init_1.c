#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"

// Persistent variable: accumulates across reboots
CITID_PERSISTENT uint16_t other_variable = 10;

// Task-shared variable: reset in t_end()
uint8_t blink_counter = 5;

// Forward declarations of tasks
void* t_blink_on();
void* t_blink_off();
void* t_end();

// Helper function (called from a task)
void increment_other_variable() {
    other_variable++;
}

// CITID thread definition with priority 1, activated on first boot
CITID_CREATE_THREAD(1, true) {
    return t_blink_on;
}

// Task: Turn LED on and increment counters
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    increment_other_variable();
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: Turn LED off and check if we should end
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_end;
    }
    return t_blink_on;
}

// Task: Reset counter and restart loop
void* t_end() {
    blink_counter = 0;
    return t_blink_on;
}

// Main function starts the CITID scheduler
int main() {
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    citid_scheduler_run();    // Start CITID runtime
    return 0;
}
