// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

	1. NATO
	2. BAF (MTP) | MD |  
 	3. BAF (WD) | MD |  
 	4. BAF (DS) | MD |  
 	5. CDF (WD) | MD | PARA
 	6. CDF (WD) | U |  
 	7. DK (WD) | CW |  
 	8. DK (WT) | CW |  
 	9. US ARMY (WD) | CW | VIETNAM
 	10. US ARMY (WD) | CW |  
 	11. US ARMY (DS) | CW | 
	12. US ARMY (UCP) | MD | 2005
 	13. US ARMY (MTP) | MD | 2020
 	14. USMC (WD) | MD | 2010-15
 	15. USMC (DS) | MD | 2010-15

*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Blufor;
// ====================================================================================

//Items definitions

// ====================================================================================
// Medical items
// ====================================================================================

// Default Arma3 stuff
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Basic medical equipment
_personalAidKit = "ACE_personalAidKit";		// personal Aid Kit
_surgicalKit = "ACE_surgicalKit";			// surgical Kit
_worek = "ACE_bodyBag";						// body Bag
_AED = "adv_aceCPR_AED";

// Bandages
_bandage = "ACE_fieldDressing";				// field Dressing
_bandage_elastic = "ACE_elasticBandage";	// elastic Bandage
_bandage_packing = "ACE_packingBandage";	// packing Bandage
_bandage_quikclot = "ACE_quikclot";			// quikclot
_tourniquet ="ACE_tourniquet";				// tourniquet
_splint = "ACE_splint";						// splint

// Drugs
_epinephrine = "ACE_epinephrine";			// epinephrine (zwiększa tętno)
_morphine = "ACE_morphine";					// morphine (niweluje ból, rozrzedza krew)
_adenosine = "ACE_adenosine";				// adenosine (obniża tętno)
//_atropine = "ACE_atropine";				// atropine (obniża tętno)

// ACE Blood
_blood_s = "ACE_bloodIV_250";				// Blood 200 ml
_blood_m = "ACE_bloodIV_500";				// Blood 500 ml
_blood_b = "ACE_bloodIV";					// Blood 1000 ml

_plasma_s = "ACE_plasmaIV_250";				// Plasma 200 ml
_plasma_m = "ACE_plasmaIV_500";				// Plasma 500 ml
_plasma_b = "ACE_plasmaIV";					// Plasma 1000 ml

_saline_s = "ACE_salineIV_250";				// Saline 200 ml
_saline_m = "ACE_salineIV_500";				// Saline 500 ml
_saline_b = "ACE_salineIV";					// Saline 1000 ml

// ====================================================================================
// Radios - ACRE2
// ====================================================================================

// Radios
_radioSR = "ACRE_PRC343";
_radioMR = "ACRE_PRC152";
_radioLR = "ACRE_PRC77";

// Antenas
_antena = "ACRE_VHF30108SPIKE";
_mast = "ACRE_VHF30108MAST";
_AntenaAndMast = "ACRE_VHF30108";

// ====================================================================================
// Night equipemnt
// ====================================================================================

// Basic night equipment
_nvg = "rhsusf_ANPVS_15";
_IRstrobe = "ACE_IR_Strobe_Item";
_latarka = "ACE_Flashlight_XL50";

// GL Flare
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Hand Flares
_flarewhite = "ACE_HandFlare_White";
_flarered = "ACE_HandFlare_Red";
_flareyellow = "ACE_HandFlare_Yellow";
_flaregreen = "ACE_HandFlare_Green";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

_chemgreenHI =  "ACE_Chemlight_HiGreen";
_chemredHI = "ACE_Chemlight_HiRed";
_chemyellowHI =  "ACE_Chemlight_HiYellow";
_chemblueHI = "ACE_Chemlight_HiBlue";

// ====================================================================================
// Grenades and GLs
// ====================================================================================

// Hand granade
_grenade = "HandGrenade";	//basic frag granade
_mgrenade = "ACE_M84";		//flashbang
_mgrenade9 = "ACE_CTS9";	//flashbang 9-bangs
_igrenade = "ACE_M14"; 		//incidenary

// Granaty dymne
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadered = "SmokeShellRed";

// GL Rounds
//_glmag = "1Rnd_HE_Grenade_shell";
_huntIR = "ACE_HuntIR_M203";

// Granaty dymne do granatnika
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// ====================================================================================
// Mines/Expolisved/Logi stuff
// ====================================================================================

// Basic equipment
_mineDetector = "ACE_VMM3";
_toolkit = "ToolKit";
_n_rozbraja = "ACE_DefusalKit";

_zapalnik = "ACE_Clacker";
_zapalnik_b = "ACE_M26_Clacker";
_Dswitch = "ACE_DeadManSwitch";
_cell = "ACE_Cellphone";

_saperka = "ACE_EntrenchingTool";
_mlotek = "ACE_Fortify";
_wirecutter = "ACE_wirecutter";

_maptools = "ACE_MapTools";
_tableMTR = "ACE_RangeTable_82mm";
_tableART = "ACE_artilleryTable";
_RangeCard = "ACE_RangeCard";

// Terminal UAV
_uavterminal = "B_UavTerminal";

// Mines
_ATmine = "ATMine_Range_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// Explosives
_satche_small = "ClaymoreDirectionalMine_Remote_Mag";
_satche_big = "DemoCharge_Remote_Mag";
_satche_extra_big = "SatchelCharge_Remote_Mag";

// ====================================================================================
// Mortar Ammo
// ====================================================================================

// Basic ammo
_mtrHE = "ACE_1Rnd_82mm_Mo_HE";
_mtrSmoke = "ACE_1Rnd_82mm_Mo_Smoke";
_mtrFlare = "ACE_1Rnd_82mm_Mo_Illum";

// Adv ammo - not used
_mtrHEg = "ACE_1Rnd_82mm_Mo_HE_Guided";
_mtrHElg = "ACE_1Rnd_82mm_Mo_HE_LaserGuided";

// ====================================================================================
// Other items
// ====================================================================================

_earplugs = "ACE_EarPlugs";
_lornetkaAM = "ACE_Vector";
_lornetkaFTL = "Binocular";
_lornetkaRTO = "UK3CB_BAF_Soflam_Laserdesignator";
_GPS = "ACE_microDAGR";
_handcuffs = "ACE_CableTie";
_huntIR_tab = "ACE_HuntIR_monitor";
_Chemlight_Shield = "ACE_Chemlight_Shield";
_heliRope = "ACE_rope36";
_spray = "ACE_SpraypaintRed";
_UAVbattery = "ACE_UAVBattery";

// ====================================================================================
// Konstruktor BUILDERA
// ====================================================================================
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
_smg = "UK3CB_BAF_L91A1";
_smgmag = "UK3CB_BAF_9_30Rnd";
_smgmag_tr = "UK3CB_BAF_9_30Rnd";

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

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//BAF (DS)
	case 4: 
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
_smg = "UK3CB_BAF_L91A1";
_smgmag = "UK3CB_BAF_9_30Rnd";
_smgmag_tr = "UK3CB_BAF_9_30Rnd";

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

_bagsmall = "UK3CB_BAF_B_Kitbag_DDPM";
_bagmedium = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
_baglarge =  "UK3CB_BAF_B_Carryall_DDPM";

_bagSupSmall = "UK3CB_BAF_B_Kitbag_TAN";
_bagSupMedium = "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";
_bagSupLarge =  "UK3CB_BAF_B_Carryall_TAN";

_bagMs = "UK3CB_BAF_B_Kitbag_TAN";	//Backpack for medic
_bagMm = "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";	//Backpack for medic
_bagMl = "UK3CB_BAF_B_Carryall_TAN";	//Backpack for medic

_bagRadio = "UK3CB_BAF_B_Bergen_DDPM_JTAC_H_A";
_bagTL = "UK3CB_BAF_B_Bergen_DDPM_SL_A";

_bagENGs = "UK3CB_BAF_B_Kitbag_DDPM";
_bagENGm = "UK3CB_BAF_B_Bergen_DDPM_Rifleman_B";
_bagENGl = "UK3CB_BAF_B_Carryall_DDPM";

_bagMAT = "UK3CB_BAF_B_Carryall_TAN";	// Plecak dla MAT

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
_baseUniform = ["UK3CB_BAF_U_CombatUniform_DDPM"];
_baseHelmet = ["UK3CB_BAF_H_Mk6_DDPM_B", "UK3CB_BAF_H_Mk6_DDPM_C", "UK3CB_BAF_H_Mk6_DDPM_F"];
_baseGlasses = [];

// Kamizelki
_slRig = ["UK3CB_BAF_V_Osprey_DDPM3"];
_engRig = ["UK3CB_BAF_V_Osprey_DDPM4"];
_lightRig = ["UK3CB_BAF_V_Osprey_DDPM7", "UK3CB_BAF_V_Osprey_DDPM6"];
_mediumRig = ["UK3CB_BAF_V_Osprey_DDPM2", "UK3CB_BAF_V_Osprey_DDPM5", "UK3CB_BAF_V_Osprey_DDPM8"];
_heavyRig = ["UK3CB_BAF_V_Osprey_DDPM4"];

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
_medUniform = ["UK3CB_BAF_U_CombatUniform_DDPM_ShortSleeve"];
_medHelmet = ["UK3CB_BAF_H_Mk6_DDPM_D", "UK3CB_BAF_H_Mk6_DDPM_E"];
_medRig = ["UK3CB_BAF_V_Osprey_DDPM9"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["UK3CB_BAF_U_HeliPilotCoveralls_RAF"];
_pilotHelmet = ["UK3CB_BAF_H_PilotHelmetHeli_A"];
_pilotRig = ["UK3CB_BAF_V_Pilot_DDPM"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["UK3CB_BAF_U_CrewmanCoveralls_RTR"];
_crewHelmet = ["UK3CB_BAF_H_CrewHelmet_DDPM_ESS_A", "UK3CB_BAF_H_CrewHelmet_DDPM_A"];
_crewRig = ["UK3CB_BAF_V_Osprey_DDPM1"];
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

	//CDF (WD) | MD
	case 5: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhs_acc_1p87";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_attach1,_scope1,_bipod1];		//For night
} 
else {
	_attachments = [_attach2,_scope1,_bipod1];		//For day
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
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "rhs_weap_vhsd2";
_riflemag = "rhsgref_30rnd_556x45_vhs2";
_riflemag_tr = "rhsgref_30rnd_556x45_vhs2_t";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_vhsk2";
_carbinemag = "rhsgref_30rnd_556x45_vhs2";
_carbinemag_tr = "rhsgref_30rnd_556x45_vhs2_t";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag_SMG_02";
_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_vhsd2_bg";
_glriflemag = "rhsgref_30rnd_556x45_vhs2";
_glriflemag_tr = "rhsgref_30rnd_556x45_vhs2_t";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhs_weap_pya";
_pistolmag = "rhs_mag_9x19_17";

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
_AR = "rhs_weap_m249_pip_S_para";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium machinegun
_MMG = "rhs_weap_m84";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "UK3CB_M14_Rail";
_DMriflemag = "20Rnd_762x51_Mag";

// Light AT
_RAT = "rhs_weap_rpg75";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy anti tank launcher [DLC]
_HAT = "Vorona_HEAT";		
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = true;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_t5000";
_SNrifleMag = "rhs_5Rnd_338lapua_t5000";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_Kitbag_sgg";
_bagmedium = "rhssaf_alice_smb";
_baglarge =  "B_Carryall_oli";

_bagSupSmall = "rhssaf_kitbag_md2camo";
_bagSupMedium = "rhssaf_alice_md2camo";
_bagSupLarge =  "B_Bergen_mcamo_F";

_bagMs = "rhs_sidor";	//Backpack for medic
_bagMm = "rhs_sidor";	//Backpack for medic
_bagMl = "rhs_sidor";	//Backpack for medic

_bagRadio = "tfw_ilbe_gr";
_bagTL = "rhs_assault_umbts";

_bagENGs = "rhs_assault_umbts_engineer_empty";
_bagENGm = "rhs_assault_umbts_engineer_empty";
_bagENGl = "rhs_assault_umbts_engineer_empty";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_Kord_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "RHS_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_AGS30_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_ttsko_urban"];
_baseHelmet = ["rhsgref_6b27m_ttsko_digi"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhsgref_6b23_ttsko_digi_nco","rhsgref_6b23_ttsko_digi_officer"];
_engRig = ["rhsgref_6b23_ttsko_digi"];
_lightRig = ["rhsgref_6b23_ttsko_digi_sniper"];
_mediumRig = ["rhsgref_6b23_ttsko_digi_rifleman"];
_heavyRig = ["rhsgref_6b23_ttsko_digi"];

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

// Medic
_medUniform = ["rhsgref_uniform_ttsko_urban"];
_medHelmet = ["rhsgref_6b27m_ttsko_digi"];
_medRig = ["rhsgref_6b23_ttsko_digi_medic"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhsgref_uniform_para_ttsko_urban"];
_pilotHelmet = ["rhs_zsh7a_mike_green", "rhs_zsh7a_mike_green_alt"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhsgref_uniform_ttsko_mountain"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhsgref_chicom_m88"];
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

	//CDF (WD) | U
	case 6: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "rhs_acc_2dpZenit";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "rhs_acc_dtk1983";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhs_acc_1p87";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "rhs_acc_dh520x56";					// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_attach2,_silencer1];		//For night
} 
else {
	_attachments = [_silencer1];		//For day
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
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "rhs_weap_ak74";
_riflemag = "rhs_30Rnd_545x39_7N6M_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_green";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_aks74";
_carbinemag = "rhs_30Rnd_545x39_7N6M_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_green";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "rhs_weap_savz61";
_smgmag = "rhsgref_20rnd_765x17_vz61";
_smgmag_tr = "rhsgref_20rnd_765x17_vz61";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_ak74_gp25";
_glriflemag = "rhs_30Rnd_545x39_7N6M_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_green";
_glmag = "rhs_VOG25";

// Pistol (for everyone YAY!)
_pistol = "rhs_weap_pya";
_pistolmag = "rhs_mag_9x19_17";

// Smokes for GL
_glsmokewhite = "rhs_GRD40_White";
_glsmokegreen = "rhs_GRD40_Green";
_glsmokered = "rhs_GRD40_Red";

// Flares for GL
_glflarewhite = "rhs_VG40OP_white";
_glflarered = "rhs_VG40OP_red";
_glflaregreen = "rhs_VG40OP_green";

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
_AR = "UK3CB_RPK";
_ARmag = "UK3CB_RPK_75Rnd_Drum";
_ARmag_tr = "UK3CB_RPK_75Rnd_Drum_T";

// Medium machinegun
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "rhs_weap_m38_rail";
_DMriflemag = "rhsgref_5Rnd_762x54_m38";

// Light AT
_RAT = "rhs_weap_rpg75";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy anti tank launcher [DLC]
_HAT = "Vorona_HEAT";		
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_t5000";
_SNrifleMag = "rhs_5Rnd_338lapua_t5000";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_FieldPack_oli";
_bagmedium = "rhssaf_alice_smb";
_baglarge =  "B_Carryall_oli";

_bagSupSmall = "B_FieldPack_khk";
_bagSupMedium = "rhsgref_ttsko_alicepack";
_bagSupLarge =  "B_Carryall_khk";

_bagMs = "rhs_sidor";	//Backpack for medic
_bagMm = "rhs_sidor";	//Backpack for medic
_bagMl = "rhs_sidor";	//Backpack for medic

_bagRadio = "UK3CB_B_O_Radio_Backpack";
_bagTL = "rhs_assault_umbts";

_bagENGs = "rhs_assault_umbts_engineer_empty";
_bagENGm = "rhs_assault_umbts_engineer_empty";
_bagENGl = "rhs_assault_umbts_engineer_empty";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_Kord_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "RHS_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_AGS30_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_ttsko_mountain"];
_baseHelmet = ["rhsgref_ssh68_ttsko_mountain"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhs_6b5_officer"];
_engRig = ["rhs_6b5_rifleman"];
_lightRig = ["rhs_6b5_sniper"];
_mediumRig = ["rhs_6b5"];
_heavyRig = ["rhs_6b5_rifleman"];

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

// Medic
_medUniform = ["rhsgref_uniform_ttsko_mountain"];
_medHelmet = ["rhsgref_ssh68_ttsko_mountain"];
_medRig = ["rhs_6b5_medic"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhsgref_uniform_para_ttsko_mountain"];
_pilotHelmet = ["rhs_zsh7a_mike_green", "rhs_zsh7a_mike_green_alt"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhsgref_uniform_ttsko_mountain"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhsgref_chicom_m88"];
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
	call Night_Eq_No_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//DK (WD) | CW
	case 7: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "gm_feroz24_blk";					// Sniper scope

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
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "UK3CB_M16A2";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "UK3CB_M16_Carbine";
_carbinemag = "UK3CB_BAF_556_30Rnd";
_carbinemag_tr = "UK3CB_BAF_556_30Rnd_T";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_MP5";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Mag";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "UK3CB_M16A2_UGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "UK3CB_BAF_L105A1";
_pistolmag = "UK3CB_BAF_9_15Rnd";

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
_AR = "gm_lmgm62_blk";
_ARmag = "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn";
_ARmag_tr = "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn";

// Medium machinegun
_MMG = "UK3CB_M60";
_MMGmag = "UK3CB_100Rnd_762x51_B_M60";
_MMGmag_tr = "UK3CB_100Rnd_762x51_T_M60";

// Marksman
_DMrifle = "gm_gvm75_oli";
_DMriflemag = "gm_20Rnd_762x51mm_B_T_DM21_g3_blk";

// Light AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "gm_pzf84_oli";
_MATmag1 = "gm_1Rnd_84x245mm_heat_t_DM12a1_carlgustaf";
_MATmag2 = "gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf";
_MAT_sight = "gm_feroz2x17_pzf84_blk";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_FieldPack_oli";
_bagmedium = "gm_dk_army_backpack_73_oli";
_baglarge =  "B_Carryall_oli";

_bagSupSmall = "B_FieldPack_oli";
_bagSupMedium = "gm_dk_army_backpack_73_oli";
_bagSupLarge =  "B_Carryall_oli";

_bagMs = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMm = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMl = "gm_ge_backpack_satchel_80_san";	//Backpack for medic

_bagRadio = "UK3CB_B_B_Radio_Backpack";
_bagTL = "B_FieldPack_khk";

_bagENGs = "gm_ge_backpack_satchel_80_blk";
_bagENGm = "gm_ge_backpack_satchel_80_blk";
_bagENGl = "gm_ge_backpack_satchel_80_blk";

_bagMAT = "B_Bergen_mcamo_F";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "rhs_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "rhs_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_Mk19_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["gm_dk_army_uniform_soldier_84_m84"];
_baseHelmet = ["gm_dk_headgear_m96_cover_m84", "gm_dk_headgear_m96_oli"];
_baseGlasses = [];

// Kamizelki
_slRig = ["gm_dk_army_vest_m00_m84_rifleman"];
_engRig = ["gm_dk_army_vest_m00_m84"];
_lightRig = ["gm_dk_army_vest_m00_m84"];
_mediumRig = ["gm_dk_army_vest_m00_m84_rifleman"];
_heavyRig = ["gm_dk_army_vest_m00_m84_machinegunner"];

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
_medUniform = ["gm_dk_army_uniform_soldier_84_m84"];
_medHelmet = ["gm_dk_headgear_m96_oli"];
_medRig = ["gm_dk_army_vest_m00_m84"];
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
_crewUniform = ["gm_dk_army_uniform_soldier_84_oli"];
_crewHelmet = ["gm_ge_headgear_crewhat_80_blk"];
_crewRig = ["gm_dk_army_vest_54_crew"];
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
	call Night_Eq_No_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//DK (WT) | CW
	case 8: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "gm_feroz24_blk";					// Sniper scope

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
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "UK3CB_M16A2";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "UK3CB_M16_Carbine";
_carbinemag = "UK3CB_BAF_556_30Rnd";
_carbinemag_tr = "UK3CB_BAF_556_30Rnd_T";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_MP5";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Mag";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "UK3CB_M16A2_UGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "UK3CB_BAF_L105A1";
_pistolmag = "UK3CB_BAF_9_15Rnd";

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
_AR = "gm_lmgm62_blk";
_ARmag = "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn";
_ARmag_tr = "gm_120Rnd_762x51mm_B_T_DM21_mg3_grn";

// Medium machinegun
_MMG = "UK3CB_M60";
_MMGmag = "UK3CB_100Rnd_762x51_B_M60";
_MMGmag_tr = "UK3CB_100Rnd_762x51_T_M60";

// Marksman
_DMrifle = "gm_gvm75_oli";
_DMriflemag = "gm_20Rnd_762x51mm_B_T_DM21_g3_blk";

// Light AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "gm_pzf84_oli";
_MATmag1 = "gm_1Rnd_84x245mm_heat_t_DM12a1_carlgustaf";
_MATmag2 = "gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf";
_MAT_sight = "gm_feroz2x17_pzf84_blk";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_FieldPack_oli";
_bagmedium = "gm_dk_army_backpack_73_oli";
_baglarge =  "B_Carryall_oli";

_bagSupSmall = "B_FieldPack_oli";
_bagSupMedium = "gm_dk_army_backpack_73_oli";
_bagSupLarge =  "B_Carryall_oli";

_bagMs = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMm = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMl = "gm_ge_backpack_satchel_80_san";	//Backpack for medic

_bagRadio = "UK3CB_B_B_Radio_Backpack";
_bagTL = "B_FieldPack_khk";

_bagENGs = "gm_ge_backpack_satchel_80_blk";
_bagENGm = "gm_ge_backpack_satchel_80_blk";
_bagENGl = "gm_ge_backpack_satchel_80_blk";

_bagMAT = "B_Bergen_mcamo_F";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "rhs_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "rhs_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_Mk19_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["gm_dk_army_uniform_soldier_84_win"];
_baseHelmet = ["gm_dk_headgear_m96_cover_wht"];
_baseGlasses = [];

// Kamizelki
_slRig = ["gm_dk_army_vest_m00_win_rifleman"];
_engRig = ["gm_dk_army_vest_m00_win"];
_lightRig = ["gm_dk_army_vest_m00_win"];
_mediumRig = ["gm_dk_army_vest_m00_win_rifleman"];
_heavyRig = ["gm_dk_army_vest_m00_win_machinegunner"];

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
_medUniform = ["gm_dk_army_uniform_soldier_84_win"];
_medHelmet = ["gm_dk_headgear_m96_cover_wht"];
_medRig = ["gm_dk_army_vest_m00_win"];
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
_crewUniform = ["gm_dk_army_uniform_soldier_84_oli"];
_crewHelmet = ["gm_ge_headgear_crewhat_80_blk"];
_crewRig = ["gm_dk_army_vest_54_crew"];
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
	call Night_Eq_No_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//US ARMY (WD) | CW | VIETNAM
	case 9: 
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
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "UK3CB_M16A1";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "UK3CB_M14";
_carbinemag = "UK3CB_20Rnd_762x51_B_M14";
_carbinemag_tr = "UK3CB_20Rnd_762x51_T_M14";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "rhs_weap_m3a1";
_smgmag = "rhsgref_30rnd_1143x23_M1911B_SMG";
_smgmag_tr = "rhsgref_30rnd_1143x23_M1T_SMG";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_m79";
_glriflemag = "1Rnd_HE_Grenade_shell";
_glriflemag_tr = "rhsusf_mag_7x45acp_MHP";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhsusf_weap_m1911a1";
_pistolmag = "rhsusf_mag_7x45acp_MHP";

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
_AR = "UK3CB_M60";
_ARmag = "UK3CB_100Rnd_762x51_B_M60";
_ARmag_tr = "UK3CB_100Rnd_762x51_T_M60";

// Medium machinegun
_MMG = "UK3CB_M60";
_MMGmag = "UK3CB_100Rnd_762x51_B_M60";
_MMGmag_tr = "UK3CB_100Rnd_762x51_T_M60";

// Marksman
_DMrifle = "UK3CB_M14";
_DMriflemag = "UK3CB_20Rnd_762x51_B_M14";

// Light AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HEDP";
_MAT_sight = "rhs_optic_maaws";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m40a5";
_SNrifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_FieldPack_oli";
_bagmedium = "rhsgref_hidf_alicepack";
_baglarge =  "B_Carryall_oli";

_bagSupSmall = "B_FieldPack_khk";
_bagSupMedium = "rhsgref_wdl_alicepack";
_bagSupLarge =  "B_Carryall_khk";

_bagMs = "usm_pack_m5_medic";	//Backpack for medic
_bagMm = "usm_pack_m5_medic";	//Backpack for medic
_bagMl = "usm_pack_m5_medic";	//Backpack for medic

_bagRadio = "UK3CB_B_B_Radio_Backpack";
_bagTL = "B_FieldPack_cbr";

_bagENGs = "B_FieldPack_cbr";
_bagENGm = "B_FieldPack_cbr";
_bagENGl = "B_FieldPack_cbr";

_bagMAT = "rhsgref_hidf_alicepack";	// Plecak dla MAT

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
_baseUniform = ["usm_bdu_odg", "usm_bdu_btisrl_odg", "usm_bdu_bti_odg", "usm_bdu_srl_odg"];
_baseHelmet = ["usm_helmet_m1v2_mit", "usm_helmet_m1_mit", "rhsgref_helmet_M1_bare", "rhsgref_helmet_M1_bare_alt01"];
_baseGlasses = [];

// Kamizelki
_slRig = ["usm_vest_lbe_rmpr"];
_engRig = ["usm_vest_lbe_p"];
_lightRig = ["usm_vest_lbe_rmp"];
_mediumRig = ["usm_vest_lbe_rm", "usm_vest_lbe_rm2"];
_heavyRig = ["usm_vest_lbe_mg"];

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
_medUniform = ["usm_bdu_srh_odg"];
_medHelmet = ["usm_helmet_m1v2_mit", "usm_helmet_m1_mit", "rhsgref_helmet_M1_bare", "rhsgref_helmet_M1_bare_alt01"];
_medRig = ["usm_vest_lbe_rm", "usm_vest_lbe_rm2"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["UK3CB_CW_US_B_Early_U_H_Pilot_Uniform_01_OLI"];
_pilotHelmet = ["rhsusf_hgu56p_usa"];
_pilotRig = ["UK3CB_V_Pilot_Vest"];
_pilotGlasses = ["G_Aviator"];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["usm_bdu_srl_odg"];
_crewHelmet = ["rhsusf_cvc_green_helmet"];
_crewRig = ["usm_vest_pasgt"];
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
	call Night_Eq_No_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	// US ARMY (WD) | CW |  
	case 10: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "rhsusf_acc_M8541";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "rhsusf_acc_saw_bipod";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_bipod2];		//For night
} 
else {
	_attachments = [_bipod2];		//For day
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
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "UK3CB_M16A2";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "UK3CB_M16_Carbine";
_carbinemag = "UK3CB_BAF_556_30Rnd";
_carbinemag_tr = "UK3CB_BAF_556_30Rnd_T";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_MP5";
_smgmag = "UK3CB_9x30Rnd";
_smgmag_tr = "UK3CB_9x30Rnd";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "UK3CB_M16A2_UGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhsusf_weap_m1911a1";
_pistolmag = "rhsusf_mag_7x45acp_MHP";

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
_AR = "rhs_weap_m249_pip";
_ARmag = "rhsusf_100Rnd_556x45_M855_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_M855_soft_pouch";

// Medium machinegun
_MMG = "UK3CB_M60";
_MMGmag = "UK3CB_100Rnd_762x51_B_M60";
_MMGmag_tr = "UK3CB_100Rnd_762x51_T_M60";

// Marksman
_DMrifle = "UK3CB_M14DMR_Railed";
_DMriflemag = "UK3CB_20Rnd_762x51_B_M14";

// Light AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HEDP";
_MAT_sight = "rhs_optic_maaws";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m24sws";
_SNrifleMag = "rhsusf_5Rnd_762x51_m118_special_Mag";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "rhssaf_kitbag_md2camo";
_bagmedium = "rhsgref_wdl_alicepack";
_baglarge =  "B_Carryall_khk";

_bagSupSmall = "B_Kitbag_sgg";
_bagSupMedium = "rhsgref_hidf_alicepack";
_bagSupLarge =  "B_Carryall_oli";

_bagMs = "usm_pack_m5_medic";	//Backpack for medic
_bagMm = "usm_pack_m5_medic";	//Backpack for medic
_bagMl = "usm_pack_m5_medic";	//Backpack for medic

_bagRadio = "UK3CB_B_B_Radio_Backpack";
_bagTL = "UK3CB_CW_US_B_LATE_B_RIF_04";

_bagENGs = "B_Kitbag_rgr";
_bagENGm = "B_Kitbag_rgr";
_bagENGl = "B_Kitbag_rgr";

_bagMAT = "B_Bergen_mcamo_F";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "rhs_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "rhs_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_Mk19_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["usm_bdu_btisrl_wdl", "usm_bdu_bti_wdl", "usm_bdu_srl_wdl"];
_baseHelmet = ["usm_helmet_pasgt_ce_wdl", "usm_helmet_pasgt_ceswd_wdl", "usm_helmet_pasgt_rm_wdl"];
_baseGlasses = [];

// Kamizelki
_slRig = ["usm_vest_pasgt_lbe_gr","usm_vest_pasgt_lbe_rmpr"];
_engRig = ["usm_vest_pasgt_lbe_rm"];
_lightRig = ["usm_vest_pasgt_lbe_p"];
_mediumRig = ["usm_vest_pasgt_lbe_rmp","usm_vest_pasgt_lbe_rm2","usm_vest_pasgt_lbe_rm"];
_heavyRig = ["usm_vest_pasgt_lbe_mg"];

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

//Medic
_medUniform = ["usm_bdu_srh_wdl"];
_medHelmet = ["usm_helmet_pasgt_ceswd_odg", "usm_helmet_pasgt_rm_odg"];
_medRig = ["usm_vest_pasgt_lbe_rmp","usm_vest_pasgt_lbe_rm2","usm_vest_pasgt_lbe_rm"];
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
_crewUniform = ["usm_bdu_bti_odg","usm_bdu_btisrl_odg"];
_crewHelmet = ["rhsusf_cvc_green_helmet","rhsusf_cvc_green_ess"];
_crewRig = ["usm_vest_pasgt"];
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
	call Night_Eq_No_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	// US ARMY (DS) | CW |  
	case 11: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "rhsusf_acc_M8541";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "rhsusf_acc_saw_bipod";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_bipod2];		//For night
} 
else {
	_attachments = [_bipod2];		//For day
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
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "UK3CB_M16A2";
_riflemag = "UK3CB_BAF_556_30Rnd";
_riflemag_tr = "UK3CB_BAF_556_30Rnd_T";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "UK3CB_M16_Carbine";
_carbinemag = "UK3CB_BAF_556_30Rnd";
_carbinemag_tr = "UK3CB_BAF_556_30Rnd_T";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_MP5";
_smgmag = "UK3CB_9x30Rnd";
_smgmag_tr = "UK3CB_9x30Rnd";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "UK3CB_M16A2_UGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhsusf_weap_m1911a1";
_pistolmag = "rhsusf_mag_7x45acp_MHP";

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
_AR = "rhs_weap_m249_pip";
_ARmag = "rhsusf_100Rnd_556x45_M855_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_M855_soft_pouch";

// Medium machinegun
_MMG = "UK3CB_M60";
_MMGmag = "UK3CB_100Rnd_762x51_B_M60";
_MMGmag_tr = "UK3CB_100Rnd_762x51_T_M60";

// Marksman
_DMrifle = "UK3CB_M14DMR_Railed";
_DMriflemag = "UK3CB_20Rnd_762x51_B_M14";

// Light AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HEDP";
_MAT_sight = "rhs_optic_maaws";
//_MATsptr = "";

// Surface-air launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m24sws";
_SNrifleMag = "rhsusf_5Rnd_762x51_m118_special_Mag";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_Kitbag_tan";
_bagmedium = "rhsgref_wdl_alicepack";
_baglarge =  "B_Carryall_cbr";

_bagSupSmall = "B_Kitbag_cbr";
_bagSupMedium = "rhsgref_hidf_alicepack";
_bagSupLarge =  "B_Carryall_khk";

_bagMs = "usm_pack_m5_medic";	//Backpack for medic
_bagMm = "usm_pack_m5_medic";	//Backpack for medic
_bagMl = "usm_pack_m5_medic";	//Backpack for medic

_bagRadio = "UK3CB_B_B_Radio_Backpack";
_bagTL = "UK3CB_CW_US_B_LATE_B_RIF_04";

_bagENGs = "B_Kitbag_rgr";
_bagENGm = "B_Kitbag_rgr";
_bagENGl = "B_Kitbag_rgr";

_bagMAT = "B_Bergen_mcamo_F";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "rhs_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "rhs_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_Mk19_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["usm_bdu_btisrl_dcu", "usm_bdu_bti_dcu", "usm_bdu_srl_dcu"];
_baseHelmet = ["usm_helmet_pasgt_ce_dcu", "usm_helmet_pasgt_ceswd_dcu", "usm_helmet_pasgt_rm_dcu"];
_baseGlasses = [];

// Kamizelki
_slRig = ["usm_vest_pasgt_lbe_gr","usm_vest_pasgt_lbe_rmpr"];
_engRig = ["usm_vest_pasgt_lbe_rm"];
_lightRig = ["usm_vest_pasgt_lbe_p"];
_mediumRig = ["usm_vest_pasgt_lbe_rmp","usm_vest_pasgt_lbe_rm2","usm_vest_pasgt_lbe_rm"];
_heavyRig = ["usm_vest_pasgt_lbe_mg"];

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

//Medic
_medUniform = ["usm_bdu_srh_dcu"];
_medHelmet = ["usm_helmet_pasgt_ceswd_odg", "usm_helmet_pasgt_rm_odg"];
_medRig = ["usm_vest_pasgt_lbe_rmp","usm_vest_pasgt_lbe_rm2","usm_vest_pasgt_lbe_rm"];
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
_crewUniform = ["usm_bdu_bti_odg","usm_bdu_btisrl_odg"];
_crewHelmet = ["rhsusf_cvc_green_helmet","rhsusf_cvc_green_ess"];
_crewRig = ["usm_vest_pasgt"];
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
	call Night_Eq_No_NVG;

};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//US ARMY (UCP) | MD | 2005
	case 12: 
	{
// Main weapond attachments

_attach1 = "rhsusf_acc_anpeq15side";	// Laser
_attach2 = "rhsusf_acc_wmx";	// Flashlight
_attach3 = "rhsusf_acc_anpeq16a_light";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhsusf_acc_compm4";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "rhsusf_acc_saw_lw_bipod";				// Bipod for basic weapon
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
_hg_silencer1 = "muzzle_snds_acp";
_hg_attach1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "rhs_weap_m16a4_carryhandle";
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_m4a1_carryhandle";
_carbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbinemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_MP5";
_smgmag = "UK3CB_9x30Rnd";
_smgmag_tr = "UK3CB_9x30Rnd";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_m4a1_carryhandle_m203S";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

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
_AR = "rhs_weap_m249_pip_L";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium machinegun
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51_m61_ap";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Marksman
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

// Light AT
_RAT = "rhs_weap_M136";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HE";
_MAT_sight = "rhs_optic_maaws";
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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_AssaultPack_rgr";
_bagmedium = "B_Kitbag_rgr";
_baglarge =  "B_Carryall_khk";

_bagSupSmall = "rhsusf_assault_eagleaiii_coy";
_bagSupMedium = "B_Kitbag_cbr";
_bagSupLarge =  "B_Carryall_cbr";

_bagMs = "UK3CB_CW_US_B_LATE_B_RIF_04";	//Backpack for medic
_bagMm = "UK3CB_CW_US_B_LATE_B_RIF_04";	//Backpack for medic
_bagMl = "UK3CB_CW_US_B_LATE_B_RIF_04";	//Backpack for medic

_bagRadio = "tfw_ilbe_coy";
_bagTL = "tfw_ilbe_dd_coy";

_bagENGs = "rhsusf_assault_eagleaiii_ucp";
_bagENGm = "rhsusf_assault_eagleaiii_ucp";
_bagENGl = "rhsusf_assault_eagleaiii_ucp";

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
_baseUniform = ["rhs_uniform_acu_ucp"];
_baseHelmet = ["rhsusf_ach_helmet_ucp", "rhsusf_ach_helmet_ESS_ucp", "rhsusf_ach_helmet_headset_ucp", "rhsusf_ach_helmet_headset_ess_ucp"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhsusf_spcs_ucp_squadleader","rhsusf_spcs_ucp_teamleader","rhsusf_spcs_ucp_teamleader_alt"];
_engRig = ["rhsusf_spcs_ucp_crewman"];
_lightRig = ["rhsusf_spcs_ucp_rifleman_alt"];
_mediumRig = ["rhsusf_spcs_ucp_rifleman_alt","rhsusf_spcs_ucp_rifleman"];
_heavyRig = ["rhsusf_spcs_ucp_saw","rhsusf_spcs_ucp_machinegunner"];

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
_medUniform = ["rhs_uniform_acu_ucp"];
_medHelmet = ["rhsusf_ach_bare_headset", "rhsusf_ach_bare_headset_ess"];
_medRig = ["rhsusf_spcs_ucp_medic"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["rhsusf_ihadss"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_B_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_B"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhs_uniform_acu_ucp"];
_crewHelmet = ["rhsusf_cvc_alt_helmet","rhsusf_cvc_ess"];
_crewRig = ["usm_vest_pasgt_lbe_p"];
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

	//US ARMY (MTP) | MD | 2020
	case 13: 
	{
// Main weapond attachments

_attach1 = "rhsusf_acc_anpeq16a";	// Laser + Flashlight
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhsusf_acc_eotech_552_d";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "rhsusf_acc_grip3_tan";				// Bipod for basic weapon
_bipod2 = "rhsusf_acc_saw_bipod";				// Bipod for additional weapon (for SF etc.)

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_attach1,_scope1,_bipod2];		//For night
} 
else {
	_attachments = [_attach1,_scope1,_bipod2];		//For day
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
_rifle = "rhs_weap_mk17_STD";
_riflemag = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
_riflemag_tr = "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_mk17_CQC";
_carbinemag = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
_carbinemag_tr = "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "rhsusf_weap_MP7A2";
_smgmag = "rhsusf_mag_40Rnd_46x30_FMJ";
_smgmag_tr = "rhsusf_mag_40Rnd_46x30_FMJ";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_mk17_STD";
_glriflemag = "rhs_mag_20Rnd_SCAR_762x51_m61_ap";
_glriflemag_tr = "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";
//_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhsusf_weap_glock17g4";
_pistolmag = "rhsusf_mag_17Rnd_9x19_JHP";

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
_AR = "rhs_weap_m249_pip_L";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium machinegun
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51_m61_ap";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Marksman
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

// Light AT
_RAT = "rhs_weap_M136";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HE";
_MAT_sight = "rhs_optic_maaws";
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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_Kitbag_mcamo";
_bagmedium = "B_Carryall_mcamo";
_baglarge =  "B_Bergen_mcamo_F";

_bagSupSmall = "B_Kitbag_cbr";
_bagSupMedium = "B_Carryall_cbr";
_bagSupLarge =  "B_Bergen_mcamo_F";

_bagMs = "rhsusf_assault_eagleaiii_ocp";	//Backpack for medic
_bagMm = "rhsusf_assault_eagleaiii_ocp";	//Backpack for medic
_bagMl = "rhsusf_assault_eagleaiii_ocp";	//Backpack for medic

_bagRadio = "tfw_ilbe_coy";
_bagTL = "tfw_ilbe_dd_coy";

_bagENGs = "B_AssaultPack_blk";
_bagENGm = "UK3CB_CW_US_B_LATE_B_RIF_04";
_bagENGl = "B_TacticalPack_blk";

_bagMAT = "B_Bergen_mcamo_F";	// Plecak dla MAT

_bagSF = "rhsusf_assault_eagleaiii_coy";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_rhsusf_B_BACKPACK";					// 
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
_baseUniform = ["rhs_uniform_cu_ocp"];
_baseHelmet = ["rhsusf_ach_helmet_ocp", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ess_ocp"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhsusf_iotv_ocp_Teamleader","rhsusf_iotv_ocp_Squadleader"];
_engRig = ["rhsusf_iotv_ocp_Repair"];
_lightRig = ["rhsusf_iotv_ocp_Rifleman"];
_mediumRig = ["rhsusf_iotv_ocp_Rifleman"];
_heavyRig = ["rhsusf_iotv_ocp_SAW"];

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
_medUniform = ["rhs_uniform_cu_ocp"];
_medHelmet = ["rhsusf_ach_bare_tan_headset", "rhsusf_ach_bare_tan_headset_ess"];
_medRig = ["rhsusf_iotv_ocp_Medic"];
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
_crewUniform = ["rhs_uniform_acu_oefcp"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
_crewRig = ["rhsusf_spcs_ocp_crewman"];
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

	//USMC (WD) | MD | 2010-15
	case 14: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
_attach3 = "rhsusf_acc_anpeq16a_light";				// Laser + Flashlight

_silencer1 = "rhsusf_acc_eotech_552";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhsusf_acc_eotech_552";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "rhsusf_acc_saw_bipod";				// Bipod for basic weapon
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
_hg_silencer1 = "muzzle_snds_acp";
_hg_attach1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "rhs_weap_m16a4_carryhandle";
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_m4_carryhandle";
_carbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbinemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_MP5";
_smgmag = "UK3CB_9x30Rnd";
_smgmag_tr = "UK3CB_9x30Rnd";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_m16a4_carryhandle_M203";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhsusf_weap_m1911a1";
_pistolmag = "rhsusf_mag_7x45acp_MHP";

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
_AR = "rhs_weap_m249_pip_ris";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium machinegun
_MMG = "rhs_weap_m240B";
_MMGmag = "rhsusf_100Rnd_762x51_m61_ap";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Marksman
_DMrifle = "rhs_weap_sr25_ec";
_DMriflemag = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";

// Light AT
_RAT = "rhs_weap_M136";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_smaw_green";
_MATmag1 = "rhs_mag_smaw_HEAA";
_MATmag2 = "rhs_mag_smaw_HEDP";
_MAT_sight = "rhs_weap_optic_smaw";
_MATsptr = "rhs_mag_smaw_SR";

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
_SNrifle = "rhs_weap_M107_lc";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_AssaultPack_cbr";
_bagmedium = "B_Kitbag_cbr";
_baglarge =  "B_Carryall_cbr";

_bagSupSmall = "B_AssaultPack_rgr";
_bagSupMedium = "B_Kitbag_rgr";
_bagSupLarge =  "B_Carryall_oli";

_bagMs = "rhsusf_assault_eagleaiii_coy";	//Backpack for medic
_bagMm = "rhsusf_assault_eagleaiii_coy";	//Backpack for medic
_bagMl = "rhsusf_assault_eagleaiii_coy";	//Backpack for medic

_bagRadio = "tfw_ilbe_wd";
_bagTL = "tfw_ilbe_dd_wd";

_bagENGs = "UK3CB_CW_US_B_LATE_B_RIF_04";
_bagENGm = "UK3CB_CW_US_B_LATE_B_RIF_04";
_bagENGl = "UK3CB_CW_US_B_LATE_B_RIF_04";

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
_baseUniform = ["rhs_uniform_FROG01_wd"];
_baseHelmet = ["rhsusf_lwh_helmet_marpatwd", "rhsusf_lwh_helmet_marpatwd_blk_ess", "rhsusf_lwh_helmet_marpatwd_headset_blk2","rhsusf_lwh_helmet_marpatwd_headset_blk"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhsusf_spc_teamleader","rhsusf_spc_squadleader"];
_engRig = ["rhsusf_spc_marksman"];
_lightRig = ["rhsusf_spc_light"];
_mediumRig = ["rhsusf_spc_rifleman","rhsusf_spc_iar"];
_heavyRig = ["rhsusf_spc_mg"];

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
_medUniform = ["rhs_uniform_FROG01_wd"];
_medHelmet = ["rhsusf_lwh_helmet_marpatwd_headset", "rhsusf_lwh_helmet_marpatwd_ess"];
_medRig = ["rhsusf_spc_corpsman"];
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
_crewUniform = ["rhs_uniform_FROG01_wd"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];
_crewRig = ["rhsusf_spc_crewman"];
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
_ghillieUniform = ["U_B_FullGhillie_lsh"];
_ghillieHelmet = [];
_ghillieRig = ["rhsusf_spc_sniper"];
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

	//USMC (DS) | MD | 2010-15
	case 15: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
_attach3 = "rhsusf_acc_anpeq16a_light";				// Laser + Flashlight

_silencer1 = "rhsusf_acc_eotech_552";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhsusf_acc_eotech_552";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "rhsusf_acc_saw_bipod";				// Bipod for basic weapon
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
_hg_silencer1 = "muzzle_snds_acp";
_hg_attach1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic weapon (its for most of basic units, like rifleman etc.)
_rifle = "rhs_weap_m16a4_carryhandle";
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_m4_carryhandle";
_carbinemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_carbinemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "UK3CB_MP5";
_smgmag = "UK3CB_9x30Rnd";
_smgmag_tr = "UK3CB_9x30Rnd";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_m16a4_carryhandle_M203";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol (for everyone YAY!)
_pistol = "rhsusf_weap_m1911a1";
_pistolmag = "rhsusf_mag_7x45acp_MHP";

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
_AR = "rhs_weap_m249_pip_ris";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Medium machinegun
_MMG = "rhs_weap_m240B";
_MMGmag = "rhsusf_100Rnd_762x51_m61_ap";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Marksman
_DMrifle = "rhs_weap_sr25_ec";
_DMriflemag = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";

// Light AT
_RAT = "rhs_weap_M136";
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "rhs_weap_smaw_green";
_MATmag1 = "rhs_mag_smaw_HEAA";
_MATmag2 = "rhs_mag_smaw_HEDP";
_MAT_sight = "rhs_weap_optic_smaw";
_MATsptr = "rhs_mag_smaw_SR";

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
_SNrifle = "rhs_weap_M107_lc";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_AssaultPack_cbr";
_bagmedium = "B_Kitbag_cbr";
_baglarge =  "B_Carryall_cbr";

_bagSupSmall = "B_AssaultPack_cbr";
_bagSupMedium = "UK3CB_BAF_B_Kitbag_TAN";
_bagSupLarge =  "UK3CB_BAF_B_Carryall_TAN";

_bagMs = "rhsusf_assault_eagleaiii_coy";	//Backpack for medic
_bagMm = "rhsusf_assault_eagleaiii_coy";	//Backpack for medic
_bagMl = "rhsusf_assault_eagleaiii_coy";	//Backpack for medic

_bagRadio = "tfw_ilbe_d";
_bagTL = "tfw_ilbe_dd_d";

_bagENGs = "UK3CB_CW_US_B_LATE_B_RIF_04";
_bagENGm = "UK3CB_CW_US_B_LATE_B_RIF_04";
_bagENGl = "UK3CB_CW_US_B_LATE_B_RIF_04";

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
_baseUniform = ["rhs_uniform_FROG01_d"];
_baseHelmet = ["rhsusf_lwh_helmet_marpatd", "rhsusf_lwh_helmet_marpatd_ess", "rhsusf_lwh_helmet_marpatd_headset"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhsusf_spc_teamleader","rhsusf_spc_squadleader"];
_engRig = ["rhsusf_spc_marksman"];
_lightRig = ["rhsusf_spc_light"];
_mediumRig = ["rhsusf_spc_rifleman","rhsusf_spc_iar"];
_heavyRig = ["rhsusf_spc_mg"];

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
_medUniform = ["rhs_uniform_FROG01_d"];
_medHelmet = ["rhsusf_mich_helmet_marpatd", "rhsusf_mich_helmet_marpatd_headset"];
_medRig = ["rhsusf_spc_corpsman"];
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
_crewUniform = ["rhs_uniform_FROG01_d"];
_crewHelmet = ["rhsusf_cvc_ess","rhsusf_cvc_alt_helmet"];
_crewRig = ["rhsusf_spc_crewman"];
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
_ghillieUniform = ["U_B_FullGhillie_lsh"];
_ghillieHelmet = [];
_ghillieRig = ["rhsusf_spc_sniper"];
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