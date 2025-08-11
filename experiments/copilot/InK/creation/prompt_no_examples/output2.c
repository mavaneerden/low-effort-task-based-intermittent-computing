#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Entry task: reads ADC value from event
ENTRY_TASK(read_adc) {
    isr_event_t *event = __event;
    uint16_t *data_ptr = (uint16_t *)event->data;
    __SET(adc_value, *data_ptr);
    return TASK(compute);
}

// Second task: performs computation
TASK(compute) {
    uint16_t val = __GET(adc_value);
    uint16_t result = sensor_compute(val);
    __SET(computed_value, result);
    return TASK(transmit);
}

// Third task: transmits computed value
TASK(transmit) {
    uint16_t val = __GET(computed_value);
    sensor_transmit(val);
    return NULL;
}

// Application initialization
void __app_init() {
    __CREATE(1, read_adc);
}

// Application reboot handler
void __app_reboot() {
    // Optional: actions on reboot
}

// Interrupt Service Routine (example)
#pragma vector=ADC_VECTOR
__interrupt void adc_isr(void) {
    static __nv uint16_t adc_data;
    adc_data = ADCMEM0;

    isr_event_t event = {
        .data = &adc_data,
        .size = sizeof(adc_data),
        .timestamp = 0
    };

    if (!__EVENT_BUFFER_FULL(1)) {
        __SIGNAL_EVENT(1, &event);
    }
}
