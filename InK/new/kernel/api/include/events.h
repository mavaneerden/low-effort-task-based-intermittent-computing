#pragma once

#include <stdint.h>
#include <stdbool.h>

typedef struct {
    void *data;             // the data should be allocated in FRAM by the caller
    uint32_t size;          // size of the data in bytes
    uint32_t timestamp;     // timestamp of the event
} ink_isr_event_t;

bool ink_signal_event_isr(uint8_t thread_priority_to_signal, ink_isr_event_t *event);
