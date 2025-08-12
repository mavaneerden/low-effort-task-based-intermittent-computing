#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

#define THREAD_PRIORITY 10  // Arbitrary priority, must be unique and between 1–64

// Task-shared variable declaration
__shared(
    uint8_t blink_counter; // 1 byte, but we need at least 2 bytes, so we add padding
    uint8_t padding;       // Padding to satisfy the 2-byte requirement
)

// Forward declarations of tasks
ENTRY_TASK(t_init)
TASK(t_blink_on)
TASK(t_blink_off)

// Entry task: initializes the counter
ENTRY_TASK(t_init) {
    __SET(blink_counter, 0);
    return t_blink_on;
}

// Turns the LED on and increments the counter
TASK(t_blink_on) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return t_blink_off;
}

// Turns the LED off and checks if blinking is done
TASK(t_blink_off) {
    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __delay_cycles(400000);

    if (__GET(blink_counter) == 10) {
        return t_init;
    }
    return t_blink_on;
}

// Called on first boot
void __app_init(void) {
    __CREATE(THREAD_PRIORITY, t_init); // Create thread with priority 10
    __SIGNAL(THREAD_PRIORITY);         // Activate thread immediately
}

// Optional: called on every reboot
void __app_reboot(void) {
    // Reinitialize hardware if needed
}
