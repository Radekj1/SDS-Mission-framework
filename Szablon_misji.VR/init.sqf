//====================================================================================
//====================================================================================
//S.D.S - Kompatybilność z HC

[true,30,false,true,30,3,true,[]] execVM "WerthlesHeadless.sqf";	//Zakomentować na PvP

_spawnUnits = {
	//DAC spawning
	[] execVM "DAC\DAC_Config_Creator.sqf";			//Zakomentować na PvP
	True
};
//check if HC1 is present
HC1Present = if(isNil "HC1") then{False} else{True};

//spawn units on HC1 if present
if(HC1Present && isMultiplayer) then{
	if(!isServer && !hasInterface) then{
		diag_log "HC: Spawning AI on the HC";
		[] call _spawnUnits;
	};
}
//spawn units on server
else{
	if(isServer) then{
		diag_log "HC: Spawning AI the SERVER";
		[] call _spawnUnits;
	};
};

// ====================================================================================
// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================
// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSentences false;

// ====================================================================================
// F3 - MapClick Teleport
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_mapClickTeleport_Uses = 0;					// How often the teleport action can be used. 0 = infinite usage.
// f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
// f_var_mapClickTeleport_GroupTeleport = false; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
// f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
// [] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================
// Respanw on Nimitz
// Ten kod spowoduje, że gracze odrodzą się na lotiskowcu a nie pod nim (więcej info: https://www.youtube.com/watch?v=e47f4EYNVbk )

// "respawn_west" setMarkerPosLocal [markerPos "respawn_West" select 0, markerPos "respawn_West" select 1, 18];

// ====================================================================================
// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================
// F3 - F3 Folk ARPS Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================
// F3 - Buddy Team Colours
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// ====================================================================================
// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================
// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================
// F3 - F3 Mission Conditions Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setMissionConditions = [] execVM "f\missionConditions\f_setMissionConditions.sqf";

// ====================================================================================
// F3 - F3 Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================
//S.D.S - Zmiana setfrennd dla Indfor - Blufor
[] execVM "f\common\set_friend.sqf";
	
// ====================================================================================
// F3 - Automatic Body Removal
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

 f_var_removeBodyDelay = 180;
 f_var_removeBodyDistance = 500;
 f_var_doNotRemoveBodies = [];
 [] execVM "f\removeBody\f_addRemoveBodyEH.sqf";

// ====================================================================================
// F3 - Authorised Crew Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2],false] call f_fnc_authorisedCrewCheck}];
// VehicleName addEventhandler ["GetIn", {[_this,["UnitClass1","UnitClass2"],false] call f_fnc_authorisedCrewCheck}];

// ====================================================================================
// F3 - Casualties Cap
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [[GroupName or SIDE],100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";
// [[GroupName or SIDE],100,{code}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// BLUFOR > NATO
// [BLUFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// ====================================================================================
// F3 - AI Skill Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_civAI = independent; 		// Optional: The civilian AI will use this side's settings
// [] execVM "f\setAISKill\f_setAISkill.sqf";

// ====================================================================================
// F3 - Assign Gear AI
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [] execVM "f\assignGear\f_assignGear_AI.sqf";

// ====================================================================================
// F3 - Name Tags
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [] execVM "f\nametag\f_nametags.sqf";

// ====================================================================================
// F3 - Group E&E Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [side,ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";
// [["Grp1","Grp2"],ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";

// ====================================================================================
// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================
// F3 - Loadout Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================
// F3 - Join Group Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================
// F3 - Mission Timer/Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================
// F3 - JIP setup
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_JIP_FirstMenu = false;		// Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false;		// Remove the old corpse of respawning players?
f_var_JIP_GearMenu = true;			// Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================

// F3 - Radio Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\radios\radio_init.sqf";

// ====================================================================================
//S.D.S - Dodanie safezone na respie
[] execVM "f\Safezone\Safezone.sqf";

// ====================================================================================
//S.D.S - Dodanie zabezpieczenia po respie
[]  execVM "f\Safezone\safety_init.sqf";

// ====================================================================================
//S.D.S - Dodanie cleanup na bazie
[] execVM "f\Safezone\cleanup.sqf";

// ====================================================================================
//S.D.S - >>>>> FLARY FIX<<<<<
if ((!isServer) && (player != player)) then {waitUntil {player == player};};

al_flare_intensity = 25;
publicvariable "al_flare_intensity";
al_flare_range = 450;
publicvariable "al_flare_range";

player addEventHandler ["Fired",{private ["_al_flare"]; _al_flare = _this select 6;[[[_al_flare],"f\flare_fix\al_flare_enhance.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;}];
// ====================================================================================