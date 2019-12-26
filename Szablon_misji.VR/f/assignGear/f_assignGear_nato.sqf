// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

	1. NATO
	2. BAF (MTP)
	3. BAF (WD)

*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Blufor;
// ====================================================================================

//Definicje przedmiotów

// Sprzet medyczny
_personalAidKit = "ACE_personalAidKit";		// Zestaw pierwszej pomocy
_surgicalKit = "ACE_surgicalKit";			// Zestaw do szycia ran
_AED = "KAT_X_AED";							// AED from KAT
//_AED = "adv_aceCPR_AED";					// AED from ACE
_splint = "adv_aceSplint_splint";			// Szyny do usztwniania

_tubeOld = "KAT_guedel";					//
_tubeNew = "KAT_larynx";					//

_bandage = "ACE_fieldDressing";				// Ogólny bandaż dla piechoty
_bandage_elastic = "ACE_elasticBandage";	// Bandaż elastyczny
_bandage_packing = "ACE_packingBandage";	//
_bandage_quikclot = "ACE_quikclot";			// Opatrunek "QuikClot"
_tourniquet ="ACE_tourniquet";				// Opaska uciskowa

_epinephrine = "ACE_epinephrine";			// Epinefryna (zwiększa tętno)
_morphine = "ACE_morphine";					// Morfina (niweluje ból, rozrzedza krew)
_adenosine = "ACE_adenosine";				// Adenozyna (obniża tętno)
_atropine = "ACE_atropine";					// Atropina (obniża tętno)

//KAT Blood
_blood_s = "KAT_bloodIV_O_250";				// Blood 200 ml
_blood_m = "KAT_bloodIV_O_500";				// Blood 500 ml
_blood_b = "KAT_bloodIV_O";					// Blood 1000 ml

/* ACE Blood
_blood_s = "ACE_bloodIV_250";				// Blood 200 ml
_blood_m = "ACE_bloodIV_500";				// Blood 500 ml
_blood_b = "ACE_bloodIV";					// Blood 1000 ml
*/
_plasma_s = "ACE_plasmaIV_250";				// Plasma 200 ml
_plasma_m = "ACE_plasmaIV_500";				// Plasma 500 ml
_plasma_b = "ACE_plasmaIV";					// Plasma 1000 ml

_saline_s = "ACE_salineIV_250";				// Saline 200 ml
_saline_m = "ACE_salineIV_500";				// Saline 500 ml
_saline_b = "ACE_salineIV";					// Saline 1000 ml

_firstaid = "FirstAidKit";
_medkit = "Medikit";

//Radia ACRE2
_radioSR = "ACRE_PRC343";
_radioMR = "ACRE_PRC152";
_radioLR = "ACRE_PRC77";

//Przydatne rzeczy
_earplugs = "ACE_EarPlugs";
_IRstrobe = "ACE_IR_Strobe_Item";
_latarka = "ACE_Flashlight_XL50";
_maptools = "ACE_MapTools";
_lornetkaAM = "ACE_Vector";
_lornetkaFTL = "Binocular";
_lornetkaRTO = "UK3CB_BAF_Soflam_Laserdesignator";
_GPS = "ACE_microDAGR";
_handcuffs = "ACE_CableTie";
_worek = "ACE_bodyBag";
_huntIR = "ACE_HuntIR_M203";
_huntIR_tab = "ACE_HuntIR_monitor";

// Flary ręczne
_flarewhite = "ACE_HandFlare_White";
_flarered = "ACE_HandFlare_Red";
_flareyellow = "ACE_HandFlare_Yellow";
_flaregreen = "ACE_HandFlare_Green";

// Świetliki
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

//Granaty dymne
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadered = "SmokeShellRed";

// Granaty ręczne
_grenade = "HandGrenade";
_mgrenade = "ACE_M84";

// Granaty dymne do granatnika
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flary do granatnika
_glflarewhite = "CUP_1Rnd_StarFlare_White_M203";
_glflarered = "CUP_1Rnd_StarFlare_Red_M203";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "CUP_1Rnd_StarFlare_Green_M203";

//Przedmioty w skrzyniach
_satche_small = "ClaymoreDirectionalMine_Remote_Mag";
_satche_big = "DemoCharge_Remote_Mag";
_satche_extra_big = "SatchelCharge_Remote_Mag";
_toolkit = "ToolKit";
_zapalnik = "ACE_Clacker";
_zapalnik_b = "ACE_M26_Clacker";
_n_rozbraja = "ACE_DefusalKit";
_saperka = "ACE_EntrenchingTool";
_mlotek = "ACE_Fortify";
_wirecutter = "ACE_wirecutter";

// Mechanicy/saperzy
_ATmine = "ATMine_Range_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";
_mineDetector = "ACE_VMM3";

// Noktowizja
_nvg = "NVGoggles";

// Terminal UAV
_uavterminal = "B_UavTerminal";	  // Dla BLUFORU musi być terminal BLUFORU, innej frakcji nie zadziała

//Konstruktor BUILDERA
Builder = {	
	_backpack = {
		_typeofBackPack = _this select 0;
		_loadout = f_param_backpacks;
		if (count _this > 1) then {_loadout = _this select 1;};
		switch (_typeofBackPack) do
		{
			#include "f_assignGear_nato_b.sqf";
		};
	};
// SETUP CRATE
	_crate = {
		_typeofCrate = _this select 0;
		switch (_typeofCrate) do
		{
			#include "f_assignGear_crate.sqf";
		};
	};
// WYWOŁANIE BUILDERA
		#include "f_assignGear_nato_builder.sqf";
};	

//Dodanie wyposażenia medycznego	
Medical = {
	for "_p" from 1 to 8 do {_unit addItem _bandage;};		// Dodanie 8 sztuk bandaży
	_unit addItem _morphine;		// Dodanie morfiny
	_unit addItem _epinephrine;		// Dodanie epinefryny	
	_unit linkItem "ItemMap";		// Dodanie mapy
	_unit linkItem "ItemCompass";	// Dodanie kompsu
	_unit addItem _radioSR;			// Dodanie radia
	_unit linkItem "ItemWatch";		// Dodanie zegarka
	_unit addItem _earplugs;		// Dodaje zatyczki do uszy
	_unit addItem _latarka;			// Latarka na mape
};

//Nocne wyposażenie oparte na noktowizji, laserach, flarach
Night_Eq_NVG = {
	_loadout_night_day = f_param_night_day_wyp;
		
	if (_loadout_night_day == 0) then {
		if(_typeofUnit != "ps") then {
			_unit linkItem _nvg;			// Dodanie noktowizji
			_unit addItem _IRstrobe;		// Znacznik IR (doczepiany)
			_unit addItem _IRstrobe;		
			(unitBackpack _unit) addItemCargoGlobal [_chemblue,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarered,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarewhite,3];
		};
		
		if (_typeofUnit == "dc" || _typeofUnit == "co" || _typeofUnit == "ftl" || _typeofUnit == "uav") then {
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarewhite,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarered,4];
		};
		
		if (_typeofUnit == "pp" || _typeofUnit == "ps" || _typeofUnit == "pcc" || _typeofUnit == "pc" || _typeofUnit == "divc" || _typeofUnit == "divm" || _typeofUnit == "divs" || _typeofUnit == "divr") then {
			_unit linkItem _nvg;			// Dodanie noktowizji	
		};
	};
};

//Nocne wyposażenie oparte na latarkach, flarach, lightstick-ach
Night_Eq_No_NVG = {
	_loadout_night_day = f_param_night_day_wyp;
		
	if (_loadout_night_day == 0) then {
		if(_typeofUnit != "ps") then {
			_unit addItem _IRstrobe;		// Znacznik IR (doczepiany)
			_unit addItem _IRstrobe;		
			(unitBackpack _unit) addItemCargoGlobal [_chemblue,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarered,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarewhite,3];
		};
		
		if (_typeofUnit == "dc" || _typeofUnit == "co" || _typeofUnit == "ftl" || _typeofUnit == "uav") then {
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarewhite,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarered,4];
		};
		
		if (_typeofUnit == "pp" || _typeofUnit == "ps" || _typeofUnit == "pcc" || _typeofUnit == "pc" || _typeofUnit == "divc" || _typeofUnit == "divm" || _typeofUnit == "divs" || _typeofUnit == "divr") then {
			_unit linkItem _nvg;			// Dodanie noktowizji	
		};
	};
};
	

// ====================================================================================

switch (_loadout_faction_player) do
{
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//NATO
	case 1: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_attach1,_scope1];		//For night
} 
else {
	_attachments = [_scope1];		//For day
};

/*
[] = no addons will be added
[_attach1,_scope1] = will add included addons
false = will not change anything, so if weapon by default have scope it will stay
*/

// ====================================================================================

// Secondary weapon attachemnts
_hg_silencer1 = "muzzle_snds_acp";
_hg_attach1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";
_hg_attachments= [_hg_attach1];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "arifle_MX_F";
_riflemag = "30Rnd_65x39_caseless_mag";
_riflemag_tr = "30Rnd_65x39_caseless_mag_Tracer";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "arifle_MXC_F";
_carbinemag = "30Rnd_65x39_caseless_mag";
_carbinemag_tr = "30Rnd_65x39_caseless_mag_Tracer";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "SMG_03C_TR_khaki";
_smgmag = "50Rnd_570x28_SMG_03";
_smgmag_tr = "50Rnd_570x28_SMG_03";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "arifle_MX_GL_F";
_glriflemag = "30Rnd_65x39_caseless_mag";
_glriflemag_tr = "30Rnd_65x39_caseless_mag_Tracer";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "hgun_Pistol_heavy_01_F";
_pistolmag = "11Rnd_45ACP_Mag";

/*
// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";

_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";

_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";
*/

// ====================================================================================

// Equipment for special clases

// Light machinegun
_AR = "arifle_MX_SW_F";
_ARmag = "100Rnd_65x39_caseless_mag";
_ARmag_tr = "100Rnd_65x39_caseless_mag_Tracer";

// Medium machinegun
_MMG = "MMG_02_sand_F";
_MMGmag = "130Rnd_338_Mag";
_MMGmag_tr = "ACE_130Rnd_338_Mag_green";

// Marksman
_DMrifle = "srifle_EBR_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Light AT
_RAT = "launch_NLAW_F";
_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "launch_MRAWS_sand_F";
_MATmag1 = "MRAWS_HEAT_F";
_MATmag2 = "MRAWS_HE_F";
//_MAT_sight = "";
//_MATsptr = "";

// Surface-air launcher
_SAM = "launch_B_Titan_F";
_SAMmag = "Titan_AA";

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = true;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "srifle_LRR_F";
_SNrifleMag = "7Rnd_408_Mag";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_Kitbag_mcamo";
_bagmedium = "B_Carryall_mcamo";
_baglarge =  "B_Bergen_mcamo_F";

_bagSupSmall = "B_Kitbag_cbr";
_bagSupMedium = "B_Carryall_cbr";
_bagSupLarge =  "B_Bergen_mcamo_F";

_bagMs = "B_Kitbag_rgr";	//Backpack for medic
_bagMm = "B_Carryall_oli";	//Backpack for medic
_bagMl = "B_Bergen_mcamo_F";	//Backpack for medic

_bagRadio = "B_RadioBag_01_mtp_F";
_bagTL = "B_FieldPack_blk";

_bagENGs = "B_AssaultPack_blk";
_bagENGm = "B_FieldPack_blk";
_bagENGl = "B_TacticalPack_blk";

_bagMAT = "B_Bergen_mcamo_F";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "B_HMG_01_weapon_F";					// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "B_GMG_01_weapon_F";					// used by GMG gunner
_baggmgag = "B_HMG_01_support_F";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_vest"];
_baseHelmet = ["H_HelmetB", "H_HelmetB_camo", "H_HelmetB_sand"];
_baseGlasses = [];

// Kamizelki
_slRig = ["V_PlateCarrierGL_blk"];
_engRig = ["V_PlateCarrierSpec_blk"];
_lightRig = ["V_PlateCarrier1_blk"];
_mediumRig = ["V_PlateCarrier2_blk"];
_heavyRig = ["V_PlateCarrierSpec_blk"];

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_slR = ["co", "dc", "ftl"];
_medR = ["m"];
_engR = ["eng","engm"];
_light = ["aar","mmgag","matag","hmgg","hmgag","hatag","msamag"];
_heavy =  ["ar","mmgg"];	//Will be used for MG/MMG gunners
_pilot = ["pp","pcc","pc"];
_JPilotR = ["ps"];
_crew = ["vc","vg","vd"];
_diver = ["divc","divr","divs","divm"];
_sfR = ["sftl","sfm","sfat","sfs"];
_ghillie = ["sn","sp"];

//
_medUniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_vest"];
_medHelmet = ["H_HelmetB", "H_HelmetB_camo", "H_HelmetB_sand"];
_medRig = ["V_TacVest_blk"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["U_B_CombatUniform_mcam_tshirt"];
_crewHelmet = ["H_HelmetCrew_B"];
_crewRig = ["V_Chestrig_blk"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["U_B_CTRG_Soldier_F"];
_SFHelmet = ["H_HelmetB_TI_tna_F"];
_SFRig = ["V_PlateCarrier2_rgr_noflag_F"];
_SFGlasses = ["G_Balaclava_TI_G_tna_F"];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_B_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);	// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

// ====================================================================================
	// Add medical qeuipment to eatch unit (player)	
	call Medical;
	
  };
  
// ====================================================================================
	//Call builder script
	call Builder;
	
	//Add night equipment
	call Night_Eq_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//BAF (MTP)
	case 2: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
_attach3 = "UK3CB_BAF_LLM_Flashlight_Black";				// Laser + Flashlight

_silencer1 = "UK3CB_BAF_Silencer_L85";			// Silencer for basic weapon
_silencer2 = "UK3CB_BAF_SFFH";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhsusf_acc_T1_high";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "UK3CB_underbarrel_acc_afg";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_attach3,_scope1,_bipod1];		//For night
} 
else {
	_attachments = [_attach3,_scope1,_bipod1];		//For day
};

/*
[] = no addons will be added
[_attach1,_scope1] = will add included addons
false = will not change anything, so if weapon by default have scope it will stay
*/

// ====================================================================================

// Secondary weapon attachemnts
_hg_silencer1 = "muzzle_snds_L";
_hg_attach1 = "UK3CB_BAF_Flashlight_L131A1";
_hg_scope1 = "optic_MRD";
_hg_attachments= [_hg_attach1];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "UK3CB_BAF_L85A3";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "UK3CB_BAF_L22A2";
_carbinemag = "UK3CB_BAF_556_30Rnd";
_carbinemag_tr = "UK3CB_BAF_556_30Rnd_T";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_BAF_L91A1";
_smgmag = "UK3CB_BAF_9_30Rnd";
_smgmag_tr = "UK3CB_BAF_9_30Rnd";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "UK3CB_BAF_L85A3_UGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "UK3CB_BAF_L131A1";
_pistolmag = "UK3CB_BAF_9_17Rnd";

/*
// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";

_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";

_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";
*/

// ====================================================================================

// Equipment for special clases

// Light machinegun
_AR = "UK3CB_BAF_L110A2RIS";
_ARmag = "UK3CB_BAF_556_100Rnd";
_ARmag_tr = "UK3CB_BAF_556_100Rnd_T";

// Medium machinegun
_MMG = "UK3CB_BAF_L7A2";
_MMGmag = "UK3CB_BAF_762_100Rnd";
_MMGmag_tr = "UK3CB_BAF_762_100Rnd_T";

// Marksman
_DMrifle = "UK3CB_BAF_L129A1";
_DMriflemag = "UK3CB_BAF_762_L42A1_20Rnd";

// Light AT
_RAT = "UK3CB_BAF_NLAW_Launcher";
_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_optic_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HEDP";
_MAT_sight = "rhs_mag_maaws_HEAT";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy anti tank launcher
_HAT = "rhs_weap_fgm148";		
_HATmag1 = "rhs_fgm148_magazine_AT";
_HATmag2 = "rhs_fgm148_magazine_AT";
_HAT_Mobile = true;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "UK3CB_BAF_L135A1";
_SNrifleMag = "UK3CB_BAF_127_10Rnd";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "UK3CB_BAF_B_Kitbag_MTP";
_bagmedium = "UK3CB_BAF_B_Carryall_MTP";
_baglarge =  "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";

_bagSupSmall = "UK3CB_BAF_B_Kitbag_TAN";
_bagSupMedium = "UK3CB_BAF_B_Carryall_TAN";
_bagSupLarge =  "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";

_bagMs = "UK3CB_BAF_B_Bergen_MTP_Medic_L_B";	//Backpack for medic
_bagMm = "UK3CB_BAF_B_Bergen_MTP_Medic_L_A";	//Backpack for medic
_bagMl = "UK3CB_BAF_B_Bergen_MTP_Medic_H_B";	//Backpack for medic

_bagRadio = "UK3CB_BAF_B_Bergen_MTP_Radio_H_A";
_bagTL = "UK3CB_BAF_B_Bergen_MTP_SL_H_A";

_bagENGs = "UK3CB_BAF_B_Bergen_MTP_Engineer_L_A";
_bagENGm = "UK3CB_BAF_B_Bergen_MTP_Engineer_H_A";
_bagENGl = "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";

_bagMAT = "UK3CB_BAF_B_Bergen_MTP_Rifleman_XL_A";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "B_HMG_01_weapon_F";					// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "B_GMG_01_weapon_F";					// used by GMG gunner
_baggmgag = "B_HMG_01_support_F";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["UK3CB_BAF_U_CombatUniform_MTP", "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"];
_baseHelmet = ["UK3CB_BAF_H_Mk7_Camo_A", "UK3CB_BAF_H_Mk7_Camo_CESS_A", "UK3CB_BAF_H_Mk7_Camo_ESS_A", "UK3CB_BAF_H_Mk7_Net_A", "UK3CB_BAF_H_Mk7_Net_CESS_A", "UK3CB_BAF_H_Mk7_Net_ESS_A", "UK3CB_BAF_H_Mk7_Scrim_ESS_B", "UK3CB_BAF_H_Mk7_Scrim_B"];
_baseGlasses = [];

// Kamizelki
_slRig = ["UK3CB_BAF_V_Osprey_SL_A", "UK3CB_BAF_V_Osprey_SL_B", "UK3CB_BAF_V_Osprey_SL_C", "UK3CB_BAF_V_Osprey_SL_D"];
_engRig = ["UK3CB_BAF_V_Osprey_Holster"];
_lightRig = ["UK3CB_BAF_V_Osprey_Rifleman_A"];
_mediumRig = ["UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D", "UK3CB_BAF_V_Osprey_Rifleman_F"];
_heavyRig = ["UK3CB_BAF_V_Osprey_MG_A", "UK3CB_BAF_V_Osprey_MG_B"];

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_slR = ["co", "dc", "ftl"];
_medR = ["m"];
_engR = ["eng","engm"];
_light = ["aar","mmgag","matag","hmgg","hmgag","hatag","msamag"];
_heavy =  ["ar","mmgg"];	//Will be used for MG/MMG gunners
_pilot = ["pp","pcc","pc"];
_JPilotR = ["ps"];
_crew = ["vc","vg","vd"];
_diver = ["divc","divr","divs","divm"];
_sfR = ["sftl","sfm","sfat","sfs"];
_ghillie = ["sn","sp"];

//
_medUniform = ["UK3CB_BAF_U_CombatUniform_MTP", "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve"];
_medHelmet = ["UK3CB_BAF_H_Mk7_Camo_A", "UK3CB_BAF_H_Mk7_Camo_CESS_A", "UK3CB_BAF_H_Mk7_Camo_ESS_A", "UK3CB_BAF_H_Mk7_Net_A", "UK3CB_BAF_H_Mk7_Net_CESS_A", "UK3CB_BAF_H_Mk7_Net_ESS_A", "UK3CB_BAF_H_Mk7_Scrim_ESS_B", "UK3CB_BAF_H_Mk7_Scrim_B"];
_medRig = ["UK3CB_BAF_V_Osprey_Medic_B", "UK3CB_BAF_V_Osprey_Medic_D"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["UK3CB_BAF_U_HeliPilotCoveralls_RAF"];
_pilotHelmet = ["UK3CB_BAF_H_PilotHelmetHeli_A"];
_pilotRig = ["UK3CB_BAF_V_Pilot_A"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["UK3CB_BAF_U_CrewmanCoveralls_RTR"];
_crewHelmet = ["UK3CB_BAF_H_CrewHelmet_A"];
_crewRig = ["UK3CB_BAF_V_Osprey_Lite"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["U_B_CTRG_Soldier_F"];
_SFHelmet = ["H_HelmetB_TI_tna_F"];
_SFRig = ["V_PlateCarrier2_rgr_noflag_F"];
_SFGlasses = ["G_Balaclava_TI_G_tna_F"];

// Ghillie (sniper/spotter)
_ghillieUniform = ["UK3CB_BAF_U_CombatUniform_MTP_Ghillie_RM"];
_ghillieHelmet = [];
_ghillieRig = ["UK3CB_BAF_V_Osprey_Marksman_A"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);	// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

// ====================================================================================
	// Add medical qeuipment to eatch unit (player)	
	call Medical;
	
  };
  
// ====================================================================================
	//Call builder script
	call Builder;
	
	//Add night equipment
	call Night_Eq_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//BAF (WD)
	case 3: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [];		//For night
} 
else {
	_attachments = [];		//For day
};

/*
[] = no addons will be added
[_attach1,_scope1] = will add included addons
false = will not change anything, so if weapon by default have scope it will stay
*/

// ====================================================================================

// Secondary weapon attachemnts
_hg_silencer1 = "muzzle_snds_acp";
_hg_attach1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";
_hg_attachments= [_hg_attach1];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "UK3CB_BAF_L85A2";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "UK3CB_BAF_L22";
_carbinemag = "UK3CB_BAF_556_30Rnd";
_carbinemag_tr = "UK3CB_BAF_556_30Rnd_T";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "SMG_03C_TR_khaki";
_smgmag = "50Rnd_570x28_SMG_03";
_smgmag_tr = "50Rnd_570x28_SMG_03";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "UK3CB_BAF_L85A2_UGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "UK3CB_BAF_L131A1";
_pistolmag = "UK3CB_BAF_9_17Rnd";

/*
// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";

_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";

_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";
*/

// ====================================================================================

// Equipment for special clases

// Light machinegun
_AR = "UK3CB_BAF_L110A1";
_ARmag = "UK3CB_BAF_556_100Rnd";
_ARmag_tr = "UK3CB_BAF_556_100Rnd_T";

// Medium machinegun
_MMG = "UK3CB_BAF_L7A2";
_MMGmag = "UK3CB_BAF_762_100Rnd";
_MMGmag_tr = "UK3CB_BAF_762_100Rnd_T";

// Marksman
_DMrifle = "UK3CB_BAF_L129A1";
_DMriflemag = "UK3CB_BAF_762_L42A1_20Rnd";

// Light AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_optic_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HEDP";
_MAT_sight = "rhs_mag_maaws_HEAT";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy anti tank launcher
_HAT = "rhs_weap_fgm148";		
_HATmag1 = "rhs_fgm148_magazine_AT";
_HATmag2 = "rhs_fgm148_magazine_AT";
_HAT_Mobile = true;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "UK3CB_BAF_L135A1";
_SNrifleMag = "UK3CB_BAF_127_10Rnd";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "UK3CB_BAF_B_Kitbag_DPMT";
_bagmedium = "UK3CB_BAF_B_Bergen_DPMT_Rifleman_B";
_baglarge =  "UK3CB_BAF_B_Carryall_DPMT";

_bagSupSmall = "UK3CB_BAF_B_Kitbag_OLI";
_bagSupMedium = "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";
_bagSupLarge =  "UK3CB_BAF_B_Carryall_OLI";

_bagMs = "UK3CB_BAF_B_Kitbag_OLI";	//Backpack for medic
_bagMm = "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";	//Backpack for medic
_bagMl = "UK3CB_BAF_B_Carryall_OLI";	//Backpack for medic

_bagRadio = "UK3CB_BAF_B_Bergen_DPMT_JTAC_H_A";
_bagTL = "UK3CB_BAF_B_Bergen_DPMT_SL_A";

_bagENGs = "UK3CB_BAF_B_Kitbag_DPMT";
_bagENGm = "UK3CB_BAF_B_Bergen_DPMT_Rifleman_B";
_bagENGl = "UK3CB_BAF_B_Carryall_DPMT";

_bagMAT = "UK3CB_BAF_B_Carryall_OLI";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "B_HMG_01_weapon_F";					// used by Heavy MG gunner
_baghmgag = "B_HMG_01_support_F";			// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "B_GMG_01_weapon_F";					// used by GMG gunner
_baggmgag = "B_HMG_01_support_F";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["UK3CB_BAF_U_CombatUniform_DPMT"];
_baseHelmet = ["UK3CB_BAF_H_Mk6_DPMT_B", "UK3CB_BAF_H_Mk6_DPMT_C", "UK3CB_BAF_H_Mk6_DPMT_F"];
_baseGlasses = [];

// Kamizelki
_slRig = ["UK3CB_BAF_V_Osprey_DPMT3"];
_engRig = ["UK3CB_BAF_V_Osprey_DPMT4"];
_lightRig = ["UK3CB_BAF_V_Osprey_DPMT7", "UK3CB_BAF_V_Osprey_DPMT6"];
_mediumRig = ["UK3CB_BAF_V_Osprey_DPMT2", "UK3CB_BAF_V_Osprey_DPMT5", "UK3CB_BAF_V_Osprey_DPMT8"];
_heavyRig = ["UK3CB_BAF_V_Osprey_DPMT4"];

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_slR = ["co", "dc", "ftl"];
_medR = ["m"];
_engR = ["eng","engm"];
_light = ["aar","mmgag","matag","hmgg","hmgag","hatag","msamag"];
_heavy =  ["ar","mmgg"];	//Will be used for MG/MMG gunners
_pilot = ["pp","pcc","pc"];
_JPilotR = ["ps"];
_crew = ["vc","vg","vd"];
_diver = ["divc","divr","divs","divm"];
_sfR = ["sftl","sfm","sfat","sfs"];
_ghillie = ["sn","sp"];

//
_medUniform = ["UK3CB_BAF_U_CombatUniform_DPMT_ShortSleeve"];
_medHelmet = ["UK3CB_BAF_H_Mk6_DPMT_D", "UK3CB_BAF_H_Mk6_DPMT_E"];
_medRig = ["UK3CB_BAF_V_Osprey_DPMT9"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["UK3CB_BAF_U_HeliPilotCoveralls_RAF"];
_pilotHelmet = ["UK3CB_BAF_H_PilotHelmetHeli_A"];
_pilotRig = ["UK3CB_BAF_V_Pilot_DPMT"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["UK3CB_BAF_U_CrewmanCoveralls_RTR"];
_crewHelmet = ["UK3CB_BAF_H_CrewHelmet_DPMT_ESS_A", "UK3CB_BAF_H_CrewHelmet_DPMT_A"];
_crewRig = ["UK3CB_BAF_V_Osprey_DPMT1"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["U_B_CTRG_Soldier_F"];
_SFHelmet = ["H_HelmetB_TI_tna_F"];
_SFRig = ["V_PlateCarrier2_rgr_noflag_F"];
_SFGlasses = ["G_Balaclava_TI_G_tna_F"];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_B_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);	// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

// ====================================================================================
	// Add medical qeuipment to eatch unit (player)	
	call Medical;
	
  };
  
// ====================================================================================
	//Call builder script
	call Builder;
	
	//Add night equipment
	call Night_Eq_NVG;

};

// ====================================================================================
// ====================================================================================
//END CASE STATEMENT		

};

// ====================================================================================
// ====================================================================================
// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================
// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================
// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectweapon primaryweapon _unit;