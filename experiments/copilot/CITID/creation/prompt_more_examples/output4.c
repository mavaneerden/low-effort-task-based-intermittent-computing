#include "sensor.h"
#include "citid.h"

#define THREAD_PRIORITY 10

// Persistent non task-shared event data variable
CITID_PERSISTENT int adc_isr_data = 0;
citid_event_t adc_event = { .data = &adc_isr_data, .size = sizeof(int), .timestamp = 0 };

// Task-shared variables
int adc_value;
int computed_value;

// Forward task declarations
void* task2(void);
void* task3(void);

// Entry task: reads ADC value from event
CITID_CREATE_THREAD(THREAD_PRIORITY, false) {
    adc_value = *(int*)citid_event->data;

    return task2;
}

void* task2(void) {
    computed_value = sensor_compute(adc_value);

    return task3;
}

void* task3(void) {
    sensor_transmit(computed_value);

    return NULL; // Wait for next ADC interrupt
}

int main(void) {
    citid_scheduler_run();
}

// ADC interrupt service routine
void __attribute__ ((interrupt(ADC_VECTOR))) ADC_ISR(void) {
    adc_isr_data = ADCMEM0; // Read ADC result

    citid_signal_event_isr(THREAD_PRIORITY, &adc_event);
}
