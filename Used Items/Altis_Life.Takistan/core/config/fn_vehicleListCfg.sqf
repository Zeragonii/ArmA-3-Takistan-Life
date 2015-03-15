#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "vehicle_factory":
	{
		_return = [
			["B_Quadbike_01_F",375],
			["C_Hatchback_01_F",3750],
			["C_Offroad_01_F", 7500],
			["C_SUV_01_F",10000],
			["C_Van_01_transport_F",25000],
			["C_Hatchback_01_sport_F",3750],
			["C_Van_01_fuel_F",25000],
			["C_Van_01_box_F",25000],
			["I_Truck_02_transport_F",25000],
			["I_Truck_02_covered_F",50000],
			["B_Truck_01_transport_F",125000],
			["B_Truck_01_box_F", 200000],
			["B_Heli_Light_01_F",500000],
			["O_Heli_Light_02_unarmed_F",1000000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",1000000],
			["O_Heli_Light_02_unarmed_F",2000000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1000],
			["C_Hatchback_01_F",7500],
			["C_Offroad_01_F",15000],
			["C_SUV_01_F",20000],
			["C_Hatchback_01_sport_F",50000],
			["C_Van_01_transport_F",75000],
			["C_Van_01_fuel_F",75000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["B_Truck_01_Repair_F",450000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",1000],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",1000000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["I_MRAP_03_F",150000];
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",2500000];
			_return pushBack
			["O_Heli_Transport_04_F",3500000];
			_return pushBack
			["O_Heli_Light_02_F",10000000];
						
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",15000];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack
			["B_Truck_01_transport_F",200000];
			_return pushBack
			["B_Truck_01_covered_F",250000];
			_return pushBack
			["B_Truck_01_medical_F",300000];
			_return pushBack
			["B_Truck_01_ammo_F",350000];
			_return pushBack
			["B_Truck_01_Repair_F",375000];
		
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",150000];
			
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",1000000],
			["O_Heli_Light_02_unarmed_F",2000000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",1000000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",5000000];
			_return pushBack
			["B_Heli_Light_01_armed_F",3000000];
			_return pushBack
			["B_Heli_Transport_03_F",10000000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",1000000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",5000000];
			_return pushBack
			["B_Heli_Light_01_armed_F",3000000];
			_return pushBack
			["B_MRAP_01_F",10000000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",12500],
			["C_Boat_Civil_01_rescue_F",1000],
			["B_SDV_01_F",50000]
		];
	};
	
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",50000]
		];
	};
};

_return;
