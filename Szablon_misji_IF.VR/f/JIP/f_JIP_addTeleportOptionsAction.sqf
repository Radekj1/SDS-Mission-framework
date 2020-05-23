// F3 - JIP Add Reinforcement Options Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unit","_textAction"];

// ====================================================================================

// SET KEY VARIABLES

_unit = _this select 0;

// PREVENT THE JIP AI UNITS FROM FOLLOWING THEIR LEADER/MOVING AWAY
//_unit disableAI "move";

// ====================================================================================

// ADD REINFORCEMENT OPTIONS ACTION TO PLAYER ACTION MENU
// We add the action to the player's action menu.

if (_unit == player) then {
	F3_JIP_TeleportAction = player addaction ["<t color='#4256f4'>" + "Teleport do HQ" + "</t>","f\JIP\f_JIP_autoTeleport.sqf",[],6,true,false,"","_target == player"];
};

