// This file is part of InK.
//
// author = "dpatoukas "
// maintainer = "dpatoukas "
// email = "dpatoukas@gmail.com"
//
// copyright = "Copyright 2018 Delft University of Technology"
// license = "LGPL"
// version = "3.0"
// status = "Production"
//
//
// InK is free software: you ca	n redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#include "ink/ink.h"
#include "benchmark_helpers.h"
#include <stdint.h>

// bitcount specific definitions

#define SEED 4L
#define ITER 100
#define CHAR_BIT 8
#ifdef RAISE_PIN
INK_PERSISTENT uint8_t full_run_started = 0;
#endif

INK_PERSISTENT static const char bits[256] =
{
    0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, /* 0   - 15  */
    1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, /* 16  - 31  */
    1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, /* 32  - 47  */
    2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, /* 48  - 63  */
    1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, /* 64  - 79  */
    2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, /* 80  - 95  */
    2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, /* 96  - 111 */
    3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, /* 112 - 127 */
    1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, /* 128 - 143 */
    2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, /* 144 - 159 */
    2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, /* 160 - 175 */
    3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, /* 176 - 191 */
    2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, /* 192 - 207 */
    3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, /* 208 - 223 */
    3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, /* 224 - 239 */
    4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8  /* 240 - 255 */
};

// define task-shared persistent variables.
uint8_t pinCont;
unsigned n_0;
unsigned n_1;
unsigned n_2;
unsigned n_3;
unsigned n_4;
unsigned n_5;
unsigned n_6;
unsigned function;
unsigned iteration;
uint32_t seed;

void *t_init();
void *t_select_func();
void *t_bit_count();
void *t_bitcount();
void *t_ntbl_bitcnt();
void *t_ntbl_bitcount();
void *t_BW_btbl_bitcount();
void *t_AR_btbl_bitcount();
void *t_bit_shifter();
void *t_end();

// Helper functions
int recursive_cnt(uint32_t x)
{
    int cnt = bits[(int)(x & 0x0000000FL)];

    if (0L != (x >>= 4))
        cnt += recursive_cnt(x);

    return cnt;
}

int non_recursive_cnt(uint32_t x)
{
    int cnt = bits[(int)(x & 0x0000000FL)];

    while (0L != (x >>= 4))
    {
        cnt += bits[(int)(x & 0x0000000FL)];
    }

    return cnt;
}

INK_CREATE_THREAD(15, true)
{
    // One-time initialization on first boot, not required.

    return t_init;
}

void *t_init()
{
#ifdef RAISE_PIN
    full_run_started = 1;
#endif

    pinCont = 1;
    function = 0;
    n_0 = 0;
    n_1 = 0;
    n_2 = 0;
    n_3 = 0;
    n_4 = 0;
    n_5 = 0;
    n_6 = 0;

    // next task is t_select_func
    return t_select_func;
}

void *t_select_func()
{
#ifdef RANDOM
    seed = rand();
#else
    seed = SEED;
#endif

    iteration = 0;

    if (function == 0)
    {
        ++function;
        return t_bit_count;
    }
    else if (function == 1)
    {
        ++function;
        return t_bitcount;
    }
    else if (function == 2)
    {
        ++function;
        return t_ntbl_bitcnt;
    }
    else if (function == 3)
    {
        ++function;
        return t_ntbl_bitcount;
    }
    else if (function == 4)
    {
        ++function;
        return t_BW_btbl_bitcount;
    }
    else if (function == 5)
    {
        ++function;
        return t_AR_btbl_bitcount;
    }
    else if (function == 6)
    {
        ++function;
        return t_bit_shifter;
    }
    else
    {
        ++function;
        return t_end;
    }
}

void *t_bit_count()
{
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;

    unsigned temp = 0;
    if (tmp_seed)
        do
            temp++;
        while (0 != (tmp_seed = tmp_seed & (tmp_seed - 1)));

    n_0 += temp;
    ++iteration;

    if (iteration < ITER)
    {
        return t_bit_count;
    }
    else
    {
        return t_select_func;
    }
}

void *t_bitcount()
{
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;

    tmp_seed = ((tmp_seed & 0xAAAAAAAAL) >> 1) + (tmp_seed & 0x55555555L);
    tmp_seed = ((tmp_seed & 0xCCCCCCCCL) >> 2) + (tmp_seed & 0x33333333L);
    tmp_seed = ((tmp_seed & 0xF0F0F0F0L) >> 4) + (tmp_seed & 0x0F0F0F0FL);
    tmp_seed = ((tmp_seed & 0xFF00FF00L) >> 8) + (tmp_seed & 0x00FF00FFL);
    tmp_seed = ((tmp_seed & 0xFFFF0000L) >> 16) + (tmp_seed & 0x0000FFFFL);

    n_1 += (int)tmp_seed;
    ++iteration;

    if (iteration < ITER)
    {
        return t_bitcount;
    }
    else
    {
        return t_select_func;
    }
}

void *t_ntbl_bitcnt()
{

    uint32_t tmp_seed = seed;
    n_2 += non_recursive_cnt(tmp_seed);
    seed = tmp_seed + 13;
    iteration++;

    if (iteration < ITER)
    {
        return t_ntbl_bitcnt;
    }
    else
    {
        return t_select_func;
    }
}

void *t_ntbl_bitcount()
{

    uint16_t __cry = seed;
    n_3 += bits[(int)(__cry & 0x0000000FUL)] +
           bits[(int)((__cry & 0x000000F0UL) >> 4)] +
           bits[(int)((__cry & 0x00000F00UL) >> 8)] +
           bits[(int)((__cry & 0x0000F000UL) >> 12)] +
           bits[(int)((__cry & 0x000F0000UL) >> 16)] +
           bits[(int)((__cry & 0x00F00000UL) >> 20)] +
           bits[(int)((__cry & 0x0F000000UL) >> 24)] +
           bits[(int)((__cry & 0xF0000000UL) >> 28)];

    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;

    if (iteration < ITER)
    {
        return t_ntbl_bitcount;
    }
    else
    {
        return t_select_func;
    }
}

void *t_BW_btbl_bitcount()
{

    union
    {
        unsigned char ch[4];
        long y;
    } U;

    U.y = seed;

    n_4 += bits[U.ch[0]] + bits[U.ch[1]] +
           bits[U.ch[3]] + bits[U.ch[2]];
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;

    if (iteration < ITER)
    {
        return t_BW_btbl_bitcount;
    }
    else
    {
        return t_select_func;
    }
}

void *t_AR_btbl_bitcount()
{
    unsigned char *Ptr = (unsigned char *)&seed;
    int Accu;

    Accu = bits[*Ptr++];
    Accu += bits[*Ptr++];
    Accu += bits[*Ptr++];
    Accu += bits[*Ptr];
    n_5 += Accu;
    uint32_t tmp_seed = seed;
    seed = tmp_seed + 13;
    iteration++;

    if (iteration < ITER)
    {
        return t_AR_btbl_bitcount;
    }
    else
    {
        return t_select_func;
    }
}

void *t_bit_shifter()
{
    unsigned i, nn;
    uint32_t tmp_seed = seed;
    for (i = nn = 0; tmp_seed && (i < (sizeof(long) * CHAR_BIT)); ++i, tmp_seed >>= 1)
        nn += (unsigned)(tmp_seed & 1L);
    n_6 += nn;
    tmp_seed = seed;
    tmp_seed += 13;
    seed = tmp_seed;

    iteration++;

    if (iteration < ITER)
    {
        return t_bit_shifter;
    }
    else
    {
        return t_select_func;
    }
}

void *t_end()
{
#ifdef RAISE_PIN
    if (full_run_started)
    {
        __port_on(3, 4);
        __port_off(3, 4);
        full_run_started = 0;
    }
#endif

    if (pinCont)
    {
        __delay_cycles(1);
    }

    pinCont = 0;

    return t_init;
}
