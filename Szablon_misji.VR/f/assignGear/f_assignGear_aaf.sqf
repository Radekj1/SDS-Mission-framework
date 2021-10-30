// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

	1. AAF
	
*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Indfor;
// ====================================================================================

//*************************************************************************************
// Universal items definitions
//*************************************************************************************

// ====================================================================================
// Medical items

// Default Arma3 stuff
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Basic medical equipment
_personalAidKit = "ACE_personalAidKit";		// personal Aid Kit
_surgicalKit = "ACE_surgicalKit";			// surgical Kit
_worek = "ACE_bodyBag";						// body Bag
_AED = "kat_AED";
_AEDX = "kat_X_AED";
/*
_accuvac = "kat_accuvac";
_AATKit = "kat_aatKit";
_chestSeal ="kat_chestSeal";
_Pulseoximeter = "kat_Pulseoximeter";
_larynx = "kat_larynx";
_guedel = "kat_guedel";
_stethoscope = "kat_stethoscope";
_transfuseKit = "KAT_Empty_bloodIV_500";
_hstrecher = "Attachable_Helistretcher";
*/

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
_painkiller = "kat_Painkiller";

// ACE Blood/fluids
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

// Radios
_radioSR = "ACRE_PRC343";
_radioMR = "ACRE_PRC152";
_radioLR = "ACRE_PRC117F";
//_radioLR = "ACRE_PRC77"; // early Cold War/WW2

// Antenas
_antena = "ACRE_VHF30108SPIKE";
_mast = "ACRE_VHF30108MAST";
_AntenaAndMast = "ACRE_VHF30108";

// ====================================================================================
// Night equipemnt

// Basic night equipment
_nvg = "NVGogglesB_blk_F";
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

// Hand granade
_grenade = "HandGrenade";	//basic frag granade
_flashbang = "ACE_M84";		//flashbang
_flashbang9 = "ACE_CTS9";	//flashbang 9-bangs
_igrenade = "ACE_M14"; 		//incidenary
_IRgrenade = "I_IR_Grenade";

// Granaty dymne
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadered = "SmokeShellRed";

// GL Rounds
//_glmag = "1Rnd_HE_Grenade_shell";
_huntIR = "ACE_HuntIR_M203";
_huntIR_tab = "ACE_HuntIR_monitor";

// Granaty dymne do granatnika
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";
_glsmokeblue = "1Rnd_SmokeBlue_Grenade_shell";

// ====================================================================================
// Mines/Expolisved/Logi stuff

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

// Terminal UAV
_uavterminal = "B_UavTerminal";
_UAVbattery = "ACE_UAVBattery";

// Mines
_ATmine = "ATMine_Range_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

_tripMine = "APERSTripMine_Wire_Mag";
_tripFlare = "ACE_FlareTripMine_Mag";

// IED
_IED = "IEDLandSmall_Remote_Mag";
_IEDurban = "IEDUrbanSmall_Remote_Mag";

// Explosives
_satche_small = "ClaymoreDirectionalMine_Remote_Mag";
_satche_big = "DemoCharge_Remote_Mag";
_satche_extra_big = "SatchelCharge_Remote_Mag";

// ====================================================================================
// Mortar Ammo and Static Gun Ammo

// Basic ammo
_mtrHE = "ACE_1Rnd_82mm_Mo_HE";
_mtrSmoke = "ACE_1Rnd_82mm_Mo_Smoke";
_mtrFlare = "ACE_1Rnd_82mm_Mo_Illum";

// Adv ammo - not used
_mtrHEg = "ACE_1Rnd_82mm_Mo_HE_Guided";
_mtrHElg = "ACE_1Rnd_82mm_Mo_HE_LaserGuided";

// .50 ammo
_Hmag = "ace_csw_100Rnd_127x99_mag";
_HmagRed = "ace_csw_100Rnd_127x99_mag_red";

// SPG ammo
_spgOG9 = "CUP_compats_OG9_M";
_spgPG9 = "CUP_compats_PG9_M";

// TOW ammo
_towTube = "CUP_compats_TOW_M";
_tow2Tube = "CUP_compats_TOW2_M";

// GMG ammo
_20mmGMG = "ace_csw_20Rnd_20mm_G_belt";
_mk19GMG = "CUP_compats_48Rnd_40mm_MK19_M";
_AGS30GMG = "CUP_compats_29Rnd_30mm_AGS30_M";

// ====================================================================================
// Other items
_earplugs = "ACE_EarPlugs";
_handcuffs = "ACE_CableTie";
_Chemlight_Shield = "ACE_Chemlight_Shield";
_heliRope = "ACE_rope36";
_towRope = "ACE_rope3";
_sBarrel = "ACE_SpareBarrel";
_hCam = "ItemcTabHCam";
_armorPlate = "diw_armor_plates_main_plate";

// Binoculars
_lornetkaAM = "ACE_Vector";
_lornetkaFTL = "Binocular";
_lornetkaRTO = "Laserdesignator";

//Navigation & sniper stuff
_cTAB = "ItemcTab";
_cPhone = "ItemAndroid";
_GPS = "ItemMicroDAGR";
_ACE_GPS = "ACE_microDAGR";
_dagr ="ACE_DAGR";
_kestrel = "ACE_Kestrel4500";
_ATrag ="ACE_ATragMX";
_spottingScope = "ACE_SpottingScope";
_tripod = "ACE_Tripod";
_RangeCard = "ACE_RangeCard";

// Sprays
_sprayRED = "ACE_SpraypaintRed";
_sprayBLUE = "ACE_SpraypaintBlue";
_sprayGREEN = "ACE_SpraypaintGreen";
_sprayBLACK	 = "ACE_SpraypaintBlack";

// ====================================================================================
// Food etc.

_Canteen = "ACE_Canteen";
_waterBottle = "ACE_WaterBottle";
_MRE1 = "ACE_MRE_BeefStew";

//*************************************************************************************
// Konstruktor BUILDERA (rather avoid this)
//*************************************************************************************

Builder = {	
	_backpack = {
		_typeofBackPack = _this select 0;
		_loadout = f_param_backpacks;
		if (count _this > 1) then {_loadout = _this select 1;};
		switch (_typeofBackPack) do
		{
			#include "f_assignGear_aaf_b.sqf";
		};
	};

// ====================================================================================
// SETUP CRATE
	_crate = {
		_typeofCrate = _this select 0;
		switch (_typeofCrate) do
		{
			#include "f_assignGear_crate.sqf";
		};
	};

// ====================================================================================
// WYWOŁANIE BUILDERA
		#include "f_assignGear_aaf_builder.sqf";
};	

// ====================================================================================
// Add basic stuff for players	
Medical = {
	for "_p" from 1 to 8 do {_unit addItem _bandage;};		// Add 8 pieces of bandages
	_unit addItem _painkiller;								// Add painkillers
	_unit addItem _epinephrine;								// Add Epi
	_unit linkItem "ItemMap";								// Add map - comment this out if You dont want units to have it
	_unit linkItem "ItemCompass";							// Add compas - comment this out if You dont want units to have it
	_unit addItem _radioSR;									// Add radio - comment this out if You dont want units to have it
	_unit linkItem "ItemWatch";								// Add watch - comment this out if You dont want units to have it
	_unit addItem _earplugs;								// Add earplugs
};

// ====================================================================================
// Night equipment when players have NVGs
Night_Eq_NVG = {
	_loadout_night_day = f_param_night_day_wyp;
		
	if (_loadout_night_day == 0) then {
		if(_typeofUnit != "ps") then {
			_unit linkItem _nvg;			// Adding NVG
			_unit addItem _IRstrobe;		// Adding IR strobe
			_unit addItem _IRstrobe;		// Adding IR strobe
			_unit addItem _latarka;			// Adding map flashlight
			(unitBackpack _unit) addItemCargoGlobal [_chemgreen,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarered,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarewhite,3];
		};
		
		if (_typeofUnit == "ftl" || _typeofUnit == "rto" || _typeofUnit == "gren") then {
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarewhite,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarered,4];
		};
		
		if (_typeofUnit == "pp" || _typeofUnit == "ps" || _typeofUnit == "pcc" || _typeofUnit == "pc" || _typeofUnit == "sftl" || _typeofUnit == "sfm" || _typeofUnit == "sfat" || _typeofUnit == "sfs") then {
			_unit linkItem _nvg;			// Dodanie noktowizji	
		};
	};
};

// ====================================================================================
// Night equipment when players dont have NVGs
Night_Eq_No_NVG = {
	_loadout_night_day = f_param_night_day_wyp;
		
	if (_loadout_night_day == 0) then {
		if(_typeofUnit != "ps") then {
			_unit addItem _latarka;			// Adding map flashlight
			(unitBackpack _unit) addItemCargoGlobal [_chemgreen,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarered,2];
			(unitBackpack _unit) addItemCargoGlobal [_flarewhite,3];
		};
		
		if (_typeofUnit == "ftl" || _typeofUnit == "rto" || _typeofUnit == "gren") then {
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarewhite,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glflarered,4];
		};
		
		if (_typeofUnit == "pp" || _typeofUnit == "ps" || _typeofUnit == "pcc" || _typeofUnit == "pc" || _typeofUnit == "sftl" || _typeofUnit == "sfm" || _typeofUnit == "sfat" || _typeofUnit == "sfs") then {
			_unit linkItem _nvg;			// Dodanie noktowizji	
		};
	};
};	

// ====================================================================================

switch (_loadout_faction_player) do
{
	
//*************************************************************************************
// Items definitions
//*************************************************************************************

	//AAF
	case 1: 
	{
// Main weapond attachments

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_M";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_Holosight_blk_F";			// Basic scope
_scope2 = "optic_Arco_blk_F";			// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "bipod_03_F_oli";				// Bipod for basic weapon
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

_hg_silencer1 = "muzzle_snds_L";
_hg_attach1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";
_hg_attachments= [];

// ====================================================================================
// Weapons

_rifle = "arifle_Mk20_F";	// Basic weapon (its for most of basic units, like rifleman etc.)
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Green";

_carbine = "arifle_Mk20C_F";	// Light/short version (its for units with additional equipment, like medic etc.)
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Green";

_smg = "SMG_05_F";	// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smgmag = "30Rnd_9x21_Mag_SMG_02";
_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";

_glrifle = "arifle_Mk20_GL_F";	// GL version (mostly for commanders but also for grenadiers)
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Green";
_glmag = "1Rnd_HE_Grenade_shell";

_pistol = "hgun_ACPC2_F";	// Pistol (for everyone YAY!)
_pistolmag = "9Rnd_45ACP_Mag";

_glrifleSF = "arifle_SPAR_01_GL_blk_F";	// SF GL rifle
_glriflemagSF = "30Rnd_556x45_Stanag";
_glriflemag_trSF = "30Rnd_556x45_Stanag";

_ARSF = "arifle_SPAR_02_blk_F";	// SF automatic rifle
_ARmagSF = "150Rnd_556x45_Drum_Mag_F";
_ARmag_trSF = "150Rnd_556x45_Drum_Mag_Tracer_F";

_rifleSF = "arifle_SPAR_01_blk_F";	// SF rifle
_riflemagSF = "30Rnd_556x45_Stanag";
_riflemag_trSF = "30Rnd_556x45_Stanag";

_specialSF = "arifle_SPAR_03_blk_F";	// SF special rigle - can be marksman, CQB whatever is needed
_specialmagSF = "20Rnd_762x51_Mag";
_specialmag_trSF = "ACE_20Rnd_762x51_Mag_Tracer";

_SFpistol = "hgun_Pistol_heavy_02_F";	// SF pistol
_SFpistolmag = "6Rnd_45ACP_Cylinder";

_AR = "LMG_03_F";	// Light machinegun
_ARmag = "200Rnd_556x45_Box_F";
_ARmag_tr = "ACE_200Rnd_556x45_Box_tracer_green";

_MMG = "MMG_02_black_F";	// Medium machinegun
_MMGmag = "130Rnd_338_Mag";
_MMGmag_tr = "ACE_130Rnd_338_Mag_green";

_DMrifle = "srifle_DMR_06_olive_F";	// Marksman
_DMriflemag = "20Rnd_762x51_Mag";

_RAT = "launch_NLAW_F";	// Light AT
_RATmag = "NLAW_F";

_MAT = "launch_MRAWS_green_rail_F";	// Medium anti tank launcher
_MATmag1 = "MRAWS_HEAT_F";
_MATmag2 = "MRAWS_HE_F";
//_MAT_sight = "";
//_MATsptr = "";

_SAM = "launch_I_Titan_F";	// Surface-air launcher
_SAMmag = "Titan_AA";

_HAT = "launch_I_Titan_short_F";	// Heavy anti tank launcher	
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";
_HAT_Mobile = true;		//true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

_SNrifle = "srifle_DMR_02_F";	// Sniper
_SNrifleMag = "10Rnd_338_Mag";

// ====================================================================================
// Bagbacks

_parachute = "B_Parachute";
_bagmediumdiver =  "B_SCBA_01_F";				// Contact DLC

_bagsmall = "B_AssaultPack_dgtl";
_bagmedium = "B_Kitbag_sgg";
_baglarge =  "B_Carryall_oli";
_bagextralarge = "B_Bergen_dgtl_F";			//APEX DLC

_bagMed = "B_Carryall_khk";						//For dedicated medical bagpacks

_bagRadio = "B_RadioBag_01_digi_F";				//Contact DLC

_bagTL = "B_Kitbag_rgr";
_bagTLalt = "B_AssaultPack_rgr";

_bagENG = "B_TacticalPack_oli";
_bagEODuav = "I_UGV_02_Demining_backpack_F";	//Contact DLC

_bagMAT = "B_Bergen_dgtl_F";					// Contact DLC, for dedicated AT bagpacks

_bagSF = "B_FieldPack_oli";

_baguav = "B_UAV_01_backpack_F"; 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

_baghmgg = "I_HMG_02_weapon_F";					// used by Heavy MG gunner
_baghmgag = "I_HMG_02_support_F";				// used by Heavy MG assistant gunner

_baghatg = "I_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "I_HMG_01_support_F";				// used by Heavy AT assistant gunner

_bagmtrg = "I_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "I_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "I_GMG_01_weapon_F";					// used by GMG gunner
_baggmgag = "I_HMG_01_support_F";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"];
_baseHelmet = ["H_HelmetIA"];
_baseGlasses = [];

// Kamizelki
_leaderRig = ["V_PlateCarrierIAGL_dgtl"];	// vest for Team Leaders and Squad Leaders, shoud have GL/radio
_lightRig = ["V_PlateCarrierIA1_dgtl"];	// vest given to heavy units - meaning they carry some heavy stuff on them
_mediumRig = ["V_PlateCarrierIA2_dgtl"];	// general used vest for most inf
_mgRig = ["V_PlateCarrierIAGL_oli"];	// vest given to MG
_dmRig = ["V_PlateCarrierIA1_dgtl"];	// vest given to marksman
_glRig = ["V_PlateCarrierIA1_dgtl"];	// vest given to grenadier

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_hq = ["co"];
_leader = ["ftl", "dc"];
_gl = ["gren"];
_medR = ["m"];
_engR = ["eng","engm"];
_light = ["aar","mmgag","matag","hmgg","hmgag","hatag","msamag"];
_mg =  ["ar","mmgg"];	//Will be used for MG/MMG gunners
_dm = ["dm"];
_pilot = ["pp","pcc","pc"];
_JPilotR = ["ps"];
_crew = ["vc","vg","vd"];
_diver = ["divc","divr","divs","divm"];
_specOp = ["sftl","sfm","sfat","sfs"];
_ghillie = ["sn","sp"];

// Officer
_hqUniform = ["U_I_OfficerUniform"];
_hqHelmet = ["H_MilCap_dgtl"];
_hqRig = ["V_TacVest_oli"];
_hqGlasses = [];

// Medic
_medUniform = ["U_I_CombatUniform_shortsleeve"];
_medHelmet = ["H_HelmetIA"];
_medRig = ["V_TacVest_blk"];
_medGlasses = [];

// Enginer/Logi
_engUniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_vest"];
_engHelmet = ["H_HelmetB", "H_HelmetB_camo", "H_HelmetB_sand"];
_engRig = ["V_TacVest_blk"];
_engGlasses = [];

// Heli Pilot
_pilotUniform = ["U_I_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_I","H_CrewHelmetHeli_I"];
_pilotRig = ["V_TacVest_brn"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_I_pilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_I"];
_JPilotRig = ["V_Rangemaster_belt"];
_JPilotGlasses = [];

// Crew
_crewUniform = ["U_Tank_green_F"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["V_TacVest_oli"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_B_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherB"];
_diverGlasses = ["G_B_Diving"];

// Special forces
_SFUniform =  ["U_I_CBRN_Suit_01_AAF_F"];
_SFHelmet = ["H_HelmetIA"];
_SFRig = ["V_PlateCarrierIA1_dgtl"];
_SFGlasses = ["G_RegulatorMask_F"];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_I_FullGhillie_sard"];
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
