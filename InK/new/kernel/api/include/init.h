#pragma once

#include <stdbool.h>

/**
 * Return TRUE if booting up for the first time, FALSE otherwise.
 */
bool ink_is_first_boot();


/**
 * Return TRUE if the runtime is initialized after booting, FALSE otherwise.
 */
 bool ink_is_initialized();
