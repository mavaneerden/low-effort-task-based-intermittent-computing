#include "sensor.h"
#include "ink.h"

#define THREAD_PRIORITY 10

__nv int adc_isr_data = 0;
isr_event_t adc_event = { .data = &adc_isr_data, .size = sizeof(int), .timestamp = 0 };

__shared(
    int adc_value;
    int computed_value;
)

ENTRY_TASK(task_read_adc)
TASK(task_compute)
TASK(task_transmit)

ENTRY_TASK(task_read_adc) {
    __SET(adc_value, *(int*)(__event->data));
    return task_compute;
}

TASK(task_compute) {
    int result = sensor_compute(__GET(adc_value));
    __SET(computed_value, result);
    return task_transmit;
}

TASK(task_transmit) {
    sensor_transmit(__GET(computed_value));
    return NULL;
}

void __app_init(void) {
    __CREATE(THREAD_PRIORITY, task_read_adc);
}

void __app_reboot(void) {
    // Reinitialize ADC hardware if needed
}

void __attribute__ ((interrupt(ADC_VECTOR))) ADC_ISR(void) {
    adc_isr_data = read_adc(); // Assume read_adc() reads from ADC hardware

    if (!__EVENT_BUFFER_FULL(THREAD_PRIORITY)) {
        __SIGNAL_EVENT(THREAD_PRIORITY, &adc_event);
    }
}
