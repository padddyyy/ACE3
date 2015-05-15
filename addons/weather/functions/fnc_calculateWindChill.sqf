/*
 * Author: Ruthberg
 *
 * Calculates wind chill based on temperature and wind speed
 *
 * Arguments:
 * 0: temperature - degrees celcius <NUMBER>
 * 2: wind speed - m/s <NUMBER>
 *
 * Return Value:
 * 0: wind chill <NUMBER>
 *
 * Public: No
 */
#include "script_component.hpp"

PARAMS_2(_t, _v);

_v = _v * 3,6; // wind speed in km/h

// Source: https://en.wikipedia.org/wiki/Wind_chill
(13.12 + 0.06215 * _t - 11.37 * _v ^ 0.16 + 0.3965 * _t * _v^0.16)
