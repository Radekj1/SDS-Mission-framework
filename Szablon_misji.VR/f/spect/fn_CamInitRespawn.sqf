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

if( camInitRespawnNext ) then
{
	diag_log "Respawning as spectator";
	[true] call ace_spectator_fnc_setSpectator;
}
else
{
    diag_log "Respawning JIP";
    [false] call ace_spectator_fnc_setSpectator;
	
    player allowDamage true;
    player setVariable ["ace_medical_allowDamage", true];
    [player, true, "ace_spectator_isSet", side group player] call ace_common_fnc_switchToGroupSide;
    [player, "ace_spectator_isSet"] call ace_common_fnc_unhideUnit;
    [player, "ace_spectator_isSet"] call ace_common_fnc_unmuteUnit;
	
    diag_log "Before JIP";
	if(isNil "fJipPlayerRespawn") then
	{
		fJipPlayerRespawn = compile preprocessFileLineNumbers 'f\JIP\f_JIP_playerRespawn.sqf';
	};
	[_unit,_oldUnit,_respawn] call fJipPlayerRespawn;
    diag_log "After JIP";
	
	waitUntil{(player getVariable ["f_var_assignGear_done", false])};
	
	[] execVM "init.sqf";
    diag_log "After init";
};

camInitRespawnNext = !camInitRespawnNext;
