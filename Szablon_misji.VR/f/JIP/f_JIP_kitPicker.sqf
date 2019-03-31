#define DLG (uiNamespace getVariable "KitPick_Dlg")
#define COMBO (uiNamespace getVariable "KitPick_Combo")
#define USEBUTTON (uiNamespace getVariable "KitPick_UseBtn")

KitPickInit =
{
    uiNamespace setVariable ["KitPick_Dlg", _this select 0];
    uiNamespace setVariable ["KitPick_Combo", (_this select 0) displayCtrl 1];
    uiNamespace setVariable ["KitPick_UseBtn", (_this select 0) displayCtrl 3];

    USEBUTTON ctrlEnable false;

	//Dowódca Zespołu
	
	
    private "_idx";
	
	_idx = COMBO lbAdd "Oficer/Commander"; COMBO lbSetData [_idx, "co"];
	_idx = COMBO lbAdd "Medyk/Medic"; COMBO lbSetData [_idx, "m"];
	_idx = COMBO lbAdd "RTO"; COMBO lbSetData [_idx, "uav"];
	_idx = COMBO lbAdd "Mechanik/Mechanic"; COMBO lbSetData [_idx, "engm"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "Dowódca oddziału/Squad Leader"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "Medyk/Medic"; COMBO lbSetData [_idx, "m"];
    COMBO lbAdd "----";

    _idx = COMBO lbAdd "Dowódca drużyny/Team Leader"; COMBO lbSetData [_idx, "ftl"];
    _idx = COMBO lbAdd "Strzelec RKM/RMK Rifleman"; COMBO lbSetData [_idx, "ar"];
    _idx = COMBO lbAdd "Amunicyjny RKM/RKM Assistant"; COMBO lbSetData [_idx, "aar"];
    _idx = COMBO lbAdd "Strzelec/Rifleman"; COMBO lbSetData [_idx, "r"];
    COMBO lbAdd "----";
	
	_idx = COMBO lbAdd "Dowódca drużyny/Team Leader"; COMBO lbSetData [_idx, "ftl"];
    _idx = COMBO lbAdd "Strzelec AT/AT Rifleman"; COMBO lbSetData [_idx, "rat"];
    _idx = COMBO lbAdd "Strzelec AT/AT Rifleman"; COMBO lbSetData [_idx, "rat"];
    _idx = COMBO lbAdd "Strzelec/Rifleman"; COMBO lbSetData [_idx, "r"];
    COMBO lbAdd "----";

    _idx = COMBO lbAdd "Dowódca pojazdu/Vehicle Commander"; COMBO lbSetData [_idx, "vc"];
    _idx = COMBO lbAdd "Strzelec/Vehicle Gunner"; COMBO lbSetData [_idx, "vg"];
	_idx = COMBO lbAdd "Kierowca/Vehicle Driver"; COMBO lbSetData [_idx, "vd"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "Pilot"; COMBO lbSetData [_idx, "pp"];
    _idx = COMBO lbAdd "Co-Pilot"; COMBO lbSetData [_idx, "pcc"];
	COMBO lbAdd "----";
	
	_idx = COMBO lbAdd "Pilot Samolotu/Jet Pilot"; COMBO lbSetData [_idx, "ps"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "MMG Dowódca sekcji/ Commander"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "MMG Strzelec/ Gunner"; COMBO lbSetData [_idx, "mmgg"];
    _idx = COMBO lbAdd "MMG Amunicyjny/ Assistant"; COMBO lbSetData [_idx, "mmgag"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "MAT Dowódca sekcji/ Commander"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "MAT Strzelec/ Gunner"; COMBO lbSetData [_idx, "matg"];
    _idx = COMBO lbAdd "MAT Amunicyjny/ Assistant"; COMBO lbSetData [_idx, "matag"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "HMG Dowódca sekcji /Commander"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "HMG Strzelec/ Gunner"; COMBO lbSetData [_idx, "hmgg"];
	_idx = COMBO lbAdd "HMG Amunicyjny/ Assistant"; COMBO lbSetData [_idx, "hmgag"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "HAT Dowódca sekcji/ Commander"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "HAT Strzelec/ Gunner"; COMBO lbSetData [_idx, "hatg"];
    _idx = COMBO lbAdd "HAT Amunicyjny/ Assistant"; COMBO lbSetData [_idx, "hatag"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "AA Dowódca sekcji/ Commander"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "AA Strzelec/ Gunner"; COMBO lbSetData [_idx, "msamg"];
    _idx = COMBO lbAdd "AA Amunicyjny/ Assistant"; COMBO lbSetData [_idx, "msamag"];
	COMBO lbAdd "----";

    _idx = COMBO lbAdd "GMG Dowódca sekcji/ Commander"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "GMG Strzelec/ Gunner"; COMBO lbSetData [_idx, "hsamg"];
    _idx = COMBO lbAdd "GMG Amunicyjny/ Assistant"; COMBO lbSetData [_idx, "hsamag"];
	COMBO lbAdd "----";
	
	_idx = COMBO lbAdd "MTR Dowódca sekcji/ Commander"; COMBO lbSetData [_idx, "dc"];
    _idx = COMBO lbAdd "MTR Strzelec/ Gunner"; COMBO lbSetData [_idx, "mtrg"];
    _idx = COMBO lbAdd "MTR Amunicyjny/ Assistant"; COMBO lbSetData [_idx, "mtrag"];
	COMBO lbAdd "----";
	
	_idx = COMBO lbAdd "SF Dowódca sekcji/ Commander"; COMBO lbSetData [_idx, "divc"];
    _idx = COMBO lbAdd "SF Strzelec AT/ AT Rifleman"; COMBO lbSetData [_idx, "divr"];
    _idx = COMBO lbAdd "SF Saper/ Sapper"; COMBO lbSetData [_idx, "divs"];
    _idx = COMBO lbAdd "SF Medyk/ Medic"; COMBO lbSetData [_idx, "divm"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "Logistyka/Logistics"; COMBO lbSetData [_idx, "eng"];
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
