#pragma once

#include "api/include/timer.h"
#include "timer/timer.h"

void ink_clear_wkup_status(uint8_t thread_id)
{
    clear_wkup_status(thread_id);
}

void ink_refresh_wkup_timers()
{
    refresh_wkup_timers();
}

void ink_set_wkup_timer(uint8_t thread_id, uint16_t ticks)
{
    set_wkup_timer(thread_id, ticks);
}

void ink_clear_xpr_status(uint8_t thread_id)
{
    clear_xpr_status(thread_id);
}

void ink_refresh_xpr_timers()
{
    refresh_xpr_timers();
}

void ink_set_expire_timer(uint8_t thread_id, uint32_t ticks)
{
    set_expire_timer(thread_id, ticks);
}

void ink_stop_expire_timer(uint8_t thread_id)
{
    stop_expire_timer(thread_id);
}

void ink_set_periodic_timer(uint8_t thread_id, uint16_t ticks)
{
    set_periodic_timer(thread_id, ticks);
}

void ink_stop_periodic_timer(uint8_t thread_id)
{
    stop_periodic_timer(thread_id);
}
