#pragma once

#include "events.h"
#include "init.h"
#include "thread.h"
#include "scheduler.h"

#define INK_IGNORE __attribute__((annotate("INK::IGNORE")))
#define INK_PERSISTENT INK_IGNORE __attribute__((section(".persistent")))
