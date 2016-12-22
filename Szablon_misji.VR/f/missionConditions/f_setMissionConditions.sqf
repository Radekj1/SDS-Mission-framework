// F3 - Mission Conditions
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SCRIPT SHOULD ONLY RUN ON SERVER

if (!isServer) exitWith {};

// ====================================================================================

// SET WEATHER
// Set the mission weather according to params. If the fog and wind override params
// are set, then prevent setWeather from setting them and set them manually instead.

[f_param_weather,f_param_fog == 4,f_param_wind == 4] call f_fnc_setWeather;

if (f_param_snow != 0) then {
	
	[[[player],"f\missionConditions\fn_SetSnow.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
	
	/*
		_name_terr = worldName;

		if (_name_terr=="Altis" or _name_terr=="Stratis" or _name_terr=="Tanoa") then {
			terrain_type_vanilla = true;
			publicVariable "terrain_type_vanilla";
		} else {
			terrain_type_vanilla = false;
			publicVariable "terrain_type_vanilla";
		};
		
		[[[player],"f\missionConditions\fn_SetSnow.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
		{[[[_x],"f\missionConditions\snow_breath.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;sleep 0.5} forEach allUnits;	
	*/
};

if (f_param_fog != 4) then {
	[f_param_fog] call f_fnc_setFog;
};

if (f_param_wind != 4) then {
	[f_param_wind] call f_fnc_setWind;
};

// ====================================================================================