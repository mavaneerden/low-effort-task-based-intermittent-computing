#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Entry task: reads ADC data from the event
ENTRY_TASK(t_read_adc) {
    isr_event_t *evt = __event;
    uint16_t *data_ptr = (uint16_t *)evt->data;
    __SET(adc_value, *data_ptr);
    return t_compute;
}

// Task: performs computation on ADC value
TASK(t_compute) {
    uint16_t val = __GET(adc_value);
    uint16_t result = sensor_compute(val);
    __SET(computed_value, result);
    return t_transmit;
}

// Task: transmits computed data
TASK(t_transmit) {
    uint16_t val = __GET(computed_value);
    sensor_transmit(val);
    return NULL;
}

// Application initialization
void __app_init() {
    __CREATE(10, t_read_adc);
}

// Application reboot handler
void __app_reboot() {
    // Optional: actions on reboot
}

// Interrupt Service Routine (ISR) for ADC
#pragma vector=ADC_VECTOR
__interrupt void adc_isr(void) {
    static __nv uint16_t adc_data;
    adc_data = ADCMEM0;

    isr_event_t evt = {
        .data = &adc_data,
        .size = sizeof(adc_data),
        .timestamp = 0
    };

    if (!__EVENT_BUFFER_FULL(10)) {
        __SIGNAL_EVENT(10, &evt);
    }
}
