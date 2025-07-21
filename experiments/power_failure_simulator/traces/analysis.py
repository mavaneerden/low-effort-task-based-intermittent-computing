import argparse
import csv
import numpy as np


brownout_voltage_level = 0.7
power_up_volage_level = 0.79

list_of_file_nos = range(1, 11)

for file_no in list_of_file_nos:
    power_failure_list = []
    first_time = None
    in_failure = False
    fail_time = None

    with open(f"{file_no}.txt", newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter='	')

        for i, row in enumerate(reader):
            r_time = int(row[0])
            r_volt = float(row[1])

            if i == 0:
                first_time = r_time

            if r_volt < 0.7 and not in_failure:
                in_failure = True
            elif r_volt > 0.79 and in_failure:
                in_failure = False

            if in_failure and fail_time is None:
                # Moving into failure
                fail_time = r_time

            if not in_failure and fail_time is not None:
                power_failure_list.append([fail_time - first_time, r_time - fail_time])
                # Moving out of failure
                fail_time = None

    pf_list_str = ',\n'.join([f"    {{{s}, {d}}}" for s, d in power_failure_list])

    with open(f"trace{file_no}.h", "w") as f:
        no_power_time = sum(np.array(power_failure_list)[:,1])
        total_time = power_failure_list[-1][0] + power_failure_list[-1][1]
        f.writelines(
            f"""#pragma once
#include "power_failure.h"
static constexpr uint32_t trace_length{file_no} = {len(power_failure_list)};
static constexpr uint32_t total_no_power_time_ms{file_no} = {no_power_time};
static constexpr float fraction_no_power{file_no} = {no_power_time / total_time};

static power_failure trace{file_no}[trace_length{file_no}] =
{{
{pf_list_str}
}};
"""
)

with open("traces.h", "w") as f:
    f.write("#pragma once\n")
    for file_no in list_of_file_nos:
        f.write(f"#include \"trace{file_no}.h\"\n")
