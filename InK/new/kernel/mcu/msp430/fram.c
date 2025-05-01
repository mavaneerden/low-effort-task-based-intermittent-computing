
#include <msp430.h>
#include <stdint.h>
#include "fram.h"

void __fram_init()
{
    // Disable FRAM wait cycles to allow clock operation over 8MHz
    FRCTL0 = 0xA500 | ((1) << 4); // FRCTLPW | NWAITS_1;

    /* init FRAM */
    FRCTL0_H |= (FWPW) >> 8;
}


// size should be in words
void __fram_word_copy(void* from, void* to, unsigned short size)
{
    // Configure DMA channel 0
    __data16_write_addr((unsigned short) &DMA0SA, (uintptr_t) from);// Source block address
    __data16_write_addr((unsigned short) &DMA0DA, (uintptr_t) to);// Destination single address
    DMA0SZ = size;                          // Block size

    // TODO: Some DMA control can be set up only once
    DMA0CTL = DMADT_5 | DMASRCINCR_3 | DMADSTINCR_3; // Rpt, inc
    DMA0CTL |= DMAEN;                         // Enable DMA0

    DMA0CTL |= DMAREQ;                      // Trigger block transfer
}
