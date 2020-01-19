// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

1. AAF 2015 (U)
2. SAF (WD) | CW |
3. SAF (WD) | MD |
4. SAF (DS) | MD |
5. SAF UN (WD) | MD |
6. SAF UN (DS) | MD |
7. SAF (WD) | U |
	
*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Indfor;
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
Builder ={	
	_backpack = {
		_typeofBackPack = _this select 0;
		_loadout = f_param_backpacks;
		if (count _this > 1) then {_loadout = _this select 1};
		switch (_typeofBackPack) do
		{
			#include "f_assignGear_aaf_b.sqf";
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
		#include "f_assignGear_aaf_builder.sqf";
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
			(unitBackpack _unit) addItemCargoGlobal [_chemgreen,2];
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

	//AAF 2015 U
	case 1: 
	{
// Main weapond attachments		
_attach1 = "acc_pointer_IR";		// Laser
_attach2 = "acc_flashlight";			// Flashlight
_attach3 = "rhsusf_acc_anpeq15_wmx";		// Flashlight+Laser 

_silencer1 = "muzzle_snds_B";			// Silencer for basic weapon
_silencer2 = "rhsusf_acc_nt4_black";		// Silencer for additional weapon (for SF etc.)


_scope1 = "UK3CB_BAF_SUIT";			// Basic scope
_scope2 = "optic_Aco";			// Additional scope (for SF etc.)
_scope3 = "optic_SOS";				// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";			// Bipod for basic weapon
_bipod2 = "bipod_02_F_blk";				// Bipod for additional weapon (for SF etc.)

//What attachemnts will be added 

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then 
{								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = []; 		//NOC
} else 
{
	_attachments = []; 		//DZIEŃ 			
};

/*
[] = no attachments will be added
[_attach1,_scope1] = add stated attachments 
false =  nothing will change, if weapon has scope by default it will stay
*/

// ====================================================================================

// Secondary weaopn attachments
_hg_silencer1 = "muzzle_snds_L";				//silencer
_hg_attach1 = "CUP_acc_Glock17_Flashlight";     //flashlight
_hg_scope1 = "optic_MRD";						// scope
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic Weapon (used by most of basic units, e.g Rifleman)
_rifle = "UK3CB_BAF_L1A1";
_riflemag = "UK3CB_BAF_762_20Rnd";
_riflemag_tr = "UK3CB_BAF_762_20Rnd_T";

// Light/Short version (used by specialiesed units e.g Medic)
_carbine = "UK3CB_BAF_L1A1";
_carbinemag = "UK3CB_BAF_762_20Rnd";
_carbinemag_tr = "UK3CB_BAF_762_20Rnd_T";

// SMG (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "UK3CB_BAF_L91A1";
_smgmag = "UK3CB_BAF_9_30Rnd";
_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";

// GL (used by FTL,TL,CO,PLT and Grenadier)
_glrifle = "UK3CB_BAF_L119A1_UKUGL";
_glriflemag = "UK3CB_BAF_556_30Rnd";
_glriflemag_tr = "UK3CB_BAF_556_30Rnd_T";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistol 
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_JHP";


// Siły specjalne
_SFWepTL = "ws_aaf_F2000_GL";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFWepM = "rhs_weap_minimi_para_railed";
_SFMagM = "rhsusf_100Rnd_556x45_M855_soft_pouch";

_SFWepR = "ws_aaf_F2000";
_SFMagR = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";


// ====================================================================================

// Specialist equipment

// LMG
_AR = "rhs_weap_minimi_para_railed";
_ARmag = "rhsusf_100Rnd_556x45_M855_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_M855_soft_pouch";

// MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Marksman
_DMrifle = "rhs_weap_m40a5";
_DMriflemag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";

// LAT
_RAT = "rhs_weap_M136";
//_RATmag = "rhs_rpg26_mag";

// MAT
_MAT = "ws_aaf_gustaf";
_MATmag1 = "gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf";
_MATmag2 = "gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf";
//_MAT_sight = "CUP_optic_PGO7V3";

// AA Launcher
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// HAT
//_HAT = "CUP_launch_Metis";
//_HATmag1 = "CUP_AT13_M";
//_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m40a5";
_SNrifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";


// ====================================================================================

// Bagpacks

parachute = "B_Parachute";

_bagsmall = "ws_aaf_pack_light";
_bagmedium = "ws_aaf_pack_field";
_baglarge =  "ws_aaf_pack_alice";

_bagSupSmall = "ws_aaf_pack_field";
_bagSupMedium = "ws_aaf_pack_field";
_bagSupLarge =  "ws_aaf_pack_alice";

_bagMs = "ws_aaf_pack_light";	//Backpack for medic
_bagMm = "ws_aaf_pack_field";	//Backpack for medic
_bagMl = "ws_aaf_pack_alice";	//Backpack for medic

_bagRadio = "tfw_ilbe_coy";
_bagTL = "B_FieldPack_blk";

_bagENGs = "ws_aaf_pack_light";
_bagENGm = "ws_aaf_pack_field";
_bagENGl = "ws_aaf_pack_alice";

_bagMAT = "ws_aaf_pack_alice";	// Plecak dla MAT

_bagSF = "ws_aaf_pack_field";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "I_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "rhs_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "rhs_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "rhs_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "rhs_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baggmgg = "RHS_Mk19_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Uniforms, Vests etc.

// Basic Uniforms
// Equipment is randomly chosen from the list
_baseUniform = ["u_ws_aaf_m93_lizard"];
_baseHelmet = ["h_ws_aaf_pasgt_lizard_ess_bare","h_ws_aaf_pasgt_lizard", "h_ws_aaf_pasgt_lizard_ess"];
_baseGlasses = [];

// Vest
_slRig = ["v_ws_aaf_carrierIA2_lizard"];
_engRig = ["v_ws_aaf_carrierIA1_lizard"];
_lightRig = ["v_ws_aaf_carrierIA1_lizard"];
_mediumRig = ["v_ws_aaf_carrierIA1_lizard"];
_heavyRig = ["v_ws_aaf_carrierIA2_lizard"];

// Defines what vest specific unit will get
// If unit is not stated on the list, it will go to _medium 

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
_medUniform = ["u_ws_aaf_m93_lizard"];
_medHelmet = ["h_ws_aaf_pasgt_lizard_ess_bare","h_ws_aaf_pasgt_lizard", "h_ws_aaf_pasgt_lizard_ess"];
_medRig = ["v_ws_aaf_carrierIA2_lizard"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["u_ws_aaf_m93_olive"];
_pilotHelmet = ["h_ws_aaf_hgu56p_visor","h_ws_aaf_hgu56p"];
_pilotRig = ["v_ws_aaf_TacVest_olive"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_I_pilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_I"];
_JPilotRig = ["v_ws_aaf_TacVest_olive"];
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
_SFUniform =  ["u_ws_aaf_m93_digi_commando"];
_SFHelmet = ["h_ws_aaf_pasgt_digi_ess","h_ws_aaf_pasgt_digi_ess_bare","h_ws_aaf_pasgt_digi"];
_SFRig = ["v_ws_aaf_carrierIA1_digi","v_ws_aaf_carrierIA2_digi"];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
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

	// Przedmioty uniwersalne dla klas
	// Dodanie przedmiotów do każdej jednstki (gracza)
	call Medical;

	};

// ====================================================================================	
	//WYWOŁANIE BUILDERA
	call Builder;
	
	//Dodanie nocnego wyposażenia
	call Night_Eq_No_NVG;
		
};
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//SAF (WD) | CW |
	case 2: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "rhs_acc_pso1m2";					// Sniper scope

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
_rifle = "rhs_weap_m70b3n";
_riflemag = "rhssaf_30Rnd_762x39mm_M67";
_riflemag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_m70ab2";
_carbinemag = "rhssaf_30Rnd_762x39mm_M67";
_carbinemag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "rhs_weap_scorpion";
_smgmag = "rhsgref_20rnd_765x17_vz61";
_smgmag_tr = "rhsgref_20rnd_765x17_vz61";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_m70b3n_pbg40";
_glriflemag = "rhssaf_30Rnd_762x39mm_M67";
_glriflemag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";
_glmag = "rhs_VOG25";

// Pistol (for everyone YAY!)
_pistol = "rhs_weap_tt33";
_pistolmag = "rhs_mag_762x25_8";

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
_MMG = "rhs_weap_mg42";
_MMGmag = "rhsgref_50Rnd_792x57_SmE_drum";
_MMGmag_tr = "rhsgref_50Rnd_792x57_SmK_alltracers_drum";

// Marksman
_DMrifle = "rhs_weap_m70b3n";
_DMriflemag = "rhssaf_30Rnd_762x39mm_M67";

// Light AT
_RAT = "rhs_weap_m80";
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

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m76";
_SNrifleMag = "rhsgref_10Rnd_792x57_m76";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "rhs_sidor";
_bagmedium = "UK3CB_B_Fieldpack";
_baglarge =  "UK3CB_B_Alice_K";

_bagSupSmall = "UK3CB_CHC_C_B_HIKER";
_bagSupMedium = "UK3CB_B_Alice_Bedroll_K";
_bagSupLarge =  "UK3CB_B_Alice_Bedroll_K";

_bagMs = "rhs_medic_bag";	//Backpack for medic
_bagMm = "rhs_medic_bag";	//Backpack for medic
_bagMl = "rhs_medic_bag";	//Backpack for medic

_bagRadio = "UK3CB_B_B_Radio_Backpack";
_bagTL = "UK3CB_UN_B_B_ASS";

_bagENGs = "rhs_sidor";
_bagENGm = "UK3CB_CHC_C_B_HIKER";
_bagENGl = "UK3CB_CHC_C_B_HIKER";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_DShkM_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_DShkM_TripodLow_Bag";			// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_AGS30_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhssaf_uniform_m93_oakleaf"];
_baseHelmet = ["rhssaf_helmet_m59_85_nocamo"];
_baseGlasses = [];

// Kamizelki
_slRig = ["UK3CB_V_Chestrig_2_Small_OLI"];
_engRig = ["UK3CB_V_Belt_Rig_Lite_KHK"];
_lightRig = ["rhsgref_chicom"];
_mediumRig = ["rhsgref_chicom"];
_heavyRig = ["UK3CB_V_Belt_Rig_KHK"];

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
_medUniform = ["rhssaf_uniform_m93_oakleaf"];
_medHelmet = ["rhssaf_helmet_m59_85_nocamo"];
_medRig = ["rhsgref_chicom"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhssaf_uniform_heli_pilot"];
_pilotHelmet = ["rhs_gssh18"];
_pilotRig = ["rhs_vest_commander"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["rhssaf_uniform_mig29_pilot"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = ["rhs_vest_commander"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["UK3CB_CW_SOV_O_Early_U_Tank_Crew_Uniform_02_BLK"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhs_vest_commander"];
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

	//SAF (WD) | MD |
	case 3: 
	{
// Main weapond attachments		
_attach1 = "acc_pointer_IR";		// Laser
_attach2 = "acc_flashlight";			// Flashlight
_attach3 = "rhsusf_acc_anpeq15_wmx";		// Flashlight+Laser 

_silencer1 = "muzzle_snds_B";			// Silencer for basic weapon
_silencer2 = "rhsusf_acc_nt4_black";		// Silencer for additional weapon (for SF etc.)


_scope1 = "UK3CB_BAF_SUIT";			// Basic scope
_scope2 = "optic_Aco";			// Additional scope (for SF etc.)
_scope3 = "rhs_acc_pso1m2";				// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";			// Bipod for basic weapon
_bipod2 = "bipod_02_F_blk";				// Bipod for additional weapon (for SF etc.)

//What attachemnts will be added 

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then 
{								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = []; 		//NOC
} else 
{
	_attachments = []; 		//DZIEŃ 			
};

/*
[] = no attachments will be added
[_attach1,_scope1] = add stated attachments 
false =  nothing will change, if weapon has scope by default it will stay
*/

// ====================================================================================

// Secondary weaopn attachments
_hg_silencer1 = "muzzle_snds_L";				//silencer
_hg_attach1 = "CUP_acc_Glock17_Flashlight";     //flashlight
_hg_scope1 = "optic_MRD";						// scope
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic Weapon (used by most of basic units, e.g Rifleman)
_rifle = "rhs_weap_m21a";
_riflemag = "rhsgref_30rnd_556x45_m21";
_riflemag_tr = "rhsgref_30rnd_556x45_m21_t";

// Light/Short version (used by specialiesed units e.g Medic)
_carbine = "rhs_weap_m21s";
_carbinemag = "rhsgref_30rnd_556x45_m21";
_carbinemag_tr = "rhsgref_30rnd_556x45_m21_t";

// SMG (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_m92";
_smgmag = "rhssaf_30Rnd_762x39mm_M67";
_smgmag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// GL (used by FTL,TL,CO,PLT and Grenadier)
_glrifle = "rhs_weap_m21a_pbg40";
_glriflemag = "rhsgref_30rnd_556x45_m21";
_glriflemag_tr = "rhsgref_30rnd_556x45_m21_t";
_glmag = "rhs_VOG25";

// Pistol 
_pistol = "rhs_weap_6p53";
_pistolmag = "rhs_18rnd_9x21mm_7N28";


// Siły specjalne
_SFWepTL = "ws_aaf_F2000_GL";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFWepM = "rhs_weap_minimi_para_railed";
_SFMagM = "rhsusf_100Rnd_556x45_M855_soft_pouch";

_SFWepR = "ws_aaf_F2000";
_SFMagR = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";


// ====================================================================================

// Specialist equipment

// LMG
_AR = "UK3CB_RPK";
_ARmag = "UK3CB_RPK_75Rnd_Drum";
_ARmag_tr = "UK3CB_RPK_75Rnd_Drum_T";

// MMG
_MMG = "rhs_weap_m84";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "rhs_weap_m76";
_DMriflemag = "rhsgref_10Rnd_792x57_m76";

// LAT
_RAT = "rhs_weap_m80";
//_RATmag = "rhs_rpg26_mag";

// MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// AA Launcher
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// HAT
//_HAT = "CUP_launch_Metis";
//_HATmag1 = "CUP_AT13_M";
//_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m40a5";
_SNrifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";


// ====================================================================================

// Bagpacks

parachute = "B_Parachute";

_bagsmall = "rhsusf_falconii";
_bagmedium = "rhssaf_kitbag_digital";
_baglarge =  "rhssaf_kitbag_digital";

_bagSupSmall = "rhssaf_kitbag_smb";
_bagSupMedium = "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";
_bagSupLarge =  "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";

_bagMs = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMm = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMl = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic

_bagRadio = "tfw_ilbe_gr";
_bagTL = "rhsusf_falconii";

_bagENGs = "rhsusf_falconii";
_bagENGm = "rhssaf_kitbag_smb";
_bagENGl = "rhsgref_hidf_alicepack";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "ws_aaf_pack_field";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "I_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_Kord_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "RHS_Kornet_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_Kornet_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_AGS30_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Uniforms, Vests etc.

// Basic Uniforms
// Equipment is randomly chosen from the list
_baseUniform = ["rhssaf_uniform_m10_digital"];
_baseHelmet = ["rhssaf_helmet_m97_digital", "rhssaf_helmet_m97_digital_black_ess", "rhssaf_helmet_m97_digital_black_ess_bare", "rhssaf_helmet_m97_olive_nocamo_black_ess_bare"];
_baseGlasses = [];

// Vest
_slRig = ["rhssaf_vest_md99_digital_rifleman_radio"];
_engRig = ["rhssaf_vest_md99_digital_rifleman"];
_lightRig = ["rhssaf_vest_md99_digital_rifleman"];
_mediumRig = ["rhssaf_vest_md12_m70_rifleman","rhssaf_vest_md12_digital"];
_heavyRig = ["rhssaf_vest_md12_digital"];

// Defines what vest specific unit will get
// If unit is not stated on the list, it will go to _medium 

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
_medUniform = ["rhssaf_uniform_m10_digital"];
_medHelmet = ["rhssaf_helmet_m97_digital", "rhssaf_helmet_m97_digital_black_ess", "rhssaf_helmet_m97_digital_black_ess_bare", "rhssaf_helmet_m97_olive_nocamo_black_ess_bare"];
_medRig = ["rhssaf_vest_md12_m70_rifleman","rhssaf_vest_md12_digital"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhssaf_uniform_heli_pilot"];
_pilotHelmet = ["rhs_zsh7a_mike_green_alt","rhs_zsh7a_mike_green"];
_pilotRig = ["rhssaf_vest_md99_digital_rifleman"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["rhssaf_uniform_mig29_pilot"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = ["rhssaf_vest_md99_digital"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhssaf_uniform_m93_oakleaf"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhssaf_vest_md98_digital"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["u_ws_aaf_m93_digi_commando"];
_SFHelmet = ["h_ws_aaf_pasgt_digi_ess","h_ws_aaf_pasgt_digi_ess_bare","h_ws_aaf_pasgt_digi"];
_SFRig = ["v_ws_aaf_carrierIA1_digi","v_ws_aaf_carrierIA2_digi"];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
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

	// Przedmioty uniwersalne dla klas
	// Dodanie przedmiotów do każdej jednstki (gracza)
	call Medical;

	};

// ====================================================================================	
	//WYWOŁANIE BUILDERA
	call Builder;
	
	//Dodanie nocnego wyposażenia
	call Night_Eq_NVG;
		
};

//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//SAF (DS) | MD |
	case 4: 
	{
// Main weapond attachments		
_attach1 = "acc_pointer_IR";		// Laser
_attach2 = "acc_flashlight";			// Flashlight
_attach3 = "rhsusf_acc_anpeq15_wmx";		// Flashlight+Laser 

_silencer1 = "muzzle_snds_B";			// Silencer for basic weapon
_silencer2 = "rhsusf_acc_nt4_black";		// Silencer for additional weapon (for SF etc.)


_scope1 = "UK3CB_BAF_SUIT";			// Basic scope
_scope2 = "optic_Aco";			// Additional scope (for SF etc.)
_scope3 = "rhs_acc_pso1m2";				// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";			// Bipod for basic weapon
_bipod2 = "bipod_02_F_blk";				// Bipod for additional weapon (for SF etc.)

//What attachemnts will be added 

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then 
{								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = []; 		//NOC
} else 
{
	_attachments = []; 		//DZIEŃ 			
};

/*
[] = no attachments will be added
[_attach1,_scope1] = add stated attachments 
false =  nothing will change, if weapon has scope by default it will stay
*/

// ====================================================================================

// Secondary weaopn attachments
_hg_silencer1 = "muzzle_snds_L";				//silencer
_hg_attach1 = "CUP_acc_Glock17_Flashlight";     //flashlight
_hg_scope1 = "optic_MRD";						// scope
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic Weapon (used by most of basic units, e.g Rifleman)
_rifle = "rhs_weap_m21a";
_riflemag = "rhsgref_30rnd_556x45_m21";
_riflemag_tr = "rhsgref_30rnd_556x45_m21_t";

// Light/Short version (used by specialiesed units e.g Medic)
_carbine = "rhs_weap_m21s";
_carbinemag = "rhsgref_30rnd_556x45_m21";
_carbinemag_tr = "rhsgref_30rnd_556x45_m21_t";

// SMG (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_m92";
_smgmag = "rhssaf_30Rnd_762x39mm_M67";
_smgmag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// GL (used by FTL,TL,CO,PLT and Grenadier)
_glrifle = "rhs_weap_m21a_pbg40";
_glriflemag = "rhsgref_30rnd_556x45_m21";
_glriflemag_tr = "rhsgref_30rnd_556x45_m21_t";
_glmag = "rhs_VOG25";

// Pistol 
_pistol = "rhs_weap_6p53";
_pistolmag = "rhs_18rnd_9x21mm_7N28";


// Siły specjalne
_SFWepTL = "ws_aaf_F2000_GL";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFWepM = "rhs_weap_minimi_para_railed";
_SFMagM = "rhsusf_100Rnd_556x45_M855_soft_pouch";

_SFWepR = "ws_aaf_F2000";
_SFMagR = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";


// ====================================================================================

// Specialist equipment

// LMG
_AR = "UK3CB_RPK";
_ARmag = "UK3CB_RPK_75Rnd_Drum";
_ARmag_tr = "UK3CB_RPK_75Rnd_Drum_T";

// MMG
_MMG = "rhs_weap_m84";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "rhs_weap_m76";
_DMriflemag = "rhsgref_10Rnd_792x57_m76";

// LAT
_RAT = "rhs_weap_m80";
//_RATmag = "rhs_rpg26_mag";

// MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// AA Launcher
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// HAT
//_HAT = "CUP_launch_Metis";
//_HATmag1 = "CUP_AT13_M";
//_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m40a5";
_SNrifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";


// ====================================================================================

// Bagpacks

parachute = "B_Parachute";

_bagsmall = "B_AssaultPack_cbr";
_bagmedium = "B_Kitbag_tan";
_baglarge =  "B_Kitbag_tan";

_bagSupSmall = "B_Kitbag_tan";
_bagSupMedium = "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";
_bagSupLarge =  "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";

_bagMs = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMm = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMl = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic

_bagRadio = "tfw_ilbe_coy";
_bagTL = "B_AssaultPack_cbr";

_bagENGs = "B_AssaultPack_cbr";
_bagENGm = "rhssaf_kitbag_smb";
_bagENGl = "rhsgref_hidf_alicepack";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_Kitbag_tan";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "I_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_Kord_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "RHS_Kornet_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_Kornet_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_AGS30_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Uniforms, Vests etc.

// Basic Uniforms
// Equipment is randomly chosen from the list
_baseUniform = ["rhssaf_uniform_m10_digital_desert"];
_baseHelmet = ["rhssaf_helmet_m97_digital", "rhssaf_helmet_m97_digital_black_ess", "rhssaf_helmet_m97_digital_black_ess_bare", "rhssaf_helmet_m97_olive_nocamo_black_ess_bare", "rhssaf_helmet_m97_olive_nocamo_black_ess", "rhssaf_helmet_m97_olive_nocamo"];
_baseGlasses = [];

// Vest
_slRig = ["rhssaf_vest_md99_digital_rifleman_radio"];
_engRig = ["rhssaf_vest_md99_digital_rifleman"];
_lightRig = ["rhssaf_vest_md99_digital_rifleman"];
_mediumRig = ["rhssaf_vest_md12_m70_rifleman", "rhssaf_vest_md12_digital", "rhssaf_vest_md12_digital_desert"];
_heavyRig = ["rhssaf_vest_md12_digital", "rhssaf_vest_md12_digital_desert"];

// Defines what vest specific unit will get
// If unit is not stated on the list, it will go to _medium 

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
_medUniform = ["rhssaf_uniform_m10_digital_desert"];
_medHelmet = ["rhssaf_helmet_m97_olive_nocamo_black_ess_bare", "rhssaf_helmet_m97_olive_nocamo_black_ess", "rhssaf_helmet_m97_olive_nocamo"];
_medRig = ["rhssaf_vest_md12_digital_desert"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhssaf_uniform_heli_pilot"];
_pilotHelmet = ["rhs_zsh7a_mike_green_alt","rhs_zsh7a_mike_green"];
_pilotRig = ["rhssaf_vest_md99_digital_rifleman"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["rhssaf_uniform_mig29_pilot"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = ["rhssaf_vest_md99_digital"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhssaf_uniform_m10_digital_desert"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhssaf_vest_md98_digital"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["u_ws_aaf_m93_digi_commando"];
_SFHelmet = ["h_ws_aaf_pasgt_digi_ess","h_ws_aaf_pasgt_digi_ess_bare","h_ws_aaf_pasgt_digi"];
_SFRig = ["v_ws_aaf_carrierIA1_digi","v_ws_aaf_carrierIA2_digi"];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
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

	// Przedmioty uniwersalne dla klas
	// Dodanie przedmiotów do każdej jednstki (gracza)
	call Medical;

	};

// ====================================================================================	
	//WYWOŁANIE BUILDERA
	call Builder;
	
	//Dodanie nocnego wyposażenia
	call Night_Eq_NVG;
		
};


//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//SAF UN (WD) | MD |
	case 5: 
	{
// Main weapond attachments		
_attach1 = "acc_pointer_IR";		// Laser
_attach2 = "acc_flashlight";			// Flashlight
_attach3 = "rhsusf_acc_anpeq15_wmx";		// Flashlight+Laser 

_silencer1 = "muzzle_snds_B";			// Silencer for basic weapon
_silencer2 = "rhsusf_acc_nt4_black";		// Silencer for additional weapon (for SF etc.)


_scope1 = "UK3CB_BAF_SUIT";			// Basic scope
_scope2 = "optic_Aco";			// Additional scope (for SF etc.)
_scope3 = "rhs_acc_pso1m2";				// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";			// Bipod for basic weapon
_bipod2 = "bipod_02_F_blk";				// Bipod for additional weapon (for SF etc.)

//What attachemnts will be added 

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then 
{								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = []; 		//NOC
} else 
{
	_attachments = []; 		//DZIEŃ 			
};

/*
[] = no attachments will be added
[_attach1,_scope1] = add stated attachments 
false =  nothing will change, if weapon has scope by default it will stay
*/

// ====================================================================================

// Secondary weaopn attachments
_hg_silencer1 = "muzzle_snds_L";				//silencer
_hg_attach1 = "CUP_acc_Glock17_Flashlight";     //flashlight
_hg_scope1 = "optic_MRD";						// scope
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic Weapon (used by most of basic units, e.g Rifleman)
_rifle = "rhs_weap_m21a";
_riflemag = "rhsgref_30rnd_556x45_m21";
_riflemag_tr = "rhsgref_30rnd_556x45_m21_t";

// Light/Short version (used by specialiesed units e.g Medic)
_carbine = "rhs_weap_m21s";
_carbinemag = "rhsgref_30rnd_556x45_m21";
_carbinemag_tr = "rhsgref_30rnd_556x45_m21_t";

// SMG (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_m92";
_smgmag = "rhssaf_30Rnd_762x39mm_M67";
_smgmag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// GL (used by FTL,TL,CO,PLT and Grenadier)
_glrifle = "rhs_weap_m21a_pbg40";
_glriflemag = "rhsgref_30rnd_556x45_m21";
_glriflemag_tr = "rhsgref_30rnd_556x45_m21_t";
_glmag = "rhs_VOG25";

// Pistol 
_pistol = "rhs_weap_6p53";
_pistolmag = "rhs_18rnd_9x21mm_7N28";


// Siły specjalne
_SFWepTL = "ws_aaf_F2000_GL";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFWepM = "rhs_weap_minimi_para_railed";
_SFMagM = "rhsusf_100Rnd_556x45_M855_soft_pouch";

_SFWepR = "ws_aaf_F2000";
_SFMagR = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";


// ====================================================================================

// Specialist equipment

// LMG
_AR = "UK3CB_RPK";
_ARmag = "UK3CB_RPK_75Rnd_Drum";
_ARmag_tr = "UK3CB_RPK_75Rnd_Drum_T";

// MMG
_MMG = "rhs_weap_m84";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "rhs_weap_m76";
_DMriflemag = "rhsgref_10Rnd_792x57_m76";

// LAT
_RAT = "rhs_weap_m80";
//_RATmag = "rhs_rpg26_mag";

// MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// AA Launcher
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// HAT
//_HAT = "CUP_launch_Metis";
//_HATmag1 = "CUP_AT13_M";
//_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m40a5";
_SNrifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";


// ====================================================================================

// Bagpacks

parachute = "B_Parachute";

_bagsmall = "rhsusf_falconii";
_bagmedium = "rhssaf_kitbag_digital";
_baglarge =  "rhssaf_kitbag_digital";

_bagSupSmall = "rhssaf_kitbag_smb";
_bagSupMedium = "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";
_bagSupLarge =  "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";

_bagMs = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMm = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMl = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic

_bagRadio = "tfw_ilbe_gr";
_bagTL = "rhsusf_falconii";

_bagENGs = "rhsusf_falconii";
_bagENGm = "rhssaf_kitbag_smb";
_bagENGl = "rhsgref_hidf_alicepack";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "ws_aaf_pack_field";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "I_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_Kord_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "RHS_Kornet_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_Kornet_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_AGS30_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Uniforms, Vests etc.

// Basic Uniforms
// Equipment is randomly chosen from the list
_baseUniform = ["rhssaf_uniform_m10_digital"];
_baseHelmet = ["rhssaf_helmet_m97_nostrap_blue", "rhssaf_helmet_m97_nostrap_blue_tan_ess", "rhssaf_helmet_m97_nostrap_blue_tan_ess_bare"];
_baseGlasses = [];

// Vest
_slRig = ["rhssaf_vest_md99_digital_rifleman_radio"];
_engRig = ["rhssaf_vest_md99_digital_rifleman"];
_lightRig = ["rhssaf_vest_md99_digital_rifleman"];
_mediumRig = ["rhssaf_vest_md12_m70_rifleman","rhssaf_vest_md12_digital"];
_heavyRig = ["rhssaf_vest_md12_digital"];

// Defines what vest specific unit will get
// If unit is not stated on the list, it will go to _medium 

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
_medUniform = ["rhssaf_uniform_m10_digital"];
_medHelmet = ["rhssaf_helmet_m97_nostrap_blue", "rhssaf_helmet_m97_nostrap_blue_tan_ess", "rhssaf_helmet_m97_nostrap_blue_tan_ess_bare"];
_medRig = ["rhssaf_vest_md12_m70_rifleman","rhssaf_vest_md12_digital"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhssaf_uniform_heli_pilot"];
_pilotHelmet = ["rhs_zsh7a_mike_alt","rhs_zsh7a_mike"];
_pilotRig = ["rhssaf_vest_md99_digital_rifleman"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["rhssaf_uniform_mig29_pilot"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = ["rhssaf_vest_md99_digital"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhssaf_uniform_m93_oakleaf"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhssaf_vest_md98_digital"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["u_ws_aaf_m93_digi_commando"];
_SFHelmet = ["h_ws_aaf_pasgt_digi_ess","h_ws_aaf_pasgt_digi_ess_bare","h_ws_aaf_pasgt_digi"];
_SFRig = ["v_ws_aaf_carrierIA1_digi","v_ws_aaf_carrierIA2_digi"];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
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

	// Przedmioty uniwersalne dla klas
	// Dodanie przedmiotów do każdej jednstki (gracza)
	call Medical;

	};

// ====================================================================================	
	//WYWOŁANIE BUILDERA
	call Builder;
	
	//Dodanie nocnego wyposażenia
	call Night_Eq_NVG;
		
};


//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//SAF UN (DS) | MD |
	case 6: 
	{
// Main weapond attachments		
_attach1 = "acc_pointer_IR";		// Laser
_attach2 = "acc_flashlight";			// Flashlight
_attach3 = "rhsusf_acc_anpeq15_wmx";		// Flashlight+Laser 

_silencer1 = "muzzle_snds_B";			// Silencer for basic weapon
_silencer2 = "rhsusf_acc_nt4_black";		// Silencer for additional weapon (for SF etc.)


_scope1 = "UK3CB_BAF_SUIT";			// Basic scope
_scope2 = "optic_Aco";			// Additional scope (for SF etc.)
_scope3 = "rhs_acc_pso1m2";				// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";			// Bipod for basic weapon
_bipod2 = "bipod_02_F_blk";				// Bipod for additional weapon (for SF etc.)

//What attachemnts will be added 

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then 
{								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = []; 		//NOC
} else 
{
	_attachments = []; 		//DZIEŃ 			
};

/*
[] = no attachments will be added
[_attach1,_scope1] = add stated attachments 
false =  nothing will change, if weapon has scope by default it will stay
*/

// ====================================================================================

// Secondary weaopn attachments
_hg_silencer1 = "muzzle_snds_L";				//silencer
_hg_attach1 = "CUP_acc_Glock17_Flashlight";     //flashlight
_hg_scope1 = "optic_MRD";						// scope
_hg_attachments= [];

// ====================================================================================

// Weapons

// Basic Weapon (used by most of basic units, e.g Rifleman)
_rifle = "rhs_weap_m21a";
_riflemag = "rhsgref_30rnd_556x45_m21";
_riflemag_tr = "rhsgref_30rnd_556x45_m21_t";

// Light/Short version (used by specialiesed units e.g Medic)
_carbine = "rhs_weap_m21s";
_carbinemag = "rhsgref_30rnd_556x45_m21";
_carbinemag_tr = "rhsgref_30rnd_556x45_m21_t";

// SMG (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_m92";
_smgmag = "rhssaf_30Rnd_762x39mm_M67";
_smgmag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// GL (used by FTL,TL,CO,PLT and Grenadier)
_glrifle = "rhs_weap_m21a_pbg40";
_glriflemag = "rhsgref_30rnd_556x45_m21";
_glriflemag_tr = "rhsgref_30rnd_556x45_m21_t";
_glmag = "rhs_VOG25";

// Pistol 
_pistol = "rhs_weap_6p53";
_pistolmag = "rhs_18rnd_9x21mm_7N28";


// Siły specjalne
_SFWepTL = "ws_aaf_F2000_GL";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFWepM = "rhs_weap_minimi_para_railed";
_SFMagM = "rhsusf_100Rnd_556x45_M855_soft_pouch";

_SFWepR = "ws_aaf_F2000";
_SFMagR = "rhs_mag_30Rnd_556x45_M855_Stanag";

_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";


// ====================================================================================

// Specialist equipment

// LMG
_AR = "UK3CB_RPK";
_ARmag = "UK3CB_RPK_75Rnd_Drum";
_ARmag_tr = "UK3CB_RPK_75Rnd_Drum_T";

// MMG
_MMG = "rhs_weap_m84";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "rhs_weap_m76";
_DMriflemag = "rhsgref_10Rnd_792x57_m76";

// LAT
_RAT = "rhs_weap_m80";
//_RATmag = "rhs_rpg26_mag";

// MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// AA Launcher
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// HAT
//_HAT = "CUP_launch_Metis";
//_HATmag1 = "CUP_AT13_M";
//_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m40a5";
_SNrifleMag = "rhsusf_5Rnd_762x51_AICS_m118_special_Mag";


// ====================================================================================

// Bagpacks

parachute = "B_Parachute";

_bagsmall = "B_AssaultPack_cbr";
_bagmedium = "B_Kitbag_tan";
_baglarge =  "B_Kitbag_tan";

_bagSupSmall = "B_Kitbag_tan";
_bagSupMedium = "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";
_bagSupLarge =  "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";

_bagMs = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMm = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMl = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic

_bagRadio = "tfw_ilbe_coy";
_bagTL = "B_AssaultPack_cbr";

_bagENGs = "B_AssaultPack_cbr";
_bagENGm = "rhssaf_kitbag_smb";
_bagENGl = "rhsgref_hidf_alicepack";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_Kitbag_tan";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "I_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_Kord_Tripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "RHS_Kornet_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_Kornet_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "RHS_AGS30_Gun_Bag";					// used by GMG gunner
_baggmgag = "RHS_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Uniforms, Vests etc.

// Basic Uniforms
// Equipment is randomly chosen from the list
_baseUniform = ["rhssaf_uniform_m10_digital_desert"];
_baseHelmet = ["rhssaf_helmet_m97_nostrap_blue", "rhssaf_helmet_m97_nostrap_blue_tan_ess", "rhssaf_helmet_m97_nostrap_blue_tan_ess_bare"];
_baseGlasses = [];

// Vest
_slRig = ["rhssaf_vest_md99_digital_rifleman_radio"];
_engRig = ["rhssaf_vest_md99_digital_rifleman"];
_lightRig = ["rhssaf_vest_md99_digital_rifleman"];
_mediumRig = ["rhssaf_vest_md12_m70_rifleman", "rhssaf_vest_md12_digital", "rhssaf_vest_md12_digital_desert"];
_heavyRig = ["rhssaf_vest_md12_digital", "rhssaf_vest_md12_digital_desert"];

// Defines what vest specific unit will get
// If unit is not stated on the list, it will go to _medium 

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
_medUniform = ["rhssaf_uniform_m10_digital_desert"];
_medHelmet = ["rhssaf_helmet_m97_nostrap_blue", "rhssaf_helmet_m97_nostrap_blue_tan_ess", "rhssaf_helmet_m97_nostrap_blue_tan_ess_bare"];
_medRig = ["rhssaf_vest_md12_digital_desert"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhssaf_uniform_heli_pilot"];
_pilotHelmet = ["rhs_zsh7a_mike_alt","rhs_zsh7a_mike"];
_pilotRig = ["rhssaf_vest_md99_digital_rifleman"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["rhssaf_uniform_mig29_pilot"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = ["rhssaf_vest_md99_digital"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhssaf_uniform_m10_digital_desert"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhssaf_vest_md98_digital"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["u_ws_aaf_m93_digi_commando"];
_SFHelmet = ["h_ws_aaf_pasgt_digi_ess","h_ws_aaf_pasgt_digi_ess_bare","h_ws_aaf_pasgt_digi"];
_SFRig = ["v_ws_aaf_carrierIA1_digi","v_ws_aaf_carrierIA2_digi"];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_TacVest_oli"];
_ghillieGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
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

	// Przedmioty uniwersalne dla klas
	// Dodanie przedmiotów do każdej jednstki (gracza)
	call Medical;

	};

// ====================================================================================	
	//WYWOŁANIE BUILDERA
	call Builder;
	
	//Dodanie nocnego wyposażenia
	call Night_Eq_NVG;
		
};
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//SAF (WD) | U |
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
_scope3 = "rhs_acc_pso1m2";					// Sniper scope

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
_rifle = "rhs_weap_m70b3n";
_riflemag = "rhssaf_30Rnd_762x39mm_M67";
_riflemag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// Light/short version (its for units with additional equipment, like medic etc.)
_carbine = "rhs_weap_m70ab2";
_carbinemag = "rhssaf_30Rnd_762x39mm_M67";
_carbinemag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";

// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smg = "rhs_weap_scorpion";
_smgmag = "rhsgref_20rnd_765x17_vz61";
_smgmag_tr = "rhsgref_20rnd_765x17_vz61";

// GL version (mostly for commanders but also for grenadiers)
_glrifle = "rhs_weap_m70b3n_pbg40";
_glriflemag = "rhssaf_30Rnd_762x39mm_M67";
_glriflemag_tr = "rhssaf_30Rnd_762x39mm_M78_tracer";
_glmag = "rhs_VOG25";

// Pistol (for everyone YAY!)
_pistol = "rhs_weap_6p53";
_pistolmag = "rhs_18rnd_9x21mm_7N28";

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
_MMG = "rhs_weap_m84";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "rhs_weap_m70b3n";
_DMriflemag = "rhssaf_30Rnd_762x39mm_M67";

// Light AT
_RAT = "rhs_weap_m80";
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

// Heavy anti tank launcher
_HAT = "launch_B_Titan_short_F";		
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "rhs_weap_m76";
_SNrifleMag = "rhsgref_10Rnd_792x57_m76";

// ====================================================================================

// Bagpacks

parachute = "B_Parachute";

_bagsmall = "B_AssaultPack_rgr";
_bagmedium = "rhssaf_kitbag_md2camo";
_baglarge =  "rhssaf_kitbag_md2camo";

_bagSupSmall = "rhssaf_kitbag_smb";
_bagSupMedium = "B_TacticalPack_rgr";
_bagSupLarge =  "rhssaf_alice_md2camo";

_bagMs = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMm = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic
_bagMl = "UK3CB_B_US_Medic_Backpack";	//Backpack for medic

_bagRadio = "UK3CB_B_B_Radio_Backpack";
_bagTL = "UK3CB_TKA_O_B_RIF_Khk";

_bagENGs = "B_AssaultPack_sgg";
_bagENGm = "rhssaf_kitbag_smb";
_bagENGl = "rhssaf_alice_smb";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_Kitbag_sgg";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "B_UAV_01_backpack_F";					// 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "RHS_DShkM_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_DShkM_TripodLow_Bag";			// used by Heavy MG assistant gunner

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
_baseUniform = ["rhssaf_uniform_m93_oakleaf_summer"];
_baseHelmet = ["rhssaf_helmet_m97_md2camo", "rhssaf_helmet_m97_md2camo_black_ess", "rhssaf_helmet_m97_md2camo_black_ess_bare", "rhssaf_helmet_m97_oakleaf", "rhssaf_helmet_m97_oakleaf_black_ess", "rhssaf_helmet_m97_oakleaf_black_ess_bare", "rhssaf_helmet_m97_oakleaf", "rhssaf_helmet_m97_oakleaf_black_ess", "rhssaf_helmet_m97_oakleaf_black_ess_bare", "rhssaf_helmet_m97_woodland_black_ess", "rhssaf_helmet_m97_woodland_black_ess_bare", "rhssaf_helmet_m97_olive_nocamo", "rhssaf_helmet_m97_olive_nocamo_black_ess_bare"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhssaf_vest_md99_woodland_rifleman_radio", "rhssaf_vest_md99_md2camo_rifleman_radio"];
_engRig = ["rhssaf_vest_md99_woodland_radio", "rhssaf_vest_md99_md2camo_radio"];
_lightRig = ["rhssaf_vest_md99_md2camo_rifleman", "rhssaf_vest_md99_woodland_rifleman"];
_mediumRig = ["rhssaf_vest_md99_md2camo_rifleman", "rhssaf_vest_md99_woodland_rifleman", "rhssaf_vest_md98_rifleman"];
_heavyRig = ["rhssaf_vest_md99_md2camo_rifleman", "rhssaf_vest_md99_woodland_rifleman"];

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
_medUniform = ["rhssaf_uniform_m93_oakleaf_summer"];
_medHelmet = ["rhssaf_helmet_m97_woodland_black_ess_bare", "rhssaf_helmet_m97_woodland_black_ess"];
_medRig = ["rhssaf_vest_md98_rifleman"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhssaf_uniform_heli_pilot"];
_pilotHelmet = ["rhs_zsh7a_mike_green_alt","rhs_zsh7a_mike_green"];
_pilotRig = ["rhssaf_vest_md99_md2camo"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["rhssaf_uniform_mig29_pilot"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = ["rhs_vest_commander"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhssaf_uniform_m93_oakleaf_summer"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhssaf_vest_md98_woodland"];
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