// by ALIAS
// Tutorial: https://www.youtube.com/user/aliascartoons
// [[[poz_obj_fulger],"ALthunder\alias_thunder_two_effect.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;

if (!hasInterface) exitWith {};

_alias_bolt_2 = _this select 0;

//if ((player distance _alias_bolt_2)>800) then {}; // random sunet sau light //hint str _sound_far_s_l;
_combinatie = ["sunet","lumina","sunet_lumina"] call BIS_fnc_selectRandom;
_poz_obj_fulger_s_l = "Land_HelipadEmpty_F" createVehicleLocal [_alias_bolt_2 select 0,_alias_bolt_2 select 1,800];
_sound_far_s_l = ["t_far_1","t_far_19","t_far_20","t_far_21"] call BIS_fnc_selectRandom;

if ((_combinatie=="sunet_lumina") or (_combinatie=="lumina")) then {
//	hint "LUMINA ON";
	_lum_fulg_s_l = "#lightpoint" createvehiclelocal getPosATL _poz_obj_fulger_s_l;
	_lum_fulg_s_l attachto [_poz_obj_fulger_s_l,[0,0,200]];
	_lum_fulg_s_l setLightDayLight true;
	_lum_fulg_s_l setLightUseFlare false;
	_lum_fulg_s_l setLightFlareSize 0;
	_lum_fulg_s_l setLightFlareMaxDistance 2000;	
	_lum_fulg_s_l setLightAmbient[0.3,0.3,0.6];
	_lum_fulg_s_l setLightColor[0.2,0.2,0.2];

	_lum_fulg_s_l setLightAttenuation [/*start*/ 0, /*constant*/0, /*linear*/ 0, /*quadratic*/ 0, /*hardlimitstart*/0,900];  
	_lum_fulg_s_l setLightIntensity	 200;
	_lum_fulg_s_l setLightBrightness 100+random 50;

	_alias_flicker=floor (1+random 3);
	while {_alias_flicker>0} do {
		sleep 0.1+random 0.1;
		_lum_fulg_s_l setLightBrightness 30+ random 30;
		sleep 0.2;
		_lum_fulg_s_l setLightBrightness 100+random 100;
		_alias_flicker=_alias_flicker-1;
	};
	sleep 0.2;
	_lum_fulg_s_l setLightBrightness 30;
	sleep 0.2;
	_intens_vf = 150+random 50;
	_lum_fulg_s_l setLightBrightness _intens_vf;
	sleep 0.3;

	while {_intens_vf>0} do {
		_intens_vf = _intens_vf-50;
		_lum_fulg_s_l setLightIntensity 0;
		_lum_fulg_s_l setLightBrightness _intens_vf;
		sleep 0.1;
	};	
	_lum_fulg_s_l setLightBrightness 0;
	_lum_fulg_s_l setLightIntensity  0;
	deleteVehicle _lum_fulg_s_l;
};
	sleep 3+random 1;	
if ((_combinatie=="sunet") or (_combinatie=="sunet_lumina"))then {
//	hint "SUNET ON";
	playSound _sound_far_s_l;
};
	deleteVehicle _poz_obj_fulger_s_l;