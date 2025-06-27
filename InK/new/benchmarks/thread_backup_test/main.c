#include <msp430.h>

#include "ink/ink.h"
#include "gpio.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL = WDTPW | WDTHOLD; // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;     // Disable the GPIO power-on default high-impedance mode
    /* Set the GPIO pin for the LED. */
    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN0);

    /* Start the scheduler. */
    ink_scheduler_run(); // TODO: replace with call to custom scheduler.
}
