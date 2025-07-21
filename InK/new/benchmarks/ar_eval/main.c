#include <msp430.h>

#include "benchmark_helpers.h"
#include "ink/ink.h"

int main()
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode

#ifdef RAISE_PIN
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
#endif

    /* Start the scheduler. */
    ink_scheduler_run();
}
