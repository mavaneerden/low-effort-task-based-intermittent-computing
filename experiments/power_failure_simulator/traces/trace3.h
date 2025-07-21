#pragma once
#include "power_failure.h"
static constexpr uint32_t trace_length3 = 8;
static constexpr uint32_t total_no_power_time_ms3 = 12356;
static constexpr float fraction_no_power3 = 0.6803590110676725;

static power_failure trace3[trace_length3] =
{
    {0, 10731},
    {10764, 553},
    {11751, 350},
    {12728, 76},
    {13499, 228},
    {14483, 75},
    {14725, 316},
    {18134, 27}
};
