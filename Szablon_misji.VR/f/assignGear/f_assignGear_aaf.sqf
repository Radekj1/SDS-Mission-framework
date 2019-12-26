// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

1. AAF 2015 (U)
	
*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Indfor;
// ====================================================================================

//Definicje przedmiotów

// Sprzet medyczny
_personalAidKit = "ACE_personalAidKit";		// Personal Aid Kit
_surgicalKit = "ACE_surgicalKit";			// Surgical Kit
_AED = "KAT_X_AED";							// AED from KAT
//_AED = "adv_aceCPR_AED";					// AED from ACE
_splint = "adv_aceSplint_splint";			// Splint

_tubeOld = "KAT_guedel";					//
_tubeNew = "KAT_larynx";                    //

_bandage = "ACE_fieldDressing";				// Field Dressing for Infantry
_bandage_elastic = "ACE_elasticBandage";	// Elastic Bandage
_bandage_packing = "ACE_packingBandage";	// Packing Bandage
_bandage_quikclot = "ACE_quikclot";			// QuikClot
_tourniquet ="ACE_tourniquet";				// Tourniquet

_epinephrine = "ACE_epinephrine";			// Epinephirne (Increases HR)
_morphine = "ACE_morphine";					// Morphine (Decreases pain, decreases blood presure)
_adenosine = "ACE_adenosine";				// Adenosine (Deacreases HR)
_atropine = "ACE_atropine";					// Atropine (Deacreases HR)

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

//Radios ACRE2
_radioSR = "ACRE_PRC343";
_radioMR = "ACRE_PRC152";
_radioLR = "ACRE_PRC77";

//Usefull staff
_earplugs = "ACE_EarPlugs";
_IRstrobe = "ACE_IR_Strobe_Item";
_latarka = "ACE_Flashlight_XL50";
_lornetkaAM = "ACE_Vector";
_lornetkaFTL = "Binocular";
_lornetkaRTO = "UK3CB_BAF_Soflam_Laserdesignator";
_GPS = "ACE_microDAGR";
_handcuffs = "ACE_CableTie";
_worek = "ACE_bodyBag";
_huntIR = "ACE_HuntIR_M203";
_huntIR_tab = "ACE_HuntIR_monitor";

// Flares
_flarewhite = "ACE_HandFlare_White";
_flarered = "ACE_HandFlare_Red";
_flareyellow = "ACE_HandFlare_Yellow";
_flaregreen = "ACE_HandFlare_Green";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

//Somke Grenades
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadered = "SmokeShellRed";

// Hand Grenades
_grenade = "HandGrenade";
_mgrenade = "ACE_M84";

// GL Smokes
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// GL Flares
_glflarewhite = "CUP_1Rnd_StarFlare_White_M203";
_glflarered = "CUP_1Rnd_StarFlare_Red_M203";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "CUP_1Rnd_StarFlare_Green_M203";

//Staff in creates
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

// Mechanics/Sappers
_ATmine = "ATMine_Range_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";
_mineDetector = "ACE_VMM3";

// Nighvison
_nvg = "CUP_NVG_PVS15_black";

//Konstruktor BUILDERA
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
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Green";
_glmag = "UK3CB_BAF_1Rnd_HE_Grenade_Shell";

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