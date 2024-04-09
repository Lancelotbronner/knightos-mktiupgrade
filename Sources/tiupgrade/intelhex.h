#pragma once

#include <stdio.h>

/* This is not suitable as a generic intel hex data formatting tool */

void write_ihex(FILE *file, uint8_t *data, size_t len, uint16_t relative_address);
