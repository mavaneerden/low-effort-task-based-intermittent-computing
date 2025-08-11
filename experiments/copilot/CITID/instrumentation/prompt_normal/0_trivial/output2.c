#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"  // Include CITID API

// Task-shared variable (automatically detected by CITID compiler)
uint32_t blink_counter;

// Forward declarations of tasks
void* t_blink_on();
void* t_blink_off();
void* t_end();

// Entry task and thread creation
CITID_CREATE_THREAD(1, true) {  // Priority 1, activated on first boot
    blink_counter = 0;
    return t_blink_on;
}

// Task: Turn LED on
void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;
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

// Task: End of program
void* t_end() {
    return (void*)0;
}

// Main function to start CITID runtime
int main() {
    WDTCTL = WDTPW | WDTHOLD;  // Stop watchdog timer
    citid_scheduler_run();     // Start CITID runtime
    return 0;
}
