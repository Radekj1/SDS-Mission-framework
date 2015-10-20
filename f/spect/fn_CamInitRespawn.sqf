private["_unit","_oldUnit","_respawn"];
_unit         = _this select 0;
_oldUnit      = _this select 1;
_respawn      = _this select 2;

if (isDedicated) exitWith{};

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};
if (isNull _oldUnit) exitWith {};

// check variables
if (isNil "camInitRespawnNext") then
{
    camInitRespawnNext = true;
};

if(camInitRespawnNext) then
{
    diag_log "Respawning camera";
    camInitRespawnNext = false;
	oldPlayerSide = side player;
	oldPlayerFaction = faction player;
	oldPlayerGroup = group player;
	oldPlayerAssignGear = _unit getVariable "f_var_assignGear";

	[_unit,_oldUnit,_respawn,0,true] spawn F_fnc_CamInit;
}
else
{
    diag_log "Respawning JIP";
    camInitRespawnNext = true;

	[_this,_oldUnit,_respawn] spawn {
	    _respawnBody = "";
		_respawnPos  = [0,0,5];
	    switch (oldPlayerFaction) do
		{
		  case "BLU_F":    { _respawnBody = "B_Soldier_02_f"; _respawnPos = getMarkerPos "respawn_west"; };
		  case "BLU_G_F":  { _respawnBody = "B_G_Soldier_F";  _respawnPos = getMarkerPos "respawn_west"; };
		  case "OPF_F":    { _respawnBody = "O_Soldier_F";    _respawnPos = getMarkerPos "respawn_east"; };
		  case "OPF_G_F":  { _respawnBody = "O_G_Soldier_F";  _respawnPos = getMarkerPos "respawn_east"; };
		  case "IND_F":    { _respawnBody = "I_Soldier_02_F"; _respawnPos = getMarkerPos "respawn_guerrila"; };
		  case "IND_G_F":  { _respawnBody = "I_G_Soldier_F";  _respawnPos = getMarkerPos "respawn_guerrila"; };
		  case "CIV_F":    { _respawnBody = "C_man_1";        _respawnPos = getMarkerPos "respawn_civ";};
		};
		_xUnit = oldPlayerGroup createUnit [_respawnBody, _respawnPos, [], 0, "FORM"];
		_xUnit allowDamage true;
		_xUnit hideObjectGlobal false;
		_xUnit enableSimulationGlobal true;
		_xUnit setPos _respawnPos;
        _xUnit setVariable ["f_var_assignGear",oldPlayerAssignGear,true];
		selectPlayer _xUnit;
		waituntil{player == _xUnit};
		player switchCamera "INTERNAL";
		_respawnPositions = (oldPlayerSide call bis_fnc_getRespawnMarkers) + (player call bis_fnc_getRespawnPositions);
		if (count _respawnPositions > 0) then {
			_respawnPos = _respawnPositions call bis_fnc_selectrandom;
		};
		[player,_respawnPos] call bis_fnc_moveToRespawnPosition;
		
	
		if(isNil "fJipPlayerRespawn") then
		{
			fJipPlayerRespawn = compile preprocessFileLineNumbers 'f\JIP\f_JIP_playerRespawn.sqf';
		};
		[_xUnit,_this select 1,_this select 2] call fJipPlayerRespawn;
	};
};
