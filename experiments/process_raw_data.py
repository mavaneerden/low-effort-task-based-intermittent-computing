import csv
import argparse
from dataclasses import dataclass
from typing import List
import numpy as np
import os
import matplotlib
import matplotlib.pyplot as plt
import glob

STATE_START = 1
STATE_FIND_LAST_SCHEDULING = 2
STATE_MEASURE = 3
STATE_STOP = 4

state = STATE_START

AVERAGE_PIN_TOGGLE_LATENCY_S = 4.5 / 1e6

MEASUREMENT_TO_CHANNEL_MAP = {
    "time"                       : 0,
    "benchmark"                  : 1,
    "scheduling"                 : 2,
    "task_init"                  : 3,
    "task_execution"             : 4,
    "task_commit_and_activation" : 5,
    "vcc"                        : 6,
    "reset"                      : 7
}

@dataclass
class RowData():
    time: float
    benchmark: int
    scheduling: int
    task_init: int
    task_execution: int
    task_commit_and_activation: int
    vcc: int
    reset: int

def get_row_data(row):
    return RowData(
        time=float(row[MEASUREMENT_TO_CHANNEL_MAP["time"]]),
        benchmark=int(row[MEASUREMENT_TO_CHANNEL_MAP["benchmark"]]),
        scheduling=int(row[MEASUREMENT_TO_CHANNEL_MAP["scheduling"]]),
        task_init=int(row[MEASUREMENT_TO_CHANNEL_MAP["task_init"]]),
        task_execution=int(row[MEASUREMENT_TO_CHANNEL_MAP["task_execution"]]),
        task_commit_and_activation=int(row[MEASUREMENT_TO_CHANNEL_MAP["task_commit_and_activation"]]),
        vcc=int(row[MEASUREMENT_TO_CHANNEL_MAP["vcc"]]),
        reset=int(row[MEASUREMENT_TO_CHANNEL_MAP["reset"]])
    )

parser = argparse.ArgumentParser(
    prog="Raw data processor"
)

parser.add_argument("plot_type")

args = parser.parse_args()


def get_raw_measurements(f):
    raw_measurements: List[RowData] = []

    with open(f, newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=',')

        for i, row in enumerate(reader):
            if i == 0:
                continue
            raw_measurements.append(get_row_data(row))

    return raw_measurements

def get_raw_measurements_in_range(raw_measurements):
    # Find starting point of measurement
    first_index = None
    for i, r in enumerate(raw_measurements):
        if r.benchmark == 1:
            first_index = i
            break

    # Find ending point of measurement
    last_index = None
    for i, r in enumerate(raw_measurements):
        if r.benchmark == 1:
            last_index = i

    return raw_measurements[first_index:last_index + 1]

@dataclass
class TimeMeasurements():
    benchmark: List[float]
    scheduling: List[float]
    task_init: List[float]
    task_execution: List[float]
    task_commit: List[float]
    task_activation: List[float]
    task_full: List[float]

def get_time_measurements(file_path):
    @dataclass
    class LastTimeHigh():
        benchmark: float = None
        scheduling: float = None
        task_init: float = None
        task_execution: float = None
        task_commit: float = None
        task_activation: float = None

    measuring_benchmark = False
    measuring_scheduling = False
    measuring_task_init = False
    measuring_task_execution = False
    measuring_task_commit = False
    measuring_task_activation = False

    raw_measurements = get_raw_measurements_in_range(get_raw_measurements(file_path))
    measurements = TimeMeasurements([], [], [], [], [], [], [])
    last_times = LastTimeHigh()
    task_commit_to_activation = False

    for i, r in enumerate(raw_measurements):

        # Benchmark measurements, this is a pulse, not a 1 to 0
        if r.benchmark == 1:
            if not measuring_benchmark and last_times.benchmark is not None:
                measurements.benchmark.append(r.time - last_times.benchmark)
            measuring_benchmark = True
        if r.benchmark == 0 and measuring_benchmark:
            last_times.benchmark = r.time
            measuring_benchmark = False

        # Scheduling measurements
        if r.scheduling == 1 and not measuring_scheduling:
            measuring_scheduling = True
            if last_times.scheduling is not None:
                measurements.task_full.append(r.time - last_times.scheduling)
            last_times.scheduling = r.time
        if r.scheduling == 0 and measuring_scheduling:
            measurements.scheduling.append(r.time - last_times.scheduling)
            measuring_scheduling = False

        # Task init measurements
        if r.task_init == 1 and not measuring_task_init:
            measuring_task_init = True
            last_times.task_init = r.time
        if r.task_init == 0 and measuring_task_init:
            measurements.task_init.append(r.time - last_times.task_init)
            measuring_task_init = False

        # Task execution measurements
        if r.task_execution == 1 and not measuring_task_execution:
            measuring_task_execution = True
            last_times.task_execution = r.time
        if r.task_execution == 0 and measuring_task_execution:
            measurements.task_execution.append(r.time - last_times.task_execution)
            measuring_task_execution = False

        # Task commit & activation measurements
        if r.task_commit_and_activation == 1 and not task_commit_to_activation and not measuring_task_commit:
            measuring_task_commit = True
            last_times.task_commit = r.time
        if r.task_commit_and_activation == 0 and measuring_task_commit:
            measurements.task_commit.append(r.time - last_times.task_commit)
            measuring_task_commit = False
            task_commit_to_activation = True
        if r.task_commit_and_activation == 1 and task_commit_to_activation and not measuring_task_activation:
            measuring_task_activation = True
            last_times.task_activation = r.time
        if r.task_commit_and_activation == 0 and measuring_task_activation:
            measurements.task_activation.append(r.time - last_times.task_activation)
            measuring_task_activation = False
            task_commit_to_activation = False

    return measurements

def process_time_measurements(measurements: TimeMeasurements):
    def get_average(value, mult, num_pin_toggles=1):
        return (np.average(value) - AVERAGE_PIN_TOGGLE_LATENCY_S * num_pin_toggles) * mult

    def get_average_us(value, num_pin_toggles=1):
        return get_average(value, 1e6, num_pin_toggles)

    # Execution time
    average_benchmark        = get_average_us(measurements.benchmark)
    average_scheduling       = get_average_us(measurements.scheduling)
    average_task_init        = get_average_us(measurements.task_init)
    average_task_execution   = get_average_us(measurements.task_execution)
    average_task_commit      = get_average_us(measurements.task_commit)
    average_task_activation  = get_average_us(measurements.task_activation)
    average_task_full        = get_average_us(measurements.task_full, num_pin_toggles=5)
    average_task_other       = average_task_full - average_scheduling - average_task_init - average_task_execution - average_task_commit - average_task_activation
    average_all_wo_execution = average_scheduling + average_task_init + average_task_commit + average_task_activation + average_task_other

    # Overhead
    average_scheduling_overhead       = average_scheduling       / average_task_full
    average_task_init_overhead        = average_task_init        / average_task_full
    average_task_execution_overhead   = average_task_execution   / average_task_full
    average_task_commit_overhead      = average_task_commit      / average_task_full
    average_task_activation_overhead  = average_task_activation  / average_task_full
    average_task_other_overhead       = average_task_other       / average_task_full
    average_total_overhead            = average_all_wo_execution / average_task_full
    average_execution_fraction        = average_task_execution   / average_task_full

    return [
        [average_benchmark, average_scheduling, average_task_init, average_task_execution, average_task_commit, average_task_activation, average_task_full, average_task_other, average_all_wo_execution],
        [average_scheduling_overhead, average_task_init_overhead, average_task_execution_overhead, average_task_commit_overhead, average_task_activation_overhead, average_task_other_overhead, average_total_overhead, average_execution_fraction]
    ]

def print_measurements(benchmark_name, measurements: TimeMeasurements, averages):
    print(f"======= {benchmark_name} =======")
    print("--- STATISTICS ---")
    print("Number of benchmark executions:                %d" % len(measurements.benchmark))
    print("Number of task executions (total):             %d" % len(measurements.task_execution))
    print("Number of task executions (avg per benchmark): %d" % (len(measurements.task_execution) / len(measurements.benchmark)))

    print("\n--- TIME MEASUREMENTS PER TASK ---          ")
    print("Average benchmark time:       %d ms" % int(round(averages[0][0] / 1e3)))
    print("Average scheduling time:      %d us" % int(round(averages[0][1])))
    print("Average task init time:       %d us" % int(round(averages[0][2])))
    print("Average task execution time:  %d us" % int(round(averages[0][3])))
    print("Average task commit time:     %d us" % int(round(averages[0][4])))
    print("Average task activation time: %d us" % int(round(averages[0][5])))
    print("Average task full time:       %d us" % int(round(averages[0][6])))
    print("Average task other time:      %d us" % int(round(averages[0][7])))

    print("\n--- OVERHEAD MEASUREMENTS PER TASK ---          ")
    print("Average scheduling overhead:      %.2f %%" % (averages[1][0] * 100.))
    print("Average task init overhead:       %.2f %%" % (averages[1][1] * 100.))
    print("Average task execution overhead:  %.2f %%" % (averages[1][2] * 100.))
    print("Average task commit overhead:     %.2f %%" % (averages[1][3] * 100.))
    print("Average task activation overhead: %.2f %%" % (averages[1][4] * 100.))
    print("Average other overhead:           %.2f %%" % (averages[1][5] * 100.))
    print()
    print("Average total overhead:           %.2f %%" % (averages[1][6] * 100.))
    print("Average execution fraction:       %.2f %%" % (averages[1][7] * 100.))

def get_benchmark_name(file_path):
    return os.path.splitext(os.path.basename(file_path))[0][:-5]

def get_results():
    LEGACY_PATH_RAW_DATA = "raw_data/legacy-gcc-correct/"
    NEW_PATH_RAW_DATA = "raw_data/new/"

    results_map = {
        "benchmark": {
            "legacy": [],
            "new": []
        },
        "task_init": {
            "legacy": [],
            "new": []
        },
        "task_execution": {
            "legacy": [],
            "new": []
        },
        "task_full": {
            "legacy": [],
            "new": []
        },
        "total_overhead": {
            "legacy": [],
            "new": []
        },
        "execution_fraction": {
            "legacy": [],
            "new": []
        },
    }
    results_labels = []

    print("++++++++++ LEGACY ++++++++++")
    for f in sorted(glob.glob(os.path.join(LEGACY_PATH_RAW_DATA, '*.csv'))):
        benchmark_name = get_benchmark_name(f)
        time_measurements = get_time_measurements(f)
        averages = process_time_measurements(time_measurements)

        results_labels.append(benchmark_name)

        results_map["benchmark"]         ["legacy"].append(averages[0][0])
        results_map["task_init"]         ["legacy"].append(averages[0][2])
        results_map["task_execution"]    ["legacy"].append(averages[0][3])
        results_map["task_full"]         ["legacy"].append(averages[0][6])
        results_map["total_overhead"]    ["legacy"].append(averages[1][6])
        results_map["execution_fraction"]["legacy"].append(averages[1][7])

        print()
        print_measurements(benchmark_name, time_measurements, averages)


    print("\n\n++++++++++ NEW ++++++++++")
    for f in sorted(glob.glob(os.path.join(NEW_PATH_RAW_DATA, '*.csv'))):
        benchmark_name = get_benchmark_name(f)
        time_measurements = get_time_measurements(f)
        averages = process_time_measurements(time_measurements)

        results_map["benchmark"]         ["new"].append(averages[0][0])
        results_map["task_init"]         ["new"].append(averages[0][2])
        results_map["task_execution"]    ["new"].append(averages[0][3])
        results_map["task_full"]         ["new"].append(averages[0][6])
        results_map["total_overhead"]    ["new"].append(averages[1][6])
        results_map["execution_fraction"]["new"].append(averages[1][7])

        print()
        print_measurements(benchmark_name, time_measurements, averages)

    return (results_map, results_labels)

(results_map, benchmarks) = get_results()

def plotting(plot_type):
    ylabel_map = {
        "benchmark": "Average execution time (ms)",
        "task_init": "Average task execution time (μs)",
        "task_execution": "Average task execution time (μs)",
        "task_full": "Average task processing time (μs)",
        "total_overhead": "Average overhead per task (%)",
        "execution_fraction": "Average execution time per task (%)"
    }

    x = np.arange(len(benchmarks))
    bar_width = 0.25
    multiplier = 0

    fig, ax = plt.subplots(layout="constrained")

    for attribute, measurement in results_map[f"{plot_type}"].items():
        offset = bar_width * multiplier
        rects = ax.bar(x + offset, measurement, bar_width, label=attribute)
        multiplier += 1

    ax.set_ylabel(ylabel_map[plot_type])
    ax.set_title('Penguin attributes by species')
    ax.set_xticks(x + bar_width, benchmarks)
    ax.legend(loc='upper left', ncols=3)

    plt.savefig(f"plots/{plot_type}.pdf")

plotting("benchmark")
plotting("task_init")
plotting("task_execution")
plotting("task_full")
plotting("total_overhead")
plotting("execution_fraction")
