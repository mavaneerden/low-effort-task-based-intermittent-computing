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

// cem specific defines
#define NIL 0 // like NULL, but for indexes, not real pointers

#define DICT_SIZE 512
#define BLOCK_SIZE 64

#define NUM_LETTERS_IN_SAMPLE 2
#define LETTER_MASK 0x00FF
#define LETTER_SIZE_BITS 8
#define NUM_LETTERS (LETTER_MASK + 1)
#ifdef RAISE_PIN
INK_PERSISTENT uint8_t full_run_started = 0;
#endif

typedef uint16_t index_t;
typedef uint16_t letter_t;
typedef uint16_t sample_t;
typedef struct _node_t
{
    letter_t letter; // 'letter' of the alphabet
    index_t sibling; // this node is a member of the parent's children list
    index_t child;   // link-list of children
} node_t;

// Tasks.
void *task_init();
void *task_init_dict();
void *task_sample();
void *task_measure_temp();
void *task_letterize();
void *task_compress();
void *task_find_sibling();
void *task_add_node();
void *task_add_insert();
void *task_append_compressed();
void *task_print();
void *task_done();

uint8_t pinCont;
unsigned _v_letter_idx;
letter_t _v_letter;
sample_t _v_prev_sample;
index_t _v_out_len;
index_t _v_node_count;
sample_t _v_sample;
index_t _v_sample_count;
index_t _v_sibling;
index_t _v_child;
index_t _v_parent;
index_t _v_parent_next;
node_t _v_parent_node;
node_t _v_sibling_node;
index_t _v_symbol;
node_t _v_compressed_data[BLOCK_SIZE];
node_t _v_dict[DICT_SIZE];

static sample_t acquire_sample(letter_t prev_sample)
{
    letter_t sample = (prev_sample + 1) & 0x03;
    return sample;
}

INK_CREATE_THREAD(15, true)
{
    return task_init;
}

void *task_init()
{
#ifdef RAISE_PIN
    full_run_started = 1;
    pinCont = 1;
#endif
    _v_parent_next = 0;
    _v_out_len = 0;
    _v_letter = 0;
    _v_prev_sample = 0;
    _v_letter_idx = 0;
    _v_sample_count = 1;
    return task_init_dict;
}

void *task_init_dict()
{

    uint16_t i = _v_letter;

    _v_dict[i].letter = i;
    _v_dict[i].sibling = NIL;
    _v_dict[i].child = NIL;
    ++_v_letter;

    if (i < NUM_LETTERS)
    {
        return task_init_dict;
    }
    else
    {
        _v_node_count = NUM_LETTERS;
        return task_sample;
    }
}

void *task_sample()
{

    unsigned letter_idx = _v_letter_idx;
    unsigned next_letter_idx = letter_idx + 1;

    if (next_letter_idx == NUM_LETTERS_IN_SAMPLE)
        next_letter_idx = 0;

    if (letter_idx == 0)
    {
        _v_letter_idx = next_letter_idx;
        return task_measure_temp;
    }
    else
    {
        _v_letter_idx = next_letter_idx;
        return task_letterize;
    }
}

void *task_measure_temp()
{

    sample_t prev_sample;
    prev_sample = _v_prev_sample;

    sample_t sample = acquire_sample(prev_sample);
    prev_sample = sample;
    _v_prev_sample = prev_sample;
    _v_sample = sample;
    return task_letterize;
}

void *task_letterize()
{

    unsigned letter_idx = _v_letter_idx;

    if (letter_idx == 0)
        letter_idx = NUM_LETTERS_IN_SAMPLE;
    else
        letter_idx--;

    unsigned letter_shift = LETTER_SIZE_BITS * letter_idx;
    letter_t letter = (_v_sample & (LETTER_MASK << letter_shift)) >> letter_shift;

    _v_letter = letter;
    return task_compress;
}

void *task_compress()
{
    index_t parent = _v_parent_next;

    uint16_t __cry;

    __cry = _v_dict[parent].child;
    _v_sibling = __cry;

    __cry = _v_dict[parent].letter;
    _v_parent_node.letter = __cry;

    __cry = _v_dict[parent].sibling;
    _v_parent_node.sibling = __cry;

    __cry = _v_dict[parent].child;
    _v_parent_node.child = __cry;

    _v_parent = parent;
    __cry = _v_dict[parent].child;
    _v_child = __cry;

    ++_v_sample_count;

    return task_find_sibling;
}

void *task_find_sibling()
{

    int i = _v_sibling;

    if (i != NIL)
    {

        uint16_t __cry = _v_letter;
        if (_v_dict[i].letter == __cry)
        { // found
            __cry = _v_sibling;
            _v_parent_next = __cry;

            return task_letterize;
        }
        else if (_v_dict[i].sibling != 0)
        {
            // continue traversing the siblings
            __cry = _v_dict[i].sibling;
            _v_sibling = __cry;
            return task_find_sibling;
        }
        else
        {
            index_t starting_node_idx = (index_t)_v_letter;

            _v_parent_next = starting_node_idx;

            if (_v_child == NIL)
            {
                return task_add_insert;
            }
            else
            {
                return task_add_node;
            }
        }
    }
    else
    {
        index_t starting_node_idx = (index_t)_v_letter;

        _v_parent_next = starting_node_idx;

        if (_v_child == NIL)
        {
            return task_add_insert;
        }
        else
        {
            return task_add_node;
        }
    }
}

void *task_add_node()
{

    int i = _v_sibling;

    if (_v_dict[i].sibling != NIL)
    {
        index_t next_sibling = _v_dict[i].sibling;
        _v_sibling = next_sibling;
        return task_add_node;
    }
    else
    { // found last sibling in the list

        uint16_t __cry;

        __cry = _v_dict[i].letter;
        _v_sibling_node.letter = __cry;
        __cry = _v_dict[i].sibling;
        _v_sibling_node.sibling = __cry;
        __cry = _v_dict[i].child;
        _v_sibling_node.child = __cry;

        return task_add_insert;
    }
}

void *task_add_insert()
{

    if (_v_node_count == DICT_SIZE)
    { // wipe the table if full
        while (1)
            ;
    }

    index_t child = _v_node_count;
    uint16_t __cry;
    if (_v_parent_node.child == NIL)
    { // the only child

        _v_parent_node.child = child;
        int i = _v_parent;

        __cry = _v_parent_node.letter;
        _v_dict[i].letter = __cry;
        __cry = _v_parent_node.sibling;
        _v_dict[i].sibling = __cry;
        __cry = _v_parent_node.child;
        _v_dict[i].child = __cry;
    }
    else
    { // a sibling

        index_t last_sibling = _v_sibling;

        _v_sibling_node.sibling = child;
        __cry = _v_sibling_node.letter;
        _v_dict[last_sibling].letter = __cry;
        __cry = _v_sibling_node.sibling;
        _v_dict[last_sibling].sibling = __cry;
        __cry = _v_sibling_node.child;
        _v_dict[last_sibling].child = __cry;
    }
    __cry = _v_letter;
    _v_dict[child].letter = __cry;
    _v_dict[child].sibling = NIL;
    _v_dict[child].child = NIL;
    __cry = _v_parent;
    _v_symbol = __cry;
    ++_v_node_count;

    return task_append_compressed;
}

void *task_append_compressed()
{

    uint16_t __cry;
    int i = _v_out_len;
    __cry = _v_symbol;
    _v_compressed_data[i].letter = __cry;

    ++_v_out_len;

    if (_v_out_len == BLOCK_SIZE)
    {
        return task_print;
    }
    else
    {
        return task_sample;
    }
}

void *task_print()
{
    unsigned i;

    for (i = 0; i < BLOCK_SIZE; ++i)
    {
        index_t index = _v_compressed_data[i].letter;
    }
    return task_done;
}

void *task_done()
{

#ifdef RAISE_PIN
    if (full_run_started)
    {
        full_run_started = 0;
        __port_on(3, 4);
        __port_off(3, 4);
        pinCont = 0;
    }
#endif

    return task_init;
}
