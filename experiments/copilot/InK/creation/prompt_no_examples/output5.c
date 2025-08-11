#include "ink.h"
#include "sensor.h"

__nv isr_event_t adc_event;
__shared(int adc_value; int computed_value);

ENTRY_TASK(task_read_adc) {
    isr_event_t *event = __event;
    int *data = (int *)event->data;
    __SET(adc_value, *data);
    return TASK(task_compute);
}

TASK(task_compute) {
    int val = __GET(adc_value);
    int result = sensor_compute(val);
    __SET(computed_value, result);
    return TASK(task_transmit);
}

TASK(task_transmit) {
    int result = __GET(computed_value);
    sensor_transmit(result);
    return NULL;
}

void __app_init() {
    __CREATE(1, task_read_adc);
}

void __app_reboot() {
    // No reboot-specific logic needed
}

// Interrupt Service Routine (ISR) for ADC
void adc_isr() {
    if (__EVENT_BUFFER_FULL(1)) return;

    *(__nv int *)adc_event.data = read_adc(); // Assume read_adc() reads from ADC
    adc_event.size = sizeof(int);
    adc_event.timestamp = 0;

    __SIGNAL_EVENT(1, &adc_event);
}
