/*
    author: iJesuz, Dorbedo

    description:
        part of only pilots

    parameter:
        0: OBJECT - the player
        1: STRING - position of player
        2: OBJECT - the vehicle
        3: ARRAY - turret
    returns:
        true
*/
#include "script_component.hpp"

params["_unit","_position","_vehicle","_turret"];

CHECK(!isPlayer _unit)
CHECK((vehicle player) isKindOf "ParachuteBase")
CHECK(!(_vehicle isKindOf "AIR"))

if (!(((_turret isEqualTo [0]) || (_position == "driver")))) exitWith {};

If (missionNamespace getVariable [QEGVAR(player,whitelistenabled),false]) then {

    private "_bool";
    _bool = true;

    if (!((toLower (typeOf _unit)) in ["b_pilot_f","b_helipilot_f","o_pilot_f","o_helipilot_f"])) then { _bool = false; };
    if ISCASVEHICLE_C(typeOf vehicle _unit) then {
        if ( !((getPlayerUID _unit in (["_SP_AI_","_SP_PLAYER_"])) || (!isNil QEGVAR(player,reserved_pilot_slot))) ) then { _bool = false; };
        if (!(_unit getVariable ["DORB_ISCASPILOT",false])) then { _bool = false };
    };

    if (!_bool) then {
        if ((_position == "driver") || {isNull driver (vehicle _unit)}) then { (vehicle _unit) engineOn false; };
        unassignVehicle (vehicle _unit);
        _unit action ["Eject", vehicle _unit];
        _unit action ["GetOut", vehicle _unit];
        if (isPlayer _unit) then { hint format[localize LSTRING(NURPILOTEN),name _unit]; };
    };
}else{
    if (!((toLower (typeOf _unit)) in ["b_pilot_f","b_helipilot_f","o_pilot_f","o_helipilot_f"])) then {
        if ((_position == "driver") || {isNull driver (vehicle _unit)}) then { (vehicle _unit) engineOn false; };
        unassignVehicle (vehicle _unit);
        _unit action ["Eject", vehicle _unit];
        _unit action ["GetOut", vehicle _unit];
        if (isPlayer _unit) then { hint format[localize LSTRING(NURPILOTEN),name _unit]; };
    };
};
true
