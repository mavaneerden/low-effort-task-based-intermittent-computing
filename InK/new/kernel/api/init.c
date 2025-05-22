#include "api/include/init.h"
#include "mcu/msp430/fram.h"
#include "scheduler/scheduler.h"
#include "isr/isrmanager.h"
#include "timer/timer.h"

__nv bool __is_first_boot = true;

bool __ink_initialized = false;

bool ink_is_first_boot()
{
    return __is_first_boot;
}

bool ink_is_initialized()
{
    return __ink_initialized;
}

/**
 * Initialize the InK runtime environment.
 *
 * This function is called before main() and
 * BEFORE all threads are created.
 */
void __attribute__((constructor(1000))) __ink_init()
{
    __fram_init();

    // if this is the first boot
    if(ink_is_first_boot()){
        // init the scheduler state
        __scheduler_boot_init();
        // init the event handler
        __events_boot_init();
#ifdef TIMERS_ON
        __get_time_init();
        //init the timers
        __timers_init();
#endif
        // the first and initial boot is finished
        // __is_first_boot = false;
    }
#ifdef TIMERS_ON
    else{
        __get_time_init();
    }
#endif

    // __ink_initialized = true;
}

/**
 * Finalize initialization.

 * This function is called before main() and
 * AFTER all threads are created.
 */
void __attribute__((constructor(11000))) __ink_init_done()
{
    __ink_initialized = true;
    __is_first_boot = false;
}
