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
#include <stdbool.h>
#include <stdlib.h>

//cuckoo specific definitions
#define NUM_BUCKETS 128 // must be a power of 2
#define NUM_INSERTS (NUM_BUCKETS / 4) // shoot for 25% occupancy
#define NUM_LOOKUPS NUM_INSERTS
#define MAX_RELOCATIONS 8
#define BUFFER_SIZE 32
#define TASK_NUM 15

// #define RAISE_PIN

//#define TIME_ME
#ifdef TIME_ME
#include <stdio.h>
uint32_t tmp[10];
#endif

#ifdef RAISE_PIN
INK_PERSISTENT uint8_t full_run_started = 0;
#endif

// Debug defines and flags.
#define DEBUG_PORT 3
#define DEBUG_PIN  4

typedef uint16_t value_t;
typedef uint16_t hash_t;
typedef uint16_t fingerprint_t;
typedef uint16_t index_t; // bucket index

typedef struct _insert_count {
    unsigned insert_count;
    unsigned inserted_count;
} insert_count_t;

typedef struct _lookup_count {
    unsigned lookup_count;
    unsigned member_count;
} lookup_count_t;

//enumeration of tasks for switching to relative execution path
enum task_index {
    t_init,
    t_init_array,
    t_generate_key,
    t_calc_indexes,
    t_calc_indexes_index_1,

    t_calc_indexes_index_2,
    t_insert,
    t_add,
    t_relocate,
    t_insert_done,

    t_lookup,
    t_lookup_search,
    t_lookup_done,
    t_print_stats,
    t_done
};

// define task-shared persistent variables.
// __shared(

    uint8_t pinRaised;
    fingerprint_t _v_filter[NUM_BUCKETS];
    index_t _v_index;
    value_t _v_key;
    enum task_index _v_next_task;
    fingerprint_t _v_fingerprint;
    value_t _v_index1;
    value_t _v_index2;
    value_t _v_relocation_count;
    value_t _v_insert_count;
    value_t _v_inserted_count;
    value_t _v_lookup_count;
    value_t _v_member_count;
    bool _v_success;
    bool _v_member;
// )

void* task_init();
void* task_init_array();
void* task_generate_key();
void* task_calc_indexes();
void* task_calc_indexes_index_1();

void* task_calc_indexes_index_2();
void* task_insert();
void* task_add();
void* task_relocate();
void* task_insert_done();

void* task_lookup();
void* task_lookup_search();
void* task_lookup_done();
void* task_print_stats();
void* task_done();

static value_t init_key = 0x0001; // seeds the pseudo-random sequence of keys

static hash_t djb_hash(uint8_t* data, unsigned len)
{
    uint16_t hash = 5381;
    unsigned int i;

    for(i = 0; i < len; data++, i++)
        hash = ((hash << 5) + hash) + (*data);


    return hash & 0xFFFF;
}

static index_t hash_to_index(fingerprint_t fp)
{
    hash_t hash = djb_hash((uint8_t *)&fp, sizeof(fingerprint_t));
    return hash & (NUM_BUCKETS - 1); // NUM_BUCKETS must be power of 2
}

static fingerprint_t hash_to_fingerprint(value_t key)
{
    return djb_hash((uint8_t *)&key, sizeof(value_t));
}

INK_CREATE_THREAD(15, true)
{
    return task_init;
}

void* task_init(){

#ifdef RAISE_PIN
    full_run_started = 1;
#endif

    unsigned i;
    for (i = 0; i < NUM_BUCKETS ; ++i) {
         _v_filter[i] = 0;
    }
     _v_insert_count  =  0;
     _v_lookup_count  =  0;
     _v_inserted_count  =  0;
     _v_member_count  =  0;
     _v_key = init_key;
     _v_next_task = t_insert;



    return task_generate_key;
}

void* task_init_array(){

        unsigned i;

        for (i = 0; i < BUFFER_SIZE - 1; ++i) {
            _v_filter[i + _v_index*(BUFFER_SIZE-1)] = 0;
        }

        ++_v_index;

        if ( _v_index == NUM_BUCKETS/(BUFFER_SIZE-1)) {
            return task_generate_key;
        }
        else {
            return task_init_array;
        }
}

void* task_generate_key(){

    // insert pseufo-random integers, for testing
    // If we use consecutive ints, they hash to consecutive DJB hashes...
    // NOTE: we are not using rand(), to have the sequence available to verify
    // that that are no false negatives (and avoid having to save the values).

    uint16_t __cry;
    uint16_t next;

    __cry = (_v_key + 1) * 17;
    _v_key= __cry;

    enum task_index next_task = _v_next_task;

    if (next_task == t_insert) {
        return task_insert;
    } else if (next_task == t_lookup) {
        return task_lookup;
    } else {
        while(1); // Debugging purpose
    }
}

void* task_calc_indexes(){

    uint16_t __cry;
    __cry = hash_to_fingerprint(_v_key);
    _v_fingerprint = __cry;

    return task_calc_indexes_index_1;
}

void* task_calc_indexes_index_1(){

	uint16_t __cry;
	__cry = hash_to_index(_v_key);
	_v_index1 = __cry;

	return task_calc_indexes_index_2;
}

void* task_calc_indexes_index_2(){

    index_t fp_hash = hash_to_index(_v_fingerprint);
    uint16_t __cry;
    uint16_t next;

    __cry = _v_index1 ^ fp_hash;

    _v_index2 = __cry;

    enum task_index next_task = _v_next_task;


    if (next_task == t_add) {
        return task_add;
    } else if (next_task == t_lookup_search) {
        return task_lookup_search;
    } else {
        while(1); // Debugging purpose
    }

}

void* task_insert(){

        _v_next_task = t_add;
        return task_calc_indexes;
}

void* task_add(){

    uint16_t __cry;
    uint16_t __cry_idx = _v_index1;
    uint16_t __cry_idx2 = _v_index2;
	fingerprint_t fingerprint = _v_fingerprint;

    if (!_v_filter[__cry_idx]) {

        _v_success = true;
        __cry = fingerprint;
        _v_filter[__cry_idx]= __cry;

        return task_insert_done;

    } else {

        if (!_v_filter[__cry_idx2]) {

	        _v_success = true;
            __cry = fingerprint;
            _v_filter[__cry_idx2]= __cry;

            return task_insert_done;

        } else {
        	// evict one of the two entries
            fingerprint_t fp_victim;
            index_t index_victim;

            if (rand() % 2) {
                index_victim = __cry_idx;
                fp_victim = _v_filter[__cry_idx];
            } else {
                index_victim = __cry_idx2;
                fp_victim = _v_filter[__cry_idx2];
            }

            // Evict the victim
            __cry = fingerprint;
            _v_filter[index_victim]= __cry;
            _v_index1 = index_victim;
            _v_fingerprint = fp_victim;
            _v_relocation_count =0;

            return task_relocate;
        }
    }
}

void* task_relocate(){

    uint16_t __cry;
    fingerprint_t fp_victim = _v_fingerprint;
    index_t fp_hash_victim = hash_to_index(fp_victim);
    index_t index2_victim = _v_index1 ^ fp_hash_victim;

    if (!_v_filter[index2_victim]) { // slot was free

        _v_success= true;
        _v_filter[index2_victim]= fp_victim;

        return task_insert_done;

    } else {

    	 // slot was occupied, rellocate the next victim
        if (_v_relocation_count >= MAX_RELOCATIONS) { // insert failed
            _v_success= false;

            return task_insert_done;

        }

        ++_v_relocation_count;
        _v_index1= index2_victim;
        __cry = _v_filter[index2_victim];
        _v_fingerprint= __cry;
        _v_filter[index2_victim] = fp_victim;

        return task_relocate;

    }
}

void* task_insert_done(){

    uint16_t __cry;
    ++_v_insert_count;
    __cry = _v_inserted_count;
    __cry+= _v_success;

    _v_inserted_count = __cry;


    if (_v_insert_count < NUM_INSERTS) {

        _v_next_task = t_insert;

        return task_generate_key;

    } else {

        _v_next_task = t_lookup;
        _v_key = init_key;

        return task_generate_key;

    }

}

void* task_lookup(){

        _v_next_task = t_lookup_search;
        return task_calc_indexes;
}

void* task_lookup_search(){

    if (_v_filter[_v_index1] == _v_fingerprint) {
        _v_member = true;

    } else {

        if (_v_filter[_v_index2] == _v_fingerprint) {
            _v_member = true;
        }
        else {
            _v_member = false;
        }
    }

    return task_lookup_done;

}

void* task_lookup_done(){

    uint16_t __cry;
    ++_v_lookup_count;
    __cry = _v_member_count;
    __cry+= _v_member;
    _v_member_count = __cry;

    if (_v_lookup_count < NUM_LOOKUPS) {
        _v_next_task = t_lookup;

        return task_generate_key;

    }
    else {


        return task_print_stats;

    }

}

void* task_print_stats()
{
    return task_done;
}

void* task_done()
{

#ifdef RAISE_PIN
    if (full_run_started) {
        __port_on(3, 4);
        __port_off(3, 4);
        full_run_started = 0;
    }
#endif


// #ifdef TIME_ME
//     //measure some time and stop
//     tmp[0] = __get_time();
//     __delay_cycles(200);
//     tmp[1] = __get_time();
//     __get_time_stop();
// #endif

    return task_init;
}
