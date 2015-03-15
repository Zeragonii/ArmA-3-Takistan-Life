/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Restrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(side _unit == independent) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
if (side player == civilian) then {
	if(life_inv_zipties < 1) exitWith { hint "You have no zipties."; };
	life_inv_zipties = life_inv_zipties - 1;
	hint "You have ziptied the citizen";
};
//if(!isPlayer _unit) exitWith {}; //This escorts the snake if made a comment
//Broadcast!

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;