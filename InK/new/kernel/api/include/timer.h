#pragma once

#include <stdint.h>

//WKUP timers
//These timers are set to schedule an ISR for a specified time
/*************************************************************************************************************/

//clears the status flag on wkup_d struct containing the thread/timing information for the one shot timer
void ink_clear_wkup_status(uint8_t thread_id);

//updates the information on which thread is scheduled to execute next based on timing
void ink_refresh_wkup_timers();

// sets a one-shot timer using Timer A2
void ink_set_wkup_timer(uint8_t thread_id, uint16_t ticks);

//EXPR timers
//These timers are set to schedule a time limit in the execution of a thread
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/

void ink_clear_xpr_status(uint8_t thread_id);

void ink_refresh_xpr_timers();

void ink_set_expire_timer(uint8_t thread_id, uint32_t ticks);

void ink_stop_expire_timer(uint8_t thread_id);

//PDC timers (EXPERIMENTAL)
//These timers are set to schedule "periodic" execution of a thread
//The timer starts counting from the time initiated up to the specified amount of time,
//if the time limit has been surpassed by a death event the thread is evicted from the
//scheduler.
//The expiration counter is cleared by function call at a specified in the code.
/*************************************************************************************************************/

//set a periodic firing of an event
void ink_set_periodic_timer(uint8_t thread_id, uint16_t ticks);

//stop the periodic firing of the event
void ink_stop_periodic_timer(uint8_t thread_id);
