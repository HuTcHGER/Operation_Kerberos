/*
 *  Author: Dorbedo
 *
 *  Description:
 *      adds the init Eventhandler
 *
 */
#include "script_component.hpp"

["CAManBase", "init", {
    If(local (_this select 0)) then {
        _this call FUNC(gear);
    };
},true,[],true] call CBA_fnc_addClassEventHandler;
