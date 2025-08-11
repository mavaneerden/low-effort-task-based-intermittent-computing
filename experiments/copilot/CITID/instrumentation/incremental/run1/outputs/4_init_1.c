#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "citid.h"

uint16_t other_variable = 10;  // Task-shared
uint8_t blink_counter = 5;     // Task-shared

void* t_blink_on();
void* t_blink_off();
void* t_end();

// Define the CITID thread with priority 1, activated on first boot
CITID_CREATE_THREAD(1, true) {
    return t_blink_on;
}

void* t_blink_on() {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    blink_counter += 1;

    // Inlined to comply with CITID rules
    other_variable++;

    __delay_cycles(400000);
    return t_blink_off;
}

void* t_blink_off() {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);
    if (blink_counter == 10) {
        return t_end;
    }
    return t_blink_on;
}

void* t_end() {
    blink_counter = 0;
    return t_blink_on;
}

int main() {
    WDTCTL = WDTPW | WDTHOLD;  // Stop watchdog timer
    citid_scheduler_run();     // Start CITID runtime
    return 0;
}
