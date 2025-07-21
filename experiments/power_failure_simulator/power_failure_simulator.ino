#include "traces/traces.h"

// #define TRACE trace10
// #define TRACE_LENGTH trace_length10
#define NUM_TRACES 5
#define RUN_TIME_MS_PER_TRACE 90000

static constexpr pin_size_t RESET_PIN = 17;
static constexpr pin_size_t SIGNAL_PIN = 18;
static constexpr uint32_t RESET_ON = 0;
static constexpr uint32_t RESET_OFF = 1;

static uint32_t trace_choose_index = 0;
static uint32_t trace_index = 0;
static uint64_t wrap_time = 0;
static bool is_in_failure = false;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(RESET_PIN, OUTPUT);
  pinMode(SIGNAL_PIN, OUTPUT);
  digitalWriteFast(LED_BUILTIN, 1);
  digitalWriteFast(SIGNAL_PIN, 0);
//   randomSeed(0);
}

static power_failure* traces[NUM_TRACES] = {trace3, trace6, trace8, trace9, trace10};
static uint32_t traces_length[NUM_TRACES] = {trace_length3, trace_length6, trace_length8, trace_length9, trace_length10};

void loop() {
  uint64_t current_time = millis();

  // Run time exceeded, move on to the next trace
  if (current_time / RUN_TIME_MS_PER_TRACE > trace_choose_index) {
    trace_choose_index++;
    digitalWriteFast(SIGNAL_PIN, 1);
    delayMicroseconds(5);
    digitalWriteFast(SIGNAL_PIN, 0);
    trace_index = 0;
    wrap_time = current_time;

    // Traces done, signal using LED
    if (trace_choose_index >= NUM_TRACES)
    {
      while (true)
      {
        digitalWriteFast(LED_BUILTIN, 0);
        delay(500);
        digitalWriteFast(LED_BUILTIN, 1);
        delay(500);
      }
    }
  }


  // Wrap trace when length exceeded
  if (trace_index >= traces_length[trace_choose_index]) {
    trace_index = 0;
    wrap_time = current_time;
  }

  // Get current trace failure
  power_failure current_failure = traces[trace_choose_index][trace_index];

  // Assert reset for the failure duration
  if (current_time - wrap_time >= current_failure.start_time_ms && current_time - wrap_time <= current_failure.start_time_ms + current_failure.duration_ms) {
    digitalWriteFast(RESET_PIN, RESET_ON);
    is_in_failure = true;
  }
  else if (is_in_failure)
  {
    digitalWriteFast(RESET_PIN, RESET_OFF);
    trace_index++;
    is_in_failure = false;
  }
}
