#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Global variable used in tasks → automatically task-shared
uint8_t blink_counter;

// Entry task for the thread
CITID_CREATE_THREAD(1, true) {
    blink_counter = 0;
    return t_blink_on;
}

// Task: Turn LED on and increment counter
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
    __delay_cycles(400000);
    return t_blink_off;
}

// Task: Turn LED off and decide next task
void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return CITID_THREAD_ENTRY_TASK();  // Restart from entry task
    }
    return t_blink_on;
}

// Main function starts CITID scheduler
int main() {
    WDTCTL = WDTPW | WDTHOLD;  // Stop watchdog timer
    citid_scheduler_run();     // Start CITID runtime
    return 0;
}
