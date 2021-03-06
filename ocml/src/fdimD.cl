/*===--------------------------------------------------------------------------
 *                   ROCm Device Libraries
 *
 * This file is distributed under the University of Illinois Open Source
 * License. See LICENSE.TXT for details.
 *===------------------------------------------------------------------------*/

#include "mathD.h"

CONSTATTR double
MATH_MANGLE(fdim)(double x, double y)
{
    return (x <= y && !BUILTIN_ISUNORDERED_F64(x, y)) ? 0.0 : (x - y);
}

