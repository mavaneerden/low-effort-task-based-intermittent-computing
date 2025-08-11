#include <msp430.h>
#include <stdint.h>
#include "gpio.h"
#include "ink.h"

#define THREAD_PRIORITY 10

// Declare task-shared variable
__shared(
    uint8_t blink_counter; // 1 byte, so we need to add another byte to avoid compiler error
    uint8_t padding;       // Padding to satisfy the 2-byte minimum requirement
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

// Turns LED on and increments counter
TASK(t_blink_on) {
    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN0);
    __SET(blink_counter, __GET(blink_counter) + 1);
    __delay_cycles(400000);
    return t_blink_off;
}

// Turns LED off and checks counter
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

// Called on every reboot
void __app_reboot(void) {
    // No hardware setup needed in this example
}
