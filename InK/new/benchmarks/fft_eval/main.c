#include <DSPLib.h>
#include <msp430.h>
#include <stdbool.h>
#include <stdint.h>

#include "benchmark_helpers.h"
#include "ink/ink.h"

// Profiling flags.
#if RAISE_PIN
INK_PERSISTENT uint8_t full_run_started = 0;
INK_PERSISTENT uint8_t first_run        = 1;
#endif

#ifndef RST_TIME
#define RST_TIME 25000
#endif

#define N_SAMPLES   128
#define STAGE1_STEP (2)
#define STAGE2_STEP (STAGE1_STEP * 2)
#define STAGE3_STEP (STAGE2_STEP * 2)

#if N_SAMPLES == 128
#define TWIDDLE_TABLE msp_cmplx_twiddle_table_128_q15
#elif N_SAMPLES == 256
#define TWIDDLE_TABLE msp_cmplx_twiddle_table_256_q15
#endif

static inline void msp_cmplx_overflow_q15(int16_t* src, bool* overflow);
static inline void msp_cmplx_btfly_auto_q15(
    int16_t* srcA, int16_t* srcB, const _q15* coeff, bool* scale, bool* overflow);
static inline void msp_cmplx_btfly_c0_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow);
static inline void msp_cmplx_btfly_c1_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow);

DSPLIB_DATA(fft_array_copy, MSP_ALIGN_FFT_Q15(N_SAMPLES))
INK_PERSISTENT _q15 fft_array_copy[N_SAMPLES];

// Predefined input signal.
#if N_SAMPLES == 128
#include "data_128.h"
#elif N_SAMPLES == 256
#include "data_256.h"
#endif

// Tasks.
static void* task_sample();
static void* task_fft_prologue();
static void* task_fft_stage_1();
static void* task_fft_stage_2();
static void* task_fft_stage_3();
static void* task_fft_epilogue();
static void* task_done();

// Task-shared protected variables.
uint16_t iteration;
uint16_t fft_shift;
bool     fft_scale;
bool     fft_overflow;
_q15     fft_array[N_SAMPLES];

static _q15 get_sample(const _q15* ptr, uint16_t sample_idx)
{
    __delay_cycles(20);
    return ptr[sample_idx];
}

INK_CREATE_THREAD(15, true)
{
#if RAISE_PIN
    full_run_started = 1;
#endif

    ++iteration;

    return task_sample;
}

static void* task_sample()
{
    uint16_t sample_idx;

    const _q15* ptr;
    switch (iteration % 3)
    {
        case 1:
            ptr = a1;
            break;
        case 2:
            ptr = a2;
            break;
        case 0:
            ptr = a3;
            break;
        default:
            ptr = a1;
    }

    for (sample_idx = 0; sample_idx < N_SAMPLES; sample_idx++)
    {
        fft_array[sample_idx] = get_sample(ptr, sample_idx);
    }

    return task_fft_prologue;
}

static void* task_fft_prologue()
{
    uint16_t i, length;

    // Pull array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array_copy[i] = fft_array[i];
    }

    length = N_SAMPLES / 2;

    // Bit reverse the order of the inputs.
    msp_cmplx_bitrev_q15_params paramsBitRev;
    paramsBitRev.length = length;

    // Perform bit reversal on source data.
    msp_cmplx_bitrev_q15(&paramsBitRev, fft_array_copy);

    // Push array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array[i] = fft_array_copy[i];
    }

    return task_fft_stage_1;
}

static void* task_fft_stage_1()
{
    uint16_t length;
    bool     scale;     // scale flag
    bool     overflow;  // overflow flag
    uint16_t i, j;      // loop counters
    int16_t* srcPtr;    // local source pointer

    length = N_SAMPLES / 2;

    // Pull array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array_copy[i] = fft_array[i];
    }

    // Check for initial overflow.
    overflow = false;
    for (i = 0; i < length; i++)
    {
        msp_cmplx_overflow_q15(&fft_array_copy[i * 2], &overflow);
    }

    // Stage 1.
    scale    = overflow;
    overflow = false;

    // Initialize shift result.
    fft_shift = scale ? 1 : 0;

    if (STAGE1_STEP <= length)
    {
        for (j = 0; j < length; j += STAGE1_STEP)
        {
            srcPtr = fft_array_copy + j * 2;
            msp_cmplx_btfly_c0_auto_q15(&srcPtr[0], &srcPtr[0 + STAGE1_STEP], &scale, &overflow);
        }
    }

    // Push flags.
    fft_scale    = scale;
    fft_overflow = overflow;

    // Push array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array[i] = fft_array_copy[i];
    }

    return task_fft_stage_2;
}

static void* task_fft_stage_2()
{
    uint16_t length;
    bool     scale;     // scale flag
    bool     overflow;  // overflow flag
    uint16_t i, j;      // loop counters
    int16_t* srcPtr;    // local source pointer

    length = N_SAMPLES / 2;

    // Pull flags.
    scale    = fft_scale;
    overflow = fft_overflow;

    // Pull array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array_copy[i] = fft_array[i];
    }

    // Stage 2.
    scale      = overflow;
    overflow   = false;
    fft_shift += scale ? 1 : 0;
    if (STAGE2_STEP <= length)
    {
        for (j = 0; j < length; j += STAGE2_STEP)
        {
            srcPtr = fft_array_copy + j * 2;
            msp_cmplx_btfly_c0_auto_q15(&srcPtr[0], &srcPtr[0 + STAGE2_STEP], &scale, &overflow);
            msp_cmplx_btfly_c1_auto_q15(&srcPtr[2], &srcPtr[2 + STAGE2_STEP], &scale, &overflow);
        }
    }

    // Push flags.
    fft_scale    = scale;
    fft_overflow = overflow;

    // Push array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array[i] = fft_array_copy[i];
    }

    return task_fft_stage_3;
}

static void* task_fft_stage_3()
{
    uint16_t    length;
    bool        scale;             // scale flag
    bool        overflow;          // overflow flag
    uint16_t    i, j;              // loop counters
    uint16_t    step;              // step size
    uint16_t    twiddleIndex;      // twiddle table index
    uint16_t    twiddleIncrement;  // twiddle table increment
    int16_t*    srcPtr;            // local source pointer
    const _q15* twiddlePtr;        // twiddle table pointer

    length = N_SAMPLES / 2;

    // Pull flags.
    scale    = fft_scale;
    overflow = fft_overflow;

    // Pull array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array_copy[i] = fft_array[i];
    }

    // Initialize step size, twiddle angle increment and twiddle table pointer.
    step             = STAGE3_STEP;
    twiddleIncrement = 2 * (*(uint16_t*)TWIDDLE_TABLE) / STAGE3_STEP;
    twiddlePtr       = &TWIDDLE_TABLE[DSPLIB_TABLE_OFFSET];

    // If MPY32 is available save control context and set to fractional mode.
#if defined(__MSP430_HAS_MPY32__)
    uint16_t ui16MPYState = MPY32CTL0;
    MPY32CTL0             = MPYFRAC | MPYDLYWRTEN;
#endif

    // Stage 3 -> log2(step).
    while (step <= length)
    {
        // Reset the twiddle angle index.
        twiddleIndex = 0;

        // Set scale and overflow flags.
        scale      = overflow;
        overflow   = false;
        fft_shift += scale ? 1 : 0;

        for (i = 0; i < (step / 2); i++)
        {
            // Perform butterfly operations on complex pairs.
            for (j = i; j < length; j += step)
            {
                srcPtr = fft_array_copy + j * 2;
                msp_cmplx_btfly_auto_q15(srcPtr, srcPtr + step, &twiddlePtr[twiddleIndex], &scale, &overflow);
            }

            // Increment twiddle table index.
            twiddleIndex += twiddleIncrement;
        }
        // Double the step size and halve the increment factor.
        step             *= 2;
        twiddleIncrement  = twiddleIncrement / 2;
    }

    // Restore MPY32 control context.
#if defined(__MSP430_HAS_MPY32__)
    MPY32CTL0 = ui16MPYState;
#endif

    // Push array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array[i] = fft_array_copy[i];
    }

    return task_fft_epilogue;
}

static void* task_fft_epilogue()
{
    uint16_t i;

    // Pull array.
    for (i = 0; i < N_SAMPLES; i++)
    {
        fft_array_copy[i] = fft_array[i];
    }

    // Initialize split operation params structure.
    msp_split_q15_params paramsSplit;
    paramsSplit.length       = N_SAMPLES;
    paramsSplit.twiddleTable = TWIDDLE_TABLE;

    // Perform the last stage split operation to obtain N/2 complex FFT results.
    msp_split_q15(&paramsSplit, fft_array_copy);

    // Remove DC component.
    fft_array_copy[0] = 0;

    // Push array computing absolute value.
    for (i = 0; i < N_SAMPLES; i++)
    {
        if (fft_array_copy[i] >= 0)
        {
            fft_array[i] = fft_array_copy[i];
        }
        else
        {
            fft_array[i] = -fft_array_copy[i];
        }
    }

    return task_done;
}

static void* task_done()
{
#if RAISE_PIN
    if (full_run_started)
    {
        __port_on(3, 4);
        __port_off(3, 4);
        full_run_started = 0;
    }
#endif

    return INK_THREAD_ENTRY_TASK;
}

int main(void)
{
    /*** Things to do after reboot. ***/
    WDTCTL   = WDTPW | WDTHOLD;  // Stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;        // Disable the GPIO power-on default high-impedance mode

#ifdef RAISE_PIN
    __port_init(3, 4);  // Initialize the pin so we can read the timing.
#endif

    /* Start the scheduler. */
    ink_scheduler_run();

    return 0;
}

#define MSP_OVERFLOW_MAX (INT16_MAX >> 2)
#define MSP_OVERFLOW_MIN (INT16_MIN >> 2)

/*
 * Abstracted helper function to check for overflow.
 */
static inline void msp_cmplx_overflow_q15(int16_t* src, bool* overflow)
{
    if ((CMPLX_REAL(src) > MSP_OVERFLOW_MAX) || (CMPLX_REAL(src) < MSP_OVERFLOW_MIN))
    {
        *overflow = true;
    }
    if ((CMPLX_IMAG(src) > MSP_OVERFLOW_MAX) || (CMPLX_IMAG(src) < MSP_OVERFLOW_MIN))
    {
        *overflow = true;
    }
}

/*
 * Abstracted helper functions for a radix-2 butterfly operation. The following
 * operation is performed at each stage:
 *     A = A + coeff*B
 *     B = A - coeff*B
 *
 * If overflow is detected the result is scaled by two:
 *     A = A/2
 *     B = A/2
 */
static inline void msp_cmplx_btfly_auto_q15(
    int16_t* srcA, int16_t* srcB, const _q15* coeff, bool* scale, bool* overflow)
{
    /* Load coefficients. */
    _q15 tempR = CMPLX_REAL(coeff);
    _q15 tempI = CMPLX_IMAG(coeff);

    /* Calculate real and imaginary parts of coeff*B. */
    __q15cmpy(&tempR, &tempI, &CMPLX_REAL(srcB), &CMPLX_IMAG(srcB));

    /* Scale result if necessary. */
    if (*scale)
    {
        /* B = (A - coeff*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) - tempI) >> 1;

        /* A = (A + coeff*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempR) >> 1;
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) + tempI) >> 1;
    }
    else
    {
        /* B = A - coeff*B */
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempR;
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) - tempI;

        /* A = A + coeff*B */
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    {
        msp_cmplx_overflow_q15(srcA, overflow);
        msp_cmplx_overflow_q15(srcB, overflow);
    }
}

/*
 * Simplified radix-2 butterfly operation for e^(-2*pi*(0/4)). This abstracted
 * helper function takes advantage of the fact the the twiddle coefficients are
 * positive and negative one for a multiplication by e^(-2*pi*(0/4)). The
 * following operation is performed at each stage:
 *     A = A + (1+0j)*B
 *     B = A - (1+0j)*B
 *
 * If overflow is detected the result is scaled by two:
 *     A = A/2
 *     B = A/2
 */
static inline void msp_cmplx_btfly_c0_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow)
{
    int16_t tempR = CMPLX_REAL(srcB);
    int16_t tempI = CMPLX_IMAG(srcB);

    /* Scale result if necessary. */
    if (*scale)
    {
        /* B = (A - (1+0j)*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempR) >> 1;
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) - tempI) >> 1;

        /* A = (A + (1+0j)*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempR) >> 1;
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) + tempI) >> 1;
    }
    else
    {
        /* B = A - coeff*B */
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempR;
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) - tempI;

        /* A = A + coeff*B */
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempR;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) + tempI;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    {
        msp_cmplx_overflow_q15(srcA, overflow);
        msp_cmplx_overflow_q15(srcB, overflow);
    }
}

/*
 * Simplified radix-2 butterfly operation for e^(-2*pi*(1/4)). This abstracted
 * helper function takes advantage of the fact the the twiddle coefficients are
 * positive and negative one for a multiplication by e^(-2*pi*(1/4)).  The
 * following operation is performed at each stage:
 *     A = A + (0-1j)*B
 *     B = A - (0-1j)*B
 *
 * If overflow is detected the result is scaled by two:
 *     A = A/2
 *     B = A/2
 */
static inline void msp_cmplx_btfly_c1_auto_q15(int16_t* srcA, int16_t* srcB, bool* scale, bool* overflow)
{
    int16_t tempR = CMPLX_REAL(srcB);
    int16_t tempI = CMPLX_IMAG(srcB);

    /* Scale result if necessary. */
    if (*scale)
    {
        /* B = (A - (0-1j)*B)/2 */
        CMPLX_REAL(srcB) = (CMPLX_REAL(srcA) - tempI) >> 1;
        CMPLX_IMAG(srcB) = (CMPLX_IMAG(srcA) + tempR) >> 1;

        /* A = (A + (0-1j)*B)/2 */
        CMPLX_REAL(srcA) = (CMPLX_REAL(srcA) + tempI) >> 1;
        CMPLX_IMAG(srcA) = (CMPLX_IMAG(srcA) - tempR) >> 1;
    }
    else
    {
        /* B = A - coeff*B */
        CMPLX_REAL(srcB) = CMPLX_REAL(srcA) - tempI;
        CMPLX_IMAG(srcB) = CMPLX_IMAG(srcA) + tempR;

        /* A = A + coeff*B */
        CMPLX_REAL(srcA) = CMPLX_REAL(srcA) + tempI;
        CMPLX_IMAG(srcA) = CMPLX_IMAG(srcA) - tempR;
    }

    /* Check for possibility of overflow. */
    if (!*overflow)
    {
        msp_cmplx_overflow_q15(srcA, overflow);
        msp_cmplx_overflow_q15(srcB, overflow);
    }
}
