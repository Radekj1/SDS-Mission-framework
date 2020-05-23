// by ALIAS
// Tutorial: https://www.youtube.com/user/aliascartoons
// nul = [delay_thunder_1,delay_thunder_2,delay_thunder_3,raindrops,storm_debris,local_fog] execVM "ALvolcano\alias_thunderbolt.sqf";

if (!isServer) exitWith {};


_type1_detect	= _this select 0;
_type2_detect	= _this select 1;
_type3_detect	= _this select 2;
_rain_drops		= _this select 3;
_wind_debris	= _this select 4;
_local_fog		= _this select 5;

if (_type1_detect>1) then {
[_type1_detect] spawn {
	_delay1 = _this select 0;

	alias_thunder_1 = true;
	publicVariable "alias_thunder_1";	

	while {true} do {
	if (!alias_thunder_1)then {waitUntil {alias_thunder_1};};
	_rand_pl = [] execVM "f\Tthunder_script\alias_hunt.sqf";
	waitUntil {scriptDone _rand_pl};
	// creeaza obiect pe server 
	_dire	= [2000,-2000] call BIS_fnc_selectRandom;	
	_xx = (getpos hunt_alias select 0)+random _dire;
	_dire	= [2000,-2000] call BIS_fnc_selectRandom;	
	_yy = (getpos hunt_alias select 1)+random _dire;
	_zz = 1000;
	poz_obj_fulger1 = [_xx, _yy, _zz];
	publicVariable "poz_obj_fulger";
	[[[poz_obj_fulger1],"f\Tthunder_script\alias_thunder_one_effect.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;	
	sleep _delay1;
	};
};
};

if (_type2_detect>1) then {
[_type2_detect] spawn {
	_delay2 = _this select 0;

	alias_thunder_2 = true;
	publicVariable "alias_thunder_2";	

	while {true} do {
	if (!alias_thunder_2)then {waitUntil {alias_thunder_2};};	
	_rand_pl = [] execVM "f\Tthunder_script\alias_hunt.sqf";
	waitUntil {scriptDone _rand_pl};
//	poz_f_1 = hunt_alias getRelPos [700+random 1300, random 360];
	poz_f_1 = [hunt_alias,700+random 1300, random 360] call BIS_fnc_relPos;
	publicVariable "poz_f_1";
	[[[poz_f_1],"f\Tthunder_script\alias_thunder_two_effect.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;	
	sleep _delay2;
	waitUntil {alias_thunder_2};	
	};
};
};

if (_type3_detect>1) then {
[_type3_detect] spawn {
	_delay3 = _this select 0;
	alias_thunder_3 = true;
	publicVariable "alias_thunder_3";	
	while {true} do {
	if (!alias_thunder_3)then {waitUntil {alias_thunder_3};};	
//	hint "numai sunet";

	_sound_only = ["t_far_1","t_far_19","t_far_20","t_far_21"] call BIS_fnc_selectRandom;
	
	//_sound_only = ["t_far_1","t_far_3","t_far_4","t_far_5","t_far_6","t_far_8","t_far_9","t_far_10","t_far_15","t_far_18","t_far_19","t_far_20","t_far_21","t_far_22"] call BIS_fnc_selectRandom;
	
	
	playSound _sound_only;
	sleep _delay3;
	waitUntil {alias_thunder_3};	
	};
};
};

if ((_rain_drops)or(_wind_debris)or(_local_fog)) then {

if (_rain_drops) then {alias_rain_drops = true; publicVariable "alias_rain_drops";} else {alias_rain_drops = false; publicVariable "alias_rain_drops";};
if (_wind_debris) then {alias_wind_debris = true; publicVariable "alias_wind_debris";} else {alias_wind_debris = false; publicVariable "alias_wind_debris";};
if (_local_fog) then {alias_local_fog = true; publicVariable "alias_local_fog";} else {alias_local_fog = false; publicVariable "alias_local_fog";};
[[[],"f\Tthunder_script\alias_weather_effect.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;

};