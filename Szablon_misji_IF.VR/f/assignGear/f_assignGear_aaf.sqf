// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

1. UK Paratroopers []
2. UK Army []
3. US Army []
4. US Paratroopers []
5. USMC []
	
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
	for "_p" from 1 to 4 do {_unit addItem _bandage;};		// Dodanie 8 sztuk bandaży
	//_unit addItem _morphine;		// Dodanie morfiny
	//_unit addItem _epinephrine;		// Dodanie epinefryny	
	_unit linkItem "ItemMap";		// Dodanie mapy
	_unit linkItem "ItemCompass";	// Dodanie kompsu
	//_unit addItem _radioSR;			// Dodanie radia
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

	//UK Para
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
_rifle = "fow_w_leeenfield_no4mk1_redwood";
_riflemag = "fow_10Rnd_303";
_riflemag_tr = "fow_10Rnd_303";

// Light/Short version (used by specialiesed units e.g Medic)
_carbine = "fow_w_leeenfield_no4mk1_redwood";
_carbinemag = "fow_10Rnd_303";
_carbinemag_tr = "fow_10Rnd_303";

// SMG (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
//_smg = "UK3CB_BAF_L91A1";
//_smgmag = "UK3CB_BAF_9_30Rnd";
//_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";

// GL (used by FTL,TL,CO,PLT and Grenadier)
_glrifle = "fow_w_sten_mk5";
_glriflemag = "fow_32Rnd_9x19_sten";
_glriflemag_tr = "fow_32Rnd_9x19_sten";
//_glmag = "1Rnd_HE_Grenade_shell";

// Pistol 
_pistol = "LIB_Webley_mk6";
_pistolmag = "LIB_6Rnd_455";


// Siły specjalne
//_SFWepTL = "ws_aaf_F2000_GL";
//_SFMagTL = "rhs_mag_30Rnd_556x45_M855_Stanag";

//_SFWepM = "rhs_weap_minimi_para_railed";
//_SFMagM = "rhsusf_100Rnd_556x45_M855_soft_pouch";

//_SFWepR = "ws_aaf_F2000";
//_SFMagR = "rhs_mag_30Rnd_556x45_M855_Stanag";

//_SFsecendWep = "rhsusf_weap_glock17g4";
//_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";


// ====================================================================================

// Specialist equipment

// LMG
_AR = "fow_w_bren";
_ARmag = "fow_30Rnd_303_bren";
_ARmag_tr = "fow_30Rnd_303_bren";

// MMG
_MMG = "fow_w_m1919a6";
_MMGmag = "fow_30Rnd_762x63";
_MMGmag_tr = "fow_30Rnd_762x63";

// Marksman
_DMrifle = "fow_w_m1903A1_sniper";
_DMriflemag = "fow_5Rnd_762x63";

// LAT
//_RAT = "";
//_RATmag = "rhs_rpg26_mag";

// MAT
_MAT = "LIB_M1A1_Bazooka";
_MATmag1 = "LIB_1Rnd_60mm_M6";
_MATmag2 = "LIB_1Rnd_60mm_M6";
//_MAT_sight = "CUP_optic_PGO7V3";

// AA Launcher
//_SAM = "rhs_weap_fim92";
//_SAMmag = "rhs_fim92_mag";

// HAT
//_HAT = "CUP_launch_Metis";
//_HATmag1 = "CUP_AT13_M";
//_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Sniper
_SNrifle = "fow_w_m1903A1_sniper";
_SNrifleMag = "fow_5Rnd_762x63";


// ====================================================================================

// Bagpacks

parachute = "B_Parachute";

_bagsmall = "fow_b_uk_p37";
_bagmedium = "fow_b_uk_p37";
_baglarge =  "fow_b_uk_bergenpack";

_bagSupSmall = "fow_b_uk_p37";
_bagSupMedium = "fow_b_uk_p37";
_bagSupLarge =  "fow_b_uk_bergenpack";

_bagMs = "fow_b_uk_p37";	//Backpack for medic
_bagMm = "fow_b_uk_p37";	//Backpack for medic
_bagMl = "fow_b_uk_bergenpack";	//Backpack for medic

_bagRadio = "fow_b_uk_p37_radio";
_bagTL = "fow_b_uk_p37";

_bagENGs = "fow_b_uk_p37";
_bagENGm = "fow_b_uk_p37";
_bagENGl = "fow_b_uk_bergenpack";

_bagMAT = "fow_b_uk_piat";	// Plecak dla MAT

_bagSF = "fow_b_uk_p37";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "fow_b_uk_p37";					// 
_bagSOFLAM = "fow_b_uk_p37";

_baghmgg = "fow_b_uk_vickers_weapon";					// used by Heavy MG gunner
_baghmgag = "fow_b_uk_vickers_support";			// used by Heavy MG assistant gunner

_baghatg = "fow_b_uk_p37";					// used by Heavy AT gunner
_baghatag = "fow_b_uk_p37";				// used by Heavy AT assistant gunner

//_bagmtrg = "";				// used by Mortar gunner
//_bagmtrag = "";			// used by Mortar assistant gunner

_baggmgg = "fow_b_uk_p37";					// used by GMG gunner
_baggmgag = "fow_b_uk_p37";				// used by GMG assistant gunner

// ====================================================================================

// Uniforms, Vests etc.

// Basic Uniforms
// Equipment is randomly chosen from the list
_baseUniform = ["fow_u_uk_parasmock"];
_baseHelmet = ["fow_h_uk_mk2_para_camo","fow_h_uk_mk2_para"];
_baseGlasses = [];

// Vest
_slRig = ["fow_v_uk_para_sten"];
_engRig = ["fow_v_uk_para_base"];
_lightRig = ["fow_v_uk_para_base"];
_mediumRig = ["fow_v_uk_para_base"];
_heavyRig = ["fow_v_uk_para_bren"];

// Defines what vest specific unit will get
// If unit is not stated on the list, it will go to _medium 

_CO = ["co"];
_slR = ["dc", "ftl"];
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
_medUniform = ["fow_u_uk_parasmock"];
_medHelmet = ["fow_h_uk_mk2_para_camo","fow_h_uk_mk2_para"];
_medRig = ["fow_v_uk_para_base"];
_medGlasses = [];

// Commander
_CoUniform = ["fow_u_uk_parasmock"];
_CoHelmet = ["fow_h_uk_beret_para"];
_CoRig = ["fow_v_uk_para_sten"];
_CoGlasses = [];

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