/*
 *  Author: Dorbedo
 *
 *  Description:
 *      returns the missions
 *
 *  Parameter(s):
 *      0 : BOOL - (only Main)
 *
 *  Returns:
 *      ARRAY - the array with missions
 *
 */
//#define DEBUG_MODE_FULL
#include "script_component.hpp"

_this params ["_type"];

If !(IS_BOOL(_type)) exitWith {
    missionNameSpace getVariable [QGVAR(missions),[]];
};
If (_type) then {
    (missionNameSpace getVariable [QGVAR(missions),[]]) select {_x getVariable ["isMain",true]};
}else{
    (missionNameSpace getVariable [QGVAR(missions),[]]) select {!(_x getVariable ["isMain",true])};
};
