#include <macro.h>
/*
    File: fn_initCop.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
    ["Blacklisted",false,true] call BIS_fnc_endMission;
    sleep 30;
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
player enableFatigue false;