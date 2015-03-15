#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Takistan Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",700],
						["SMG_02_F",nil,400],
						["hgun_P07_snds_F","Stun Pistol",200],
						["Binocular",nil,15],
						["ItemGPS",nil,10],
						["ToolKit",nil,25],
						["muzzle_snds_L",nil,65],
						["FirstAidKit",nil,15],
						["Medikit",nil,100],
						["NVGoggles",nil,200],
						["acc_flashlight",nil,75],
						["30Rnd_9x21_Mag","9mm 30Rnd Mag", 120],
						["16Rnd_9x21_Mag",nil,5],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",120]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,10],
						["Binocular",nil,15],
						["ToolKit",nil,25],
						["FirstAidKit",nil,15],
						["Medikit",nil,50],
						["NVGoggles",nil,120],
						["B_FieldPack_ocamo",nil,30]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Takistan Patrol Officer Shop",
					[
						["arifle_MX_F",nil,5000],
						["arifle_MXC_F",nil,6000],
						["SMG_01_F",nil,3000],
						["HandGrenade_Stone","Flashbang",170],
						["MineDetector",nil,100],
						["Rangefinder",nil,100],
						["acc_flashlight",nil,75],
						["optic_Holosight",nil,120],
						["optic_Hamr",nil,250],
						["optic_Arco",nil,250],
						["muzzle_snds_acp",nil,250],
						["muzzle_snds_H",nil,275],
						["30Rnd_65x39_caseless_mag",nil,15],
						["30Rnd_65x39_caseless_mag_Tracer",nil,15],
						["30Rnd_45ACP_Mag_SMG_01",nil,25],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,25]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Takistan Sergeant Officer Shop",
					[
						["launch_RPG32_F",nil,250000],
						["srifle_EBR_MRCO_pointer_F",nil,17500],
						["srifle_LRR_SOS_F",nil,15000],
						["arifle_MX_GL_ACO_F",nil,12500],
						["LMG_Mk200_F",nil,10000],
						["HandGrenade_Stone","Flashbang",170],
						["optic_MRCO",nil,300],
						["optic_DMS",nil,500],
						["optic_Arco",nil,500],
						["optic_Holosight",nil,120],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["30Rnd_65x39_caseless_mag",nil,20],
						["30Rnd_65x39_caseless_mag_Tracer",nil,20],
						["200Rnd_65x39_cased_Box",nil,50],
						["200Rnd_65x39_cased_Box_Tracer",nil,50],
						["20Rnd_762x51_Mag",nil,50],
						["1Rnd_HE_Grenade_shell",nil,100],
						["7Rnd_408_Mag",nil,100],
						["RPG32_F",nil,10000],
						["RPG32_HE_F",nil,10000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,5000],
						["srifle_DMR_01_F",nil,15000],
						["arifle_SDAR_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,1250],
						["hgun_Pistol_heavy_02_F",nil, 1500],
						["hgun_ACPC2_snds_F",nil,1500],
						["optic_ACO_grn",nil,350],
						["optic_Holosight",nil,360],
						["acc_flashlight",nil,100],
						["optic_Hamr",nil,750],
						["6Rnd_45ACP_Cylinder",nil,10],
						["11Rnd_45ACP_Mag",nil,10],
						["9Rnd_45ACP_Mag",nil,10],
						["30Rnd_9x21_Mag",nil,20],
						["20Rnd_556x45_UW_mag",nil,120],
						["30Rnd_556x45_Stanag",nil,30],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,30],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,30],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,30],
						["10Rnd_762x51_Mag",nil,50],
						["30Rnd_65x39_caseless_green",nil,270],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,10000],
						["RPG32_HE_F",nil,10000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,1150],
						["hgun_Pistol_heavy_02_F",nil,1585],
						["hgun_ACPC2_F",nil,1550],
						["hgun_PDW2000_F",nil,3000],
						["optic_ACO_grn_smg",nil,250],
						["V_Rangemaster_belt",nil,490],
						["16Rnd_9x21_Mag",nil,5],
						["9Rnd_45ACP_Mag",nil,5],
						["6Rnd_45ACP_Cylinder",nil,5],
						["30Rnd_9x21_Mag",nil,5]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["arifle_TRG20_F",nil,3000],
						["hgun_Rook40_F",nil,550],
						["hgun_Pistol_heavy_02_F",nil,750],
						["hgun_ACPC2_F",nil,450],
						["hgun_PDW2000_F",nil,950],
						["optic_ACO_grn_smg",nil,95],
						["V_Rangemaster_belt",nil,190],
						["30Rnd_556x45_Stanag",nil,30],
						["16Rnd_9x21_Mag",nil,5],
						["9Rnd_45ACP_Mag",nil,5],
						["6Rnd_45ACP_Cylinder",nil,5],
						["30Rnd_9x21_Mag",nil,5]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Takistan General Store",
			[
				["Binocular",nil,15],
				["ItemGPS",nil,10],
				["ToolKit",nil,25],
				["FirstAidKit",nil,15],
				["NVGoggles",nil,200],
				["Chemlight_red",nil,30],
				["Chemlight_yellow",nil,30],
				["Chemlight_green",nil,30],
				["Chemlight_blue",nil,30]
			]
		];
	};
};
