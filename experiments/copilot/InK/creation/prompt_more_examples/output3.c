#include "sensor.h"
#include "ink.h"

#define THREAD_PRIORITY 10

__nv int adc_isr_data = 0;
isr_event_t adc_event = { .data = &adc_isr_data, .size = sizeof(int), .timestamp = 0 };

__shared(
    int adc_value;
    int computed_value;
)

// Forward task declarations
ENTRY_TASK(task_adc_read)
TASK(task_compute)
TASK(task_transmit)

// Entry task: read ADC value from event
ENTRY_TASK(task_adc_read) {
    __SET(adc_value, *(int*)(__event->data));
    return task_compute;
}

// Compute task: process ADC value
TASK(task_compute) {
    int result = sensor_compute(__GET(adc_value));
    __SET(computed_value, result);
    return task_transmit;
}

// Transmit task: send computed value
TASK(task_transmit) {
    sensor_transmit(__GET(computed_value));
    return NULL;
}

// App initialization
void __app_init(void) {
    __CREATE(THREAD_PRIORITY, task_adc_read);
}

// App reboot
void __app_reboot(void) {
    // Reinitialize hardware if needed
}

// ADC interrupt handler
void __attribute__ ((interrupt(ADC_VECTOR))) ADC_ISR(void) {
    adc_isr_data = read_adc(); // Assume read_adc() reads the ADC value

    if (!__EVENT_BUFFER_FULL(THREAD_PRIORITY)) {
        __SIGNAL_EVENT(THREAD_PRIORITY, &adc_event);
    }
}
