#include "sensor.h"
#include "ink.h"

#define THREAD_PRIORITY 10

__nv int adc_isr_data = 0;
isr_event_t adc_event = { .data = &adc_isr_data, .size = sizeof(int), .timestamp = 0 };

__shared(
    int adc_value;
    int computed_value;
)

ENTRY_TASK(read_adc)
TASK(compute_adc)
TASK(transmit_adc)

ENTRY_TASK(read_adc) {
    __SET(adc_value, *(int*)(__event->data));
    return compute_adc;
}

TASK(compute_adc) {
    __SET(computed_value, sensor_compute(__GET(adc_value)));
    return transmit_adc;
}

TASK(transmit_adc) {
    sensor_transmit(__GET(computed_value));
    return NULL;
}

void __app_init(void) {
    __CREATE(THREAD_PRIORITY, read_adc);
}

void __app_reboot(void) {
    // Optional hardware setup if needed
}

void __attribute__ ((interrupt(ADC_VECTOR))) ADC_ISR(void) {
    adc_isr_data = ADCMEM0;

    if (!__EVENT_BUFFER_FULL(THREAD_PRIORITY)) {
        __SIGNAL_EVENT(THREAD_PRIORITY, &adc_event);
    }
}
