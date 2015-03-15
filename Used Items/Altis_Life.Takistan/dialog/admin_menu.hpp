class life_admin_menu {
	idd = 2900;
	name= "life_admin_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_adminMenu;";
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.6 - (2 / 250);
		};
	};
	
	class controls {

		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 2901;
			text = "$STR_Admin_Title";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class PlayerList_Admin : Life_RscListBox 
		{
			idc = 2902;
			text = "";
			sizeEx = 0.035;
			//colorBackground[] = {0,0,0,0};
			onLBSelChanged = "[_this] spawn life_fnc_adminQuery";
			
			x = 0.12; y = 0.26;
			w = 0.30; h = 0.4;
		};
		
		class PlayerBInfo : Life_RscStructuredText
		{
			idc = 2903;
			text = "";
			x = 0.42;
			y = 0.25;
			w = 0.35;
			h = 0.6;
		};

		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class AdminID : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_GetID";
			onButtonClick = "[] call life_fnc_admingetID;";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class Compensate : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Compensate";
			onButtonClick = "createDialog ""Life_Admin_Compensate"";";
			x = 0.26 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Spectate : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Spectate";
			onButtonClick = "[] call life_fnc_adminSpectate;";
			x = 0.42 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Teleport : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Teleport";
			onButtonClick = "[] call life_fnc_adminTeleport; hint 'Select where you would like to teleport';";
			x = 0.58 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.88 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class TeleportHere : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_TpHere";
			onButtonClick = "[] call life_fnc_adminTpHere;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.885;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class God : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_God";
			onButtonClick = "[] call life_fnc_adminGodMode;";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.885;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Freeze : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Freeze";
			onButtonClick = "[] call life_fnc_adminFreeze;";
			x = 0.26 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.885;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Markers : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Markers";
			onButtonClick = "[] spawn life_fnc_adminMarkers;";
			x = 0.42 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.885;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Debug : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Debug";
			onButtonClick = "[] spawn life_fnc_adminDebugCon;";
			x = 0.58 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.885;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Unrestrain : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Unrestrain";
			onButtonClick = "player setVariable['restrained',FALSE,TRUE]; hint 'Unrestrained';";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.89 + (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class SuperPowers : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_SuperPowers";
			onButtonClick = "removeAllActions player; player allowDamage false; hint 'Super Powers enabled!'; _action = player addAction ['Leap', {_speed = 10; _veh = vehicle player; _vel = velocity _veh; _dir = direction _veh; _veh setVelocity[(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (30)]}]; _action_2 = player addAction ['Dive', {_speed = 50; _veh = vehicle player; _vel = velocity _veh; _dir = direction _veh; _veh setVelocity[(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), ( -20)]}]; _action_3 = player addAction ['Sonic Boom', {_speed = 500; _veh = vehicle player;_vel = velocity _veh; _dir = direction _veh; _veh setVelocity[(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (20)]}]; _action_4 = player addAction ['Orbital Launch', {_speed = 0; _veh = vehicle player; _vel = velocity _veh; _dir = direction _veh; _veh setVelocity[(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (500)]}];_action_5 = player addAction ['Meteor Smash', {_speed = 0; _veh = vehicle player; _vel = velocity _veh; _dir = direction _veh; _veh setVelocity[(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (-500)]}];_action_6 = player addAction ['Kryptonite', {removeAllActions player; player allowDamage true; hint 'You lost your powers and godmode is off!'}];";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.89 + (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		class Party : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Admin_Party";
			onButtonClick = "_smoke = 'SmokeShellGreen' createVehicle position player;if (vehicle player != player) then {_smoke attachTo [vehicle player, [-0.6,-1,0]];} else {_smoke attachTo [player, [0,-0.1,1.5]];};";
			x = 0.26 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.89 + (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};