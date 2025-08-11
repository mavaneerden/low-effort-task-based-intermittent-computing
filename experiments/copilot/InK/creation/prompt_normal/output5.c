#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Entry task: reads ADC data from the event
ENTRY_TASK(t_read_adc) {
    isr_event_t *event = __event;
    uint16_t *data_ptr = (uint16_t *)event->data;
    __SET(adc_value, *data_ptr);
    return t_compute;
}

// Task: performs computation on the ADC value
TASK(t_compute) {
    uint16_t val = __GET(adc_value);
    uint16_t result = sensor_compute(val);
    __SET(computed_value, result);
    return t_transmit;
}

// Task: transmits the computed data
TASK(t_transmit) {
    uint16_t val = __GET(computed_value);
    sensor_transmit(val);
    return NULL;
}

// Application initialization
void __app_init() {
    __CREATE(10, t_read_adc);
}

// Reboot handler
void __app_reboot() {
    // Optional: actions on reboot
}
