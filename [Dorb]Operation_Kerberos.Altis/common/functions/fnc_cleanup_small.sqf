/*
	Author: Dorbedo
	
	Description:
	small cleanup
	
*/
#include "script_component.hpp"
SCRIPT(cleanup_small);
{if ((!(alive _x))and(!(GETVAR(_x,EGVAR(mission,istarget),false)))) then {_x TILGE;};} foreach vehicles;
{if (!(GETVAR(_x,EGVAR(mission,istarget),false))) then {_x TILGE;};} forEach allDead;

{if (!(GETVAR(_x,EGVAR(mission,istarget),false))) then {_x TILGE;};} foreach nearestObjects [(getmarkerpos DORB_RESPAWNMARKER),["CraterLong_small","CraterLong","WeaponHolder","GroundWeaponHolder"], 1000];