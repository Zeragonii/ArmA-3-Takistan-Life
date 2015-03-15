#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Takistan Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_Rangemaster","Cop Uniform",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,350];
			_ret pushBack ["U_B_HeliPilotCoveralls",nil,750];
			_ret pushBack ["U_B_PilotCoveralls",nil,750];
			_ret pushBack ["U_B_Wetsuit",nil,750];
			_ret pushBack ["U_B_survival_uniform",nil,1250];			
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_worn",nil,550];
			_ret pushBack ["U_B_SpecopsUniform_sgg",nil,750];
			_ret pushBack ["U_B_GhillieSuit",nil,1000];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_HelmetB_plain_mcamo",nil,75];
			_ret pushBack ["H_Beret_blk_POLICE",nil,100];
			_ret pushBack ["H_Booniehat_mcamo",nil,120];
			_ret pushBack ["H_Cap_headphones",nil,120];
			_ret pushBack ["H_MilCap_gry",nil,120];
			_ret pushBack ["H_BandMask_khk",nil,120];
			_ret pushBack ["H_HelmetSpecO_blk",nil,120];
			_ret pushBack ["H_Watchcap_blk",nil,120];
			_ret pushBack ["H_PilotHelmetHeli_B",nil,120];
			_ret pushBack ["H_CrewHelmetHeli_B",nil,120];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_MilCap_mcamo",nil,100];
			_ret pushBack ["H_Shemag_olive_hs",nil,100];
			_ret pushBack ["H_HelmetB_camo",nil,150];
			_ret pushBack ["H_Beret_Colonel",nil,150];
			_ret pushBack ["H_PilotHelmetFighter_B",nil,150];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Diving",nil,75],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_PlateCarrier2_rgr",nil,150];
			_ret pushBack ["V_Chestrig_blk",nil,150];
			_ret pushBack ["V_TacVestIR_blk",nil,150];
			_ret pushBack ["V_TacVest_blk_POLICE",nil,150];
			_ret pushBack ["V_PlateCarrier1_blk",nil,150];
			_ret pushBack ["V_RebreatherB",nil,150];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,3500],
			["B_Carryall_cbr",nil,5000]
		];
	};
};

_ret;