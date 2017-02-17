/*
 *  Author: iJesuz
 *
 *  Description:
 *      Mission "Weaponcache"
 *
 *  Parameter(s):
 *      0 : HASH    - mission hash
 *
 *  Returns:
 *      -
 */
#include "script_component.hpp"

_this params ["_mission"];

[_mission, {
    _this params ["_cache"];
    _cache addEventHandler ["Killed", {
        [QGVAR(weaponcache_destroyed), _this] call CBA_fnc_globalEvent;
    }];
}] call FUNC(mainmission__oneCounter);