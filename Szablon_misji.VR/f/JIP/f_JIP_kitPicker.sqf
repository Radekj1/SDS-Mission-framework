#define DLG (uiNamespace getVariable "KitPick_Dlg")
#define COMBO (uiNamespace getVariable "KitPick_Combo")
#define USEBUTTON (uiNamespace getVariable "KitPick_UseBtn")

KitPickInit =
{
    uiNamespace setVariable ["KitPick_Dlg", _this select 0];
    uiNamespace setVariable ["KitPick_Combo", (_this select 0) displayCtrl 1];
    uiNamespace setVariable ["KitPick_UseBtn", (_this select 0) displayCtrl 3];

    USEBUTTON ctrlEnable false;	
	
    private "_idx";
	
	_idx = COMBO lbAdd "Commander"; COMBO lbSetData [_idx, "co"];
	_idx = COMBO lbAdd "Medic"; COMBO lbSetData [_idx, "m"];
	_idx = COMBO lbAdd "RTO"; COMBO lbSetData [_idx, "rto"];
	_idx = COMBO lbAdd "Mechanic"; COMBO lbSetData [_idx, "engm"];
    _idx = COMBO lbAdd "UAV"; COMBO lbSetData [_idx, "uav"];

	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "Squad Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "Medic"; COMBO lbSetData [_idx, "m"];
    COMBO lbAdd "----";

    _idx = COMBO lbAdd "Team Leader"; COMBO lbSetData [_idx, "ftl"];
    _idx = COMBO lbAdd "Automatic Rifleman"; COMBO lbSetData [_idx, "ar"];
    _idx = COMBO lbAdd "AR Assistant"; COMBO lbSetData [_idx, "aar"];
    _idx = COMBO lbAdd "Marksman"; COMBO lbSetData [_idx, "dm"];
    _idx = COMBO lbAdd "Rifleman AT"; COMBO lbSetData [_idx, "rat"];
    _idx = COMBO lbAdd "Grenadier"; COMBO lbSetData [_idx, "gren"];
    _idx = COMBO lbAdd "Rifleman"; COMBO lbSetData [_idx, "r"];
    COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "MMG Team Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "MMG Gunner"; COMBO lbSetData [_idx, "mmgg"];
    _idx = COMBO lbAdd "MMG Assistant"; COMBO lbSetData [_idx, "mmgag"];
    _idx = COMBO lbAdd "MMG Ammo Bearer"; COMBO lbSetData [_idx, "mmgab"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "MAT Team Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "MAT Gunner"; COMBO lbSetData [_idx, "matg"];
    _idx = COMBO lbAdd "MAT Assistant"; COMBO lbSetData [_idx, "matag"];
    _idx = COMBO lbAdd "MAT Ammo Bearer"; COMBO lbSetData [_idx, "matab"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "HMG Team Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "HMG Gunner"; COMBO lbSetData [_idx, "hmgg"];
	_idx = COMBO lbAdd "HMG Assistant"; COMBO lbSetData [_idx, "hmgag"];
    _idx = COMBO lbAdd "HMG Ammo Bearer"; COMBO lbSetData [_idx, "hmgab"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "HAT Team Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "HAT Gunner"; COMBO lbSetData [_idx, "hatg"];
    _idx = COMBO lbAdd "HAT Assistant"; COMBO lbSetData [_idx, "hatag"];
    _idx = COMBO lbAdd "HAT Ammo Bearer"; COMBO lbSetData [_idx, "hatab"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "AA Team Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "AA Gunner"; COMBO lbSetData [_idx, "msamg"];
    _idx = COMBO lbAdd "AA Assistant"; COMBO lbSetData [_idx, "msamag"];
    _idx = COMBO lbAdd "AA Ammo Bearer"; COMBO lbSetData [_idx, "msamab"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "GMG Team Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "GMG Gunner"; COMBO lbSetData [_idx, "gmgg"];
    _idx = COMBO lbAdd "GMG Assistant"; COMBO lbSetData [_idx, "gmgag"];
    _idx = COMBO lbAdd "GMG Ammo Bearer"; COMBO lbSetData [_idx, "gmgab"];
	COMBO lbAdd "----";
	
	_idx = COMBO lbAdd "MTR Team Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "MTR Gunner"; COMBO lbSetData [_idx, "mtrg"];
    _idx = COMBO lbAdd "MTR Assistant"; COMBO lbSetData [_idx, "mtrag"];
    _idx = COMBO lbAdd "MTR Ammo Bearer"; COMBO lbSetData [_idx, "mtrab"];
	COMBO lbAdd "----";
	
	_idx = COMBO lbAdd "Recon TL"; COMBO lbSetData [_idx, "sftl"];
    _idx = COMBO lbAdd "Recon AT"; COMBO lbSetData [_idx, "sfat"];
    _idx = COMBO lbAdd "Recon Sapper"; COMBO lbSetData [_idx, "sfs"];
    _idx = COMBO lbAdd "Recon Medic"; COMBO lbSetData [_idx, "sfm"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "Vehicle Commander"; COMBO lbSetData [_idx, "vc"];
    _idx = COMBO lbAdd "Vehicle Gunner"; COMBO lbSetData [_idx, "vg"];
	_idx = COMBO lbAdd "Vehicle Driver"; COMBO lbSetData [_idx, "vd"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "Pilot"; COMBO lbSetData [_idx, "pp"];
    _idx = COMBO lbAdd "Co-Pilot"; COMBO lbSetData [_idx, "pcc"];
	COMBO lbAdd "----";
	
	_idx = COMBO lbAdd "Jet Pilot"; COMBO lbSetData [_idx, "ps"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "Logistics"; COMBO lbSetData [_idx, "eng"];
    _idx = COMBO lbAdd "EOD UAV"; COMBO lbSetData [_idx, "enguav"];
    _idx = COMBO lbAdd "Doctor"; COMBO lbSetData [_idx, "doc"];
	COMBO lbAdd "----";
	
	
	
    _sel = player getVariable "KitPicker_Selection";
    if (!isNil '_sel') then
    {
        COMBO lbSetCurSel _sel;
    };
};

KitPicker_Pick =
{
    private "_idx";
    _idx = lbCurSel COMBO;
    if (_idx < 0) exitWith {};

    _data = COMBO lbData _idx;
    if (_data == "") exitWith {};

    closeDialog 0;
    player setVariable ["f_var_JIP_loadout", _data];
    player setVariable ["KitPicker_Selection", _idx];
    f_var_JIP_state = 3;
};

KitPicker_OnSelChanged =
{
    private "_idx";
    _idx = lbCurSel COMBO;
    if (_idx < 0) exitWith
    {
        USEBUTTON ctrlEnable false;
    };

    _data = COMBO lbData _idx;
    if (_data == "") exitWith
    {
        USEBUTTON ctrlEnable false;
    };
    USEBUTTON ctrlEnable true;
};