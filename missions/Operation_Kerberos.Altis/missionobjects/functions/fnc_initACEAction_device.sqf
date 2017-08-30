/*
 *  Author: iJesuz
 *
 *  Description:
 *      init ace actions for device
 *      (it's called once from clientPostInit)
 *
 *  Parameter(s):
 *      -
 *
 *  Returns:
 *      -
 */
#include "script_component.hpp"

private _action = [
    QGVAR(disableDevice),
    localize LSTRING(OBJECTS_DEVICE_DISABLE),
    "",
    {
        [
            5,
            [_target],
            { [QEFUNC(mission,statemachine_increaseCounter),_this select 0] call CBA_fnc_serverEvent;},
            {},
            localize LSTRING(OBJECTS_DEVICE_DISABLING)
        ] call ace_common_fnc_progressBar;
    },
    { _target getVariable [QEGVAR(mission,isActive), false]; }
] call ace_interact_menu_fnc_createAction;

params ["_classes"];

{
    [_x, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;
} forEach _classes;
