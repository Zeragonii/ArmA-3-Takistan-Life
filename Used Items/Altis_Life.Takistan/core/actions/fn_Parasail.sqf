/*
	Author: Frankyfunkz
	
	Description:
	Used to attach the player high behind the boat attaching a parachute to the player.
	Just a fun script.
*/


private["_curs,_act"];
_curs = cursorTarget;
if(isNull _curs) exitWith {};
if(_curs isKindOf "Air") exitWith { hint "You need a boat to parasail." };
if(_curs isKindOf "Car") exitWith { hint "You need a boat to parasail." };

player attachTo [_curs,[0,-18,10]];
paraC = "NonSteerable_Parachute_F" createvehicle position vehicle player; paraC attachTo [vehicle player,[0,0,0.5]];
hint "Press Shift+U to detach yourself when you are done Parasailing!        Have fun!";