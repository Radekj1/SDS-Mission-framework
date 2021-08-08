// F3 - F3 Folk ARPS Assign Gear
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// Prevent BIS Randomisation System
// BIS created a system for randomisation unit loadouts, that may overwrite the changes made by this script, this will fix such system.

_unit setVariable ["BIS_enableRandomization", false];

// ====================================================================================

// lets strip him down to the basic
removeUniform _unit;
removeHeadgear _unit;
removeVest _unit;

// Assign default clothes
_uniform = _baseUniform;
_helmet = _baseHelmet;
_rig = _mediumRig;
_glasses = _baseGlasses;

// Flip through unit to assign specialized uniforms

// COY Commander/PLT Commander
if (_typeOfUnit in _hq) then {
	_helmet = _hqHelmet;
	_uniform = _hqUniform;
	_rig = _hqRig;
	_glasses = _hqGlasses;
};
// TL
if (_typeOfUnit in _leader) then {
	_rig = _leaderRig;
};

// Medic
if (_typeOfUnit in _medR) then {
	_helmet = _medHelmet;
	_uniform = _medUniform;
	_rig = _medRig;
	_glasses = _medGlasses;
};

// Enginer
if (_typeOfUnit in _engR) then {
	_helmet = _engHelmet;
	_uniform = _engUniform;
	_rig = _engRig;
	_glasses = _engGlasses;
};

// Light
if (_typeOfUnit in _light) then {
	_rig = _lightRig;
};

// MG
if (_typeOfUnit in _mg) then {
	_rig = _mgRig;
};

// DM
if (_typeOfUnit in _dm) then {
	_rig = _dmRig;
};

// GL
if (_typeOfUnit in _gl) then {
	_rig = _glRig;
};

// Pilot
if (_typeOfUnit in _pilot) then {
	_helmet = _pilotHelmet;
	_uniform = _pilotUniform;
	_rig = _pilotRig;
	_glasses = _pilotGlasses;
};

// Jet Pilot
if (_typeOfUnit in _JPilotR) then {
	_helmet = _JPilotHelmet;
	_uniform = _JPilotUniform;
	_rig = _JPilotRig;
	_glasses = _JPilotGlasses;
};

// Crew
if (_typeOfUnit in _crew) then {
	_helmet = _crewHelmet;
	_uniform = _crewUniform;
	_rig = _crewRig;
	_glasses = _crewGlasses;
};

// Diver
if (_typeOfUnit in _diver) then {
	_helmet = _diverHelmet;
	_uniform = _diverUniform;
	_rig = _diverRig;
	_glasses = _diverGlasses;
};

// Ghillie
if (_typeOfUnit in _ghillie) then {
	_helmet = _ghillieHelmet;
	_uniform = _ghillieUniform;
	_rig = _ghillieRig;
	_glasses = _ghillieGlasses;
};

// Spec Op
if (_typeOfUnit in _specOp) then {
	_helmet = _SFHelmet;
	_uniform = _SFUniform;
	_rig = _SFRig;
	_glasses = _SFGlasses;
};

// Add clothing items to unit
if(count _uniform > 0) then
{
	_unit forceAddUniform (_uniform call BIS_fnc_selectRandom);
};

if(count _helmet > 0) then
{
	_unit addHeadgear (_helmet call BIS_fnc_selectRandom);
};

if(count _rig > 0) then
{
	_unit addVest (_rig call BIS_fnc_selectRandom);
};

if(count _glasses > 0) then
{
	_unit addGoggles (_glasses call BIS_fnc_selectRandom);
};
