#include "api/include/init.h"
#include "mcu/msp430/fram.h"
#include "scheduler/scheduler.h"
#include "isr/isrmanager.h"
#include "timer/timer.h"

__nv bool __is_first_boot = true;
__nv bool __reset_first_boot_flag = false;

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
void __attribute__((constructor(8347))) __ink_init()
{
    /* Need extra flag here, so we can detect if we are actually in first boot or not. */
    if(!__reset_first_boot_flag)
    {
        __reset_first_boot_flag = true;
    }
    else
    {
        __is_first_boot = false;
    }

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
    }
#ifdef TIMERS_ON
    else{
        __get_time_init();
    }
#endif

#ifdef RAISE_PIN
    __port_init(1, 3); // Scheduling & selecting next thread
    __port_init(1, 4); // Task Execution
    __port_init(3, 5); // Task commit
    __port_init(3, 6); // Task buffer copy
#endif
}

/**
 * Finalize initialization.

 * This function is called before main() and
 * AFTER all threads are created (hence the +64).
 */
void __attribute__((constructor(8347 + 1000 + 65))) __ink_init_done()
{
    __ink_initialized = true;
}