/* ----------------------------------------------------------------------------
Function: CBA_fnc_vect2Polar

Description:

Parameters:

Returns:

Examples:
	(begin example)

	(end)

Author:
	Vigilante, courtesy by -=ACE=- of Simcentric
---------------------------------------------------------------------------- */
scriptName "fnc_vect2Polar.sqf";

#include "script_component.hpp"
SCRIPT(vect2Polar);


 private ["_mag", "_dir", "_elev", "_vx", "_vy", "_vz"];

_vx = _this select 0;
_vy = _this select 1;
_vz = _this select 2;


_mag = _this call CBA_fnc_vectMagn;
_elev = asin (_vz / _mag);
_dir = _this call CBA_fnc_vectDir;

[_mag, _dir, _elev];