/*
 *  Author: Dorbedo
 *
 *  Description:
 *      Attacks a position with mortar
 *
 *  Parameter(s):
 *      0 : LOCATION - Attacklocation
 *
 *  Returns:
 *      none
 *
 */
#include "script_component.hpp"

_this params ["_attackLoc"];
//TRACEV_1(_attackLoc);
private _pos = locationPosition _attackLoc;
private _targetPos = _pos;

private _nearPlayers = allPlayers select { ((_x distance _pos)<300) && (!((vehicle _x) isKindOf "Air")) };

private _amount = ((count _nearPlayers) min 4) max 15;
If !(_nearPlayers isEqualTo []) then {
    _targetPos = getPosATL (selectRandom _nearPlayers);
};

[_targetPos,0,_amount] call FUNC(fdc_placeOrder);
