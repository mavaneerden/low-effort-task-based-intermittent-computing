#include "ink.h"
#include "sensor.h"

__nv isr_event_t adc_event;

__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

ENTRY_TASK(task_read_adc) {
    adc_value = *(uint16_t *)__GET(__event->data);
    return task_compute;
}

TASK(task_compute) {
    uint16_t result = sensor_compute(__GET(adc_value));
    __SET(computed_value, result);
    return task_transmit;
}

TASK(task_transmit) {
    sensor_transmit(__GET(computed_value));
    return NULL;
}

void __app_init() {
    __CREATE(10, task_read_adc);
}

void __app_reboot() {
    // No action needed on reboot
}

// Interrupt Service Routine (ISR) for ADC
__attribute__((interrupt(ADC_VECTOR)))
void adc_isr(void) {
    if (!__EVENT_BUFFER_FULL(10)) {
        *(uint16_t *)adc_event.data = ADCMEM0;
        adc_event.size = sizeof(uint16_t);
        adc_event.timestamp = 0;
        __SIGNAL_EVENT(10, &adc_event);
    }
}
