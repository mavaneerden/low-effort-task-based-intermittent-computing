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
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "msp-math.h"

// Number of samples to discard before recording training set
#define NUM_WARMUP_SAMPLES 3

#define ACCEL_WINDOW_SIZE 3
#define MODEL_SIZE 16
#define SAMPLE_NOISE_FLOOR 10 // TODO: made up value

// Number of classifications to complete in one experiment
#define SAMPLES_TO_COLLECT 128

typedef struct
{
    uint8_t x, y, z;

} threeAxis_t_8;

typedef threeAxis_t_8 accelReading;

typedef accelReading accelWindow[ACCEL_WINDOW_SIZE];

typedef struct
{
    unsigned meanmag;
    unsigned stddevmag;
} features_t;

typedef enum
{
    CLASS_STATIONARY,
    CLASS_MOVING,
} class_t;

typedef enum
{
    MODE_IDLE = 3,
    MODE_TRAIN_STATIONARY = 2,
    MODE_TRAIN_MOVING = 1,
    MODE_RECOGNIZE = 0, // default
} run_mode_t;

uint8_t pinCont;
uint16_t _v_pinState;
unsigned _v_count;
unsigned _v_discardedSamplesCount;
unsigned _v_totalCount;
unsigned _v_movingCount;
unsigned _v_stationaryCount;
unsigned _v_trainingSetSize;
unsigned _v_samplesInWindow;
accelReading _v_window[ACCEL_WINDOW_SIZE];
features_t _v_features;
features_t _v_model_stationary[MODEL_SIZE];
features_t _v_model_moving[MODEL_SIZE];
class_t _v_class;
run_mode_t _v_mode;

void *task_init();
void *task_selectMode();
void *task_resetStats();
void *task_sample();
void *task_transform();
void *task_featurize();
void *task_classify();
void *task_stats();
void *task_warmup();
void *task_train();
void *task_idle();

INK_PERSISTENT unsigned _v_seed;
INK_PERSISTENT uint8_t full_run_started;

INK_CREATE_THREAD(15, true)
{
    return task_init;
}

void *task_init()
{

#ifdef RAISE_PIN
    full_run_started = 1;
#endif

    pinCont = 1;
    _v_pinState = MODE_IDLE;
    _v_count = 0;
    _v_seed = 1;

    return task_selectMode;
}

// Dummy data sampling
void ACCEL_singleSample_(threeAxis_t_8 *result)
{

    unsigned seed = _v_seed;

    result->x = (seed * 17) % 85;
    result->y = (seed * 17 * 17) % 85;
    result->z = (seed * 17 * 17 * 17) % 85;
    _v_seed = ++seed;
}

void *task_selectMode()
{
    unsigned discardedSamplesCount = _v_discardedSamplesCount;
    unsigned samplesInWindow = _v_samplesInWindow;
    unsigned count = _v_count;
    class_t lc_class = _v_class;
    run_mode_t lc_mode = _v_mode;

    uint16_t pin_state = 1;

    ++count;
    _v_count = count;

    if (count >= 3)
        pin_state = 2;
    if (count >= 5)
        pin_state = 0;
    if (count >= 7)
    {
#ifdef RAISE_PIN
        if (full_run_started)
        {
            full_run_started = 0;
            __port_on(3, 4);
            __port_off(3, 4);
        }
#endif
        return task_init;
    }

    // Don't re-launch training after finishing training
    if ((pin_state == MODE_TRAIN_STATIONARY || pin_state == MODE_TRAIN_MOVING) && pin_state == _v_pinState)
    {
        pin_state = MODE_IDLE;
    }
    else
    {
        _v_pinState = pin_state;
    }

    switch (pin_state)
    {
    case MODE_TRAIN_STATIONARY:
        _v_discardedSamplesCount = 0;
        _v_mode = MODE_TRAIN_STATIONARY;
        _v_class = CLASS_STATIONARY;
        _v_samplesInWindow = 0;
        return task_warmup;
        break;
    case MODE_TRAIN_MOVING:
        _v_discardedSamplesCount = 0;
        _v_mode = MODE_TRAIN_MOVING;
        _v_class = CLASS_MOVING;
        _v_samplesInWindow = 0;
        return task_warmup;
        break;
    case MODE_RECOGNIZE:
        _v_mode = MODE_RECOGNIZE;
        return task_resetStats;
        break;
    default:
        return task_idle;
        break;
    }
}

void *task_warmup()
{
    threeAxis_t_8 sample;

    if (_v_discardedSamplesCount < NUM_WARMUP_SAMPLES)
    {

        ACCEL_singleSample_(&sample);
        ++_v_discardedSamplesCount;
        return task_warmup;
    }
    else
    {

        _v_trainingSetSize = 0;
        return task_sample;
    }
}

void *task_sample()
{
    unsigned samplesInWindow = _v_samplesInWindow;

    accelReading sample;
    ACCEL_singleSample_(&sample);
    _v_window[samplesInWindow].x = sample.x;
    _v_window[samplesInWindow].y = sample.y;
    _v_window[samplesInWindow].z = sample.z;
    ++samplesInWindow;
    _v_samplesInWindow = samplesInWindow;

    if (samplesInWindow < ACCEL_WINDOW_SIZE)
    {
        return task_sample;
    }
    else
    {
        _v_samplesInWindow = 0;
        return task_transform;
    }
}

void *task_transform()
{

    int8_t ios_i;
    accelReading window[ACCEL_WINDOW_SIZE];

    for (ios_i = 0; ios_i < ACCEL_WINDOW_SIZE; ++ios_i)
    {
        window[ios_i] = _v_window[ios_i];
    }

    unsigned i;

    for (i = 0; i < ACCEL_WINDOW_SIZE; i++)
    {

        if (window[i].x < SAMPLE_NOISE_FLOOR ||
            window[i].y < SAMPLE_NOISE_FLOOR ||
            window[i].z < SAMPLE_NOISE_FLOOR)
        {

            if (window[i].x > SAMPLE_NOISE_FLOOR)
            {
                _v_window[i].x = window[i].x;
            }
            else
            {
                _v_window[i].x = 0;
            }

            if (window[i].y > SAMPLE_NOISE_FLOOR)
            {
                _v_window[i].y = window[i].y;
            }
            else
            {
                _v_window[i].y = 0;
            }

            if (window[i].z > SAMPLE_NOISE_FLOOR)
            {
                _v_window[i].z = window[i].z;
            }
            else
            {
                _v_window[i].z = 0;
            }
        }
    }

    return task_featurize;
}

void *task_featurize()
{
    run_mode_t mode = _v_mode;
    features_t features = _v_features;

    accelReading mean, stddev;
    mean.x = mean.y = mean.z = 0;
    stddev.x = stddev.y = stddev.z = 0;

    uint8_t i = 0;
    for (i = 0; i < ACCEL_WINDOW_SIZE; i++)
    {
        mean.x += _v_window[i].x;
        mean.y += _v_window[i].y;
        mean.z += _v_window[i].z;
    }

    mean.x >>= 2;
    mean.y >>= 2;
    mean.z >>= 2;

    for (i = 0; i < ACCEL_WINDOW_SIZE; i++)
    {
        if (_v_window[i].x > mean.x)
        {
            stddev.x += _v_window[i].x - mean.x;
        }
        else
        {
            stddev.x += mean.x - _v_window[i].x;
        }

        if (_v_window[i].y > mean.y)
        {
            stddev.y += _v_window[i].y - mean.y;
        }
        else
        {
            stddev.y += mean.y - _v_window[i].y;
        }

        if (_v_window[i].z > mean.z)
        {
            stddev.z += _v_window[i].z - mean.z;
        }
        else
        {
            stddev.z += mean.z - _v_window[i].z;
        }
    }
    stddev.x >>= 2;
    stddev.y >>= 2;
    stddev.z >>= 2;

    unsigned meanmag = mean.x * mean.x + mean.y * mean.y + mean.z * mean.z;
    unsigned stddevmag = stddev.x * stddev.x + stddev.y * stddev.y + stddev.z * stddev.z;
    features.meanmag = sqrt16(meanmag);
    features.stddevmag = sqrt16(stddevmag);

    switch (mode)
    {
    case MODE_TRAIN_STATIONARY:
    case MODE_TRAIN_MOVING:
        _v_features.meanmag = features.meanmag;
        _v_features.stddevmag = features.stddevmag;
        return task_train;
        break;
    case MODE_RECOGNIZE:
        _v_features.meanmag = features.meanmag;
        _v_features.stddevmag = features.stddevmag;
        return task_classify;
        break;
    default:
        // TODO: abort
        __delay_cycles(1);
        break;
    }
}

void *task_classify()
{

    unsigned int move_less_error = 0;
    unsigned int stat_less_error = 0;
    int i;

    unsigned int meanmag;
    unsigned int stddevmag;
    meanmag = _v_features.meanmag;
    stddevmag = _v_features.stddevmag;

    unsigned int stat_mean_err = 0;
    unsigned int stat_sd_err = 0;
    unsigned int move_mean_err = 0;
    unsigned int move_sd_err = 0;

    for (i = 0; i < MODEL_SIZE; ++i)
    {

        if (_v_model_stationary[i].meanmag > meanmag)
        {
            stat_mean_err = _v_model_stationary[i].meanmag - meanmag;
        }
        else
        {
            stat_mean_err = meanmag - _v_model_stationary[i].meanmag;
        }

        if (_v_model_stationary[i].stddevmag > stddevmag)
        {
            stat_sd_err = _v_model_stationary[i].stddevmag - stddevmag;
        }
        else
        {
            stat_sd_err = stddevmag - _v_model_stationary[i].stddevmag;
        }

        unsigned int tmp;
        tmp = _v_model_stationary[i].meanmag;

        if (tmp > meanmag)
        {
            move_mean_err = (tmp - meanmag);
        }
        else
        {
            move_mean_err = meanmag - tmp;
        }

        if (_v_model_stationary[i].stddevmag > stddevmag)
        {
            move_sd_err = _v_model_stationary[i].stddevmag - stddevmag;
        }
        else
        {
            move_sd_err = stddevmag - _v_model_stationary[i].stddevmag;
        }

        if (move_mean_err < stat_mean_err)
        {
            move_less_error++;
        }
        else
        {
            stat_less_error++;
        }

        if (move_sd_err < stat_sd_err)
        {
            move_less_error++;
        }
        else
        {
            stat_less_error++;
        }
    }

    if (move_less_error > stat_less_error)
    {
        _v_class = CLASS_MOVING;
    }
    else
    {
        _v_class = CLASS_STATIONARY;
    }

    return task_stats;
}

void *task_stats()
{
    unsigned movingCount = 0, stationaryCount = 0;
    ++_v_totalCount;

    switch (_v_class)
    {
    case CLASS_MOVING:

        ++_v_movingCount;
        break;
    case CLASS_STATIONARY:

        ++_v_stationaryCount;
        break;
    }

    if (_v_totalCount == SAMPLES_TO_COLLECT)
    {
        return task_idle;
    }
    else
    {
        return task_sample;
    }
}

void *task_idle()
{
    return task_selectMode;
}

void *task_resetStats()
{
    _v_movingCount = 0;
    _v_stationaryCount = 0;
    _v_totalCount = 0;

    _v_samplesInWindow = 0;

    return task_sample;
}

void *task_train()
{
    unsigned trainingSetSize = _v_trainingSetSize;

    switch (_v_class)
    {
    case CLASS_STATIONARY:
        _v_model_stationary[trainingSetSize].meanmag = _v_features.meanmag;
        _v_model_stationary[trainingSetSize].stddevmag = _v_features.stddevmag;
        break;
    case CLASS_MOVING:
        _v_model_moving[trainingSetSize].meanmag = _v_features.meanmag;
        _v_model_moving[trainingSetSize].stddevmag = _v_features.stddevmag;
        break;
    }

    ++trainingSetSize;
    _v_trainingSetSize = trainingSetSize;

    if (_v_trainingSetSize < MODEL_SIZE)
    {
        return task_sample;
    }
    else
    {

        return task_idle;
    }
}
