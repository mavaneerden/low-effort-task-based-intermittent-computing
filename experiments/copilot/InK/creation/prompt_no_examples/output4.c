#include "ink.h"
#include "sensor.h"

// Declare task-shared variables
__shared(
    uint16_t adc_value;
    uint16_t computed_value;
)

// Declare persistent event data
__nv isr_event_t adc_event;

// Entry task: reads ADC value from event
ENTRY_TASK(read_adc) {
    adc_value = __GET(*(uint16_t *)__event->data);
    return TASK(compute);
}

// Task: performs computation
TASK(compute) {
    uint16_t result = sensor_compute(__GET(adc_value));
    __SET(computed_value, result);
    return TASK(transmit);
}

// Task: transmits computed value
TASK(transmit) {
    sensor_transmit(__GET(computed_value));
    return ENTRY_TASK(read_adc);
}

// Initialization function
void __app_init() {
    __CREATE(1, read_adc);
}

// Reboot function
void __app_reboot() {
    // Optional: actions on reboot
}

// Interrupt Service Routine (ISR) for ADC
__attribute__((interrupt(ADC_VECTOR)))
void adc_isr(void) {
    if (!__EVENT_BUFFER_FULL(1)) {
        *((uint16_t *)adc_event.data) = ADCMEM0;
        adc_event.size = sizeof(uint16_t);
        adc_event.timestamp = 0;
        __SIGNAL_EVENT(1, &adc_event);
    }
}
