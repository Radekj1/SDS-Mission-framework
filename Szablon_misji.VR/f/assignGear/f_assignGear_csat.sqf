// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

1. CSAT
2. PL (WD) | CW |
3. PL (WT) | CW |
4. DE (WD) | CW |
5. DE (WT) | CW |
6. RU (WD) | MD | VDV
7. RU (DS) | MD | VDV
	
*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Opfor;
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
			#include "f_assignGear_csat_b.sqf";
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
		#include "f_assignGear_csat_builder.sqf";
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
			(unitBackpack _unit) addItemCargoGlobal [_chemred,2];
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
			(unitBackpack _unit) addItemCargoGlobal [_chemred,2];
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

	//CSAT
	case 1: 
	{
// Main weapond attachments	

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "muzzle_snds_H";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_ACO_grn";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "optic_AMS";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_scope1];		//DZIEŃ
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";							// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";											// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "arifle_Katiba_F";
_riflemag = "30Rnd_65x39_caseless_green";
_riflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "arifle_Katiba_C_F";
_carbinemag = "30Rnd_65x39_caseless_green";
_carbinemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag_SMG_02";
_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";

// Broń z granatnikiem (dla dowóców)
_glrifle = "arifle_Katiba_GL_F";
_glriflemag = "30Rnd_65x39_caseless_green";
_glriflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "hgun_Rook40_F";
_pistolmag = "16Rnd_9x21_Mag";

/*
// Siły specjalne
_diverWepCaS = "CUP_arifle_AK74_GL";
_diverMagCaS = "CUP_30Rnd_545x39_AK_M";

_diverWepR = "CUP_srifle_VSSVintorez_VFG";
_diverMagR = "CUP_30Rnd_9x39_SP5_VIKHR_M";

_diverWepM = "CUP_arifle_RPK74_45";
_diverMagM = "CUP_60Rnd_545x39_AK74M_M";
*/

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "LMG_Zafir_F";
_ARmag = "150Rnd_762x54_Box";
_ARmag_tr = "150Rnd_762x54_Box_Tracer";

// Strzelec MMG
_MMG = "MMG_01_hex_F";
_MMGmag = "150Rnd_93x64_Mag";
_MMGmag_tr = "ACE_150Rnd_93x64_Mag_yellow";

// Strzelec wyborowy
_DMrifle = "srifle_DMR_05_hex_F";
_DMriflemag = "10Rnd_93x64_DMR_05_Mag";

// Strzelec AT
_RAT = "launch_RPG32_F";
_RATmag = "RPG32_F";

// Strzelec MAT
_MAT = "launch_RPG32_F";
_MATmag1 = "RPG32_F";
_MATmag2 = "RPG32_HE_F";
//_MAT_sight = "";
//_MATsptr = "";

// Strzelec AA
_SAM = "launch_O_Titan_F";
_SAMmag = "Titan_AA";

// Strzelec HAT
_HAT = "launch_O_Vorona_brown_F";
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = true;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Snajper
_SNrifle = "srifle_GM6_camo_F";
_SNrifleMag = "5Rnd_127x108_Mag";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_FieldPack_ocamo";
_bagmedium = "B_Carryall_ocamo";
_baglarge =  "B_Bergen_hex_F";

_bagSupSmall = "B_FieldPack_cbr";
_bagSupMedium = "B_Carryall_cbr";
_bagSupLarge =  "B_Bergen_hex_F";

_bagMs = "B_AssaultPack_ocamo";	//Backpack for medic
_bagMm = "B_TacticalPack_ocamo";	//Backpack for medic
_bagMl = "B_Bergen_hex_F";	//Backpack for medic

_bagRadio = "B_RadioBag_01_hex_F";
_bagTL = "B_ViperLightHarness_hex_F";

_bagENGs = "B_AssaultPack_ocamo";
_bagENGm = "B_TacticalPack_ocamo";
_bagENGl = "B_Bergen_hex_F";

_bagMAT = "B_Bergen_hex_F";	// Plecak dla MAT

_bagSF = "B_ViperHarness_hex_F";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "O_UAV_01_backpack_F";					// 
_bagSOFLAM = "O_Static_Designator_02_weapon_F";

_baghmgg = "O_HMG_01_weapon_F";					// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner

_baghatg = "O_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "O_HMG_01_support_F";				// used by Heavy AT assistant gunner

_bagmtrg = "O_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "O_GMG_01_weapon_F";					// used by GMG gunner
_baggmgag = "O_HMG_01_support_F";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["U_O_CombatUniform_ocamo"];
_baseHelmet = ["H_HelmetSpecO_ocamo", "H_HelmetLeaderO_ocamo", "H_HelmetO_ocamo"];
_baseGlasses = [];

// Kamizelki
_slRig = ["V_HarnessOGL_brn"];
_engRig = ["V_HarnessO_brn"];
_lightRig = ["V_HarnessO_brn"];
_mediumRig = ["V_HarnessO_brn"];
_heavyRig = ["V_HarnessO_brn"];

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
_medUniform = ["U_O_CombatUniform_ocamo"];
_medHelmet = ["H_HelmetSpecO_ocamo", "H_HelmetLeaderO_ocamo", "H_HelmetO_ocamo"];
_medRig = ["V_HarnessO_brn"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["U_O_PilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_O"];
_pilotRig = [];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_O_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_O"];
_JPilotRig = [];
_JPilotGlasses = [];

// Crew
_crewUniform = ["U_O_officer_noInsignia_hex_F"];
_crewHelmet = ["H_HelmetCrew_O"];
_crewRig = ["V_HarnessO_brn"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Special forces
_SFUniform =  ["U_O_V_Soldier_Viper_hex_F"];
_SFHelmet = ["H_HelmetO_ViperSP_hex_F"];
_SFRig = [];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_O_FullGhillie_ard"];
_ghillieHelmet = [];
_ghillieRig = ["V_HarnessO_brn"];
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

	//PL (WD) | CW |
	case 2: 
	{
// Main weapond attachments	

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "rhs_acc_dtkakm";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_ACO_grn";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "gm_pso1_gry";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_silencer1];		//NOC
} 
else {
	_attachments = [_silencer1];		//DZIEŃ
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";							// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";											// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_akm";
_riflemag = "rhs_30Rnd_762x39mm";
_riflemag_tr = "rhs_30Rnd_762x39mm_tracer";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_akms";
_carbinemag = "rhs_30Rnd_762x39mm";
_carbinemag_tr = "rhs_30Rnd_762x39mm_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_m92";
_smgmag = "rhs_30Rnd_762x39mm";
_smgmag_tr = "rhs_30Rnd_762x39mm_tracer";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_akm_gp25";
_glriflemag = "rhs_30Rnd_762x39mm";
_glriflemag_tr = "rhs_30Rnd_762x39mm_tracer";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "rhs_weap_makarov_pm";
_pistolmag = "rhs_mag_9x18_8_57N181S";

/*
// Siły specjalne
_diverWepCaS = "CUP_arifle_AK74_GL";
_diverMagCaS = "CUP_30Rnd_545x39_AK_M";

_diverWepR = "CUP_srifle_VSSVintorez_VFG";
_diverMagR = "CUP_30Rnd_9x39_SP5_VIKHR_M";

_diverWepM = "CUP_arifle_RPK74_45";
_diverMagM = "CUP_60Rnd_545x39_AK74M_M";
*/

// ====================================================================================

// Equipment for special clases

// Light machinegun
_AR = "gm_rpk_wud";
_ARmag = "gm_75Rnd_762x39mm_B_M43_ak47_blk";
_ARmag_tr = "gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk";

// Medium machinegun
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "gm_svd_wud";
_DMriflemag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// Light AT
_RAT = "rhs_weap_rpg75";
//_RATmag = "RPG32_F";

// Medium anti tank launcher
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Strzelec AA
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy anti tank launcher
_HAT = "launch_O_Vorona_brown_F";
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Snajper
_SNrifle = "gm_svd_wud";
_SNrifleMag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "gm_pl_army_backpack_80_oli";
_bagmedium = "gm_pl_army_backpack_80_oli";
_baglarge =  "gm_pl_army_backpack_80_oli";

_bagSupSmall = "UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF";
_bagSupMedium = "UK3CB_CHC_C_B_HIKER";
_bagSupLarge =  "UK3CB_CHC_C_B_HIKER";

_bagMs = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMm = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMl = "gm_ge_backpack_satchel_80_san";	//Backpack for medic

_bagRadio = "UK3CB_B_O_Radio_Backpack";
_bagTL = "UK3CB_CW_SOV_O_LATE_B_Sidor_RIF";

_bagENGs = "gm_ge_backpack_satchel_80_blk";
_bagENGm = "gm_ge_backpack_satchel_80_blk";
_bagENGl = "UK3CB_B_Alice_Bedroll_K";

_bagMAT = "gm_pl_army_backpack_at_80_gry";	// Plecak dla MAT

_bagSF = "B_ViperHarness_hex_F";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "O_UAV_01_backpack_F";					// 
_bagSOFLAM = "O_Static_Designator_02_weapon_F";

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
_baseUniform = ["gm_pl_army_uniform_soldier_80_moro", "gm_pl_army_uniform_soldier_rolled_80_moro"];
_baseHelmet = ["gm_pl_army_headgear_wz67_net_oli", "gm_pl_army_headgear_wz67_oli"];
_baseGlasses = [];

// Kamizelki
_slRig = ["gm_pl_army_vest_80_leader_gry"];
_engRig = ["gm_pl_army_vest_80_at_gry"];
_lightRig = ["gm_pl_army_vest_80_rifleman_gry", "gm_pl_army_vest_80_marksman_gry"];
_mediumRig = ["gm_pl_army_vest_80_rifleman_gry", "gm_pl_army_vest_80_marksman_gry", "gm_pl_army_vest_80_at_gry"];
_heavyRig = ["gm_pl_army_vest_80_mg_gry"];

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
_medUniform = ["gm_pl_army_uniform_soldier_80_moro", "gm_pl_army_uniform_soldier_rolled_80_moro"];
_medHelmet = ["gm_pl_army_headgear_wz67_net_oli", "gm_pl_army_headgear_wz67_oli"];
_medRig = ["gm_pl_army_vest_80_rifleman_gry", "gm_pl_army_vest_80_marksman_gry"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["gm_pl_army_uniform_soldier_autumn_80_moro"];
_pilotHelmet = ["nva_zsh3_01", "nva_zsh3_02"];
_pilotRig = ["gm_ge_army_vest_80_officer"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_O_PilotCoveralls"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = [];
_JPilotGlasses = [];

// Crew
_crewUniform = ["UK3CB_CW_SOV_O_Early_U_Tank_Crew_Uniform_02_BLK"];
_crewHelmet = ["rhs_tsh4", "gm_gc_army_headgear_crewhat_80_blk"];
_crewRig = ["rhs_vest_commander"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Special forces
_SFUniform =  ["U_O_V_Soldier_Viper_hex_F"];
_SFHelmet = ["H_HelmetO_ViperSP_hex_F"];
_SFRig = [];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_O_FullGhillie_ard"];
_ghillieHelmet = [];
_ghillieRig = ["V_HarnessO_brn"];
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

	//PL (WT) | CW |
	case 3: 
	{
// Main weapond attachments	

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "rhs_acc_dtkakm";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_ACO_grn";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "gm_pso1_gry";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_silencer1];		//NOC
} 
else {
	_attachments = [_silencer1];		//DZIEŃ
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";							// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";											// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_akm";
_riflemag = "rhs_30Rnd_762x39mm";
_riflemag_tr = "rhs_30Rnd_762x39mm_tracer";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_akms";
_carbinemag = "rhs_30Rnd_762x39mm";
_carbinemag_tr = "rhs_30Rnd_762x39mm_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_m92";
_smgmag = "rhs_30Rnd_762x39mm";
_smgmag_tr = "rhs_30Rnd_762x39mm_tracer";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_akm_gp25";
_glriflemag = "rhs_30Rnd_762x39mm";
_glriflemag_tr = "rhs_30Rnd_762x39mm_tracer";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "rhs_weap_makarov_pm";
_pistolmag = "rhs_mag_9x18_8_57N181S";

/*
// Siły specjalne
_diverWepCaS = "CUP_arifle_AK74_GL";
_diverMagCaS = "CUP_30Rnd_545x39_AK_M";

_diverWepR = "CUP_srifle_VSSVintorez_VFG";
_diverMagR = "CUP_30Rnd_9x39_SP5_VIKHR_M";

_diverWepM = "CUP_arifle_RPK74_45";
_diverMagM = "CUP_60Rnd_545x39_AK74M_M";
*/

// ====================================================================================

// Equipment for special clases

// Light machinegun
_AR = "gm_rpk_wud";
_ARmag = "gm_75Rnd_762x39mm_B_M43_ak47_blk";
_ARmag_tr = "gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk";

// Medium machinegun
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "gm_svd_wud";
_DMriflemag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// Light AT
_RAT = "rhs_weap_rpg75";
//_RATmag = "RPG32_F";

// Medium anti tank launcher
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Strzelec AA
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy anti tank launcher
_HAT = "launch_O_Vorona_brown_F";
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Snajper
_SNrifle = "gm_svd_wud";
_SNrifleMag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "gm_pl_army_backpack_80_oli";
_bagmedium = "gm_pl_army_backpack_80_oli";
_baglarge =  "gm_pl_army_backpack_80_oli";

_bagSupSmall = "UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF";
_bagSupMedium = "UK3CB_CHC_C_B_HIKER";
_bagSupLarge =  "UK3CB_CHC_C_B_HIKER";

_bagMs = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMm = "gm_ge_backpack_satchel_80_san";	//Backpack for medic
_bagMl = "gm_ge_backpack_satchel_80_san";	//Backpack for medic

_bagRadio = "UK3CB_B_O_Radio_Backpack";
_bagTL = "UK3CB_CW_SOV_O_LATE_B_Sidor_RIF";

_bagENGs = "gm_ge_backpack_satchel_80_blk";
_bagENGm = "gm_ge_backpack_satchel_80_blk";
_bagENGl = "UK3CB_B_Alice_Bedroll_K";

_bagMAT = "gm_pl_army_backpack_at_80_gry";	// Plecak dla MAT

_bagSF = "B_ViperHarness_hex_F";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "O_UAV_01_backpack_F";					// 
_bagSOFLAM = "O_Static_Designator_02_weapon_F";

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
_baseUniform = ["gm_pl_army_uniform_soldier_80_win"];
_baseHelmet = ["gm_pl_army_headgear_wz67_net_oli", "gm_pl_army_headgear_wz67_oli", "gm_pl_headgear_wz67_cover_win", "gm_pl_headgear_wz67_cover_win", "gm_pl_headgear_wz67_cover_win"];
_baseGlasses = [];

// Kamizelki
_slRig = ["gm_pl_army_vest_80_leader_gry"];
_engRig = ["gm_pl_army_vest_80_at_gry"];
_lightRig = ["gm_pl_army_vest_80_rifleman_gry", "gm_pl_army_vest_80_marksman_gry"];
_mediumRig = ["gm_pl_army_vest_80_rifleman_gry", "gm_pl_army_vest_80_marksman_gry", "gm_pl_army_vest_80_at_gry"];
_heavyRig = ["gm_pl_army_vest_80_mg_gry"];

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
_medUniform = ["gm_pl_army_uniform_soldier_80_win"];
_medHelmet = ["gm_pl_army_headgear_wz67_net_oli", "gm_pl_army_headgear_wz67_oli", "gm_pl_headgear_wz67_cover_win", "gm_pl_headgear_wz67_cover_win", "gm_pl_headgear_wz67_cover_win"];
_medRig = ["gm_pl_army_vest_80_rifleman_gry", "gm_pl_army_vest_80_marksman_gry"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["gm_pl_army_uniform_soldier_autumn_80_moro"];
_pilotHelmet = ["nva_zsh3_01", "nva_zsh3_02"];
_pilotRig = ["gm_ge_army_vest_80_officer"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_O_PilotCoveralls"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = [];
_JPilotGlasses = [];

// Crew
_crewUniform = ["UK3CB_CW_SOV_O_Early_U_Tank_Crew_Uniform_02_BLK"];
_crewHelmet = ["rhs_tsh4", "gm_gc_army_headgear_crewhat_80_blk"];
_crewRig = ["rhs_vest_commander"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Special forces
_SFUniform =  ["U_O_V_Soldier_Viper_hex_F"];
_SFHelmet = ["H_HelmetO_ViperSP_hex_F"];
_SFRig = [];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_O_FullGhillie_ard"];
_ghillieHelmet = [];
_ghillieRig = ["V_HarnessO_brn"];
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

	//DE (WD) | CW |
	case 4: 
	{
// Main weapond attachments	

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "rhs_acc_dtk1983";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_ACO_grn";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "gm_pso1_gry";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_silencer1];		//NOC
} 
else {
	_attachments = [_silencer1];		//DZIEŃ
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";							// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";											// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "gm_mpiaks74n_prp";
_riflemag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_riflemag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "gm_mpiaks74nk_prp";
_carbinemag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_carbinemag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "gm_mpiaks74nk_prp";
_smgmag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_smgmag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_ak74n_gp25";
_glriflemag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_glriflemag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "gm_p1_blk";
_pistolmag = "gm_8Rnd_9x19mm_B_DM11_p1_blk";

/*
// Siły specjalne
_diverWepCaS = "CUP_arifle_AK74_GL";
_diverMagCaS = "CUP_30Rnd_545x39_AK_M";

_diverWepR = "CUP_srifle_VSSVintorez_VFG";
_diverMagR = "CUP_30Rnd_9x39_SP5_VIKHR_M";

_diverWepM = "CUP_arifle_RPK74_45";
_diverMagM = "CUP_60Rnd_545x39_AK74M_M";
*/

// ====================================================================================

// Equipment for special clases

// Light machinegun
_AR = "gm_lmgrpk_prp";
_ARmag = "gm_75Rnd_762x39mm_B_M43_ak47_blk";
_ARmag_tr = "gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk";

// Medium machinegun
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "gm_svd_wud";
_DMriflemag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// Light AT
_RAT = "rhs_weap_rpg26";
//_RATmag = "RPG32_F";

// Medium anti tank launcher
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Strzelec AA
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy anti tank launcher
_HAT = "launch_O_Vorona_brown_F";
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Snajper
_SNrifle = "gm_svd_wud";
_SNrifleMag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "gm_gc_army_backpack_80_assaultpack_str";
_bagmedium = "gm_gc_army_backpack_80_assaultpack_str";
_baglarge =  "gm_gc_army_backpack_80_assaultpack_str";

_bagSupSmall = "gm_gc_army_backpack_80_lmg_str";
_bagSupMedium = "gm_gc_army_backpack_80_assaultpack_lmg_str";
_bagSupLarge =  "gm_gc_army_backpack_80_assaultpack_lmg_str";

_bagMs = "rhs_medic_bag";	//Backpack for medic
_bagMm = "rhs_medic_bag";	//Backpack for medic
_bagMl = "rhs_medic_bag";	//Backpack for medic

_bagRadio = "UK3CB_B_O_Radio_Backpack";
_bagTL = "UK3CB_TKP_O_B_ASS_BLK";

_bagENGs = "gm_gc_army_backpack_80_lmg_str";
_bagENGm = "gm_gc_army_backpack_80_lmg_str";
_bagENGl = "UK3CB_B_Alice_Bedroll_K";

_bagMAT = "gm_gc_army_backpack_80_at_str";	// Plecak dla MAT

_bagSF = "B_ViperHarness_hex_F";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "O_UAV_01_backpack_F";					// 
_bagSOFLAM = "O_Static_Designator_02_weapon_F";

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
_baseUniform = ["gm_gc_army_uniform_soldier_80_str"];
_baseHelmet = ["gm_gc_army_headgear_m56_cover_str", "gm_gc_army_headgear_m56", "gm_gc_army_headgear_m56_net"];
_baseGlasses = [];

// Kamizelki
_slRig = ["gm_gc_army_vest_80_leader_str"];
_engRig = ["gm_gc_army_vest_80_at_str"];
_lightRig = ["gm_gc_bgs_vest_80_border_str", "gm_gc_army_vest_80_at_str", "gm_gc_army_vest_80_rifleman_str"];
_mediumRig = ["gm_gc_bgs_vest_80_border_str", "gm_gc_army_vest_80_at_str", "gm_gc_army_vest_80_rifleman_str"];
_heavyRig = ["gm_gc_army_vest_80_lmg_str"];

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
_medUniform = ["gm_gc_army_uniform_soldier_80_str"];
_medHelmet = ["gm_gc_army_headgear_m56_cover_str", "gm_gc_army_headgear_m56", "gm_gc_army_headgear_m56_net"];
_medRig = ["gm_gc_bgs_vest_80_border_str"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["len_lwp_uniform_soldier_80_blue"];
_pilotHelmet = ["nva_zsh3_03", "nva_zsh3_04"];
_pilotRig = ["gm_ge_army_vest_80_officer"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_O_PilotCoveralls"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = [];
_JPilotGlasses = [];

// Crew
_crewUniform = ["gm_gc_army_uniform_soldier_80_blk"];
_crewHelmet = ["rhs_tsh4", "gm_gc_army_headgear_crewhat_80_blk"];
_crewRig = ["gm_ge_army_vest_80_officer"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Special forces
_SFUniform =  ["U_O_V_Soldier_Viper_hex_F"];
_SFHelmet = ["H_HelmetO_ViperSP_hex_F"];
_SFRig = [];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_O_FullGhillie_ard"];
_ghillieHelmet = [];
_ghillieRig = ["V_HarnessO_brn"];
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

	//DE (WT) | CW |
	case 5: 
	{
// Main weapond attachments	

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "acc_flashlight";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "rhs_acc_dtk1983";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "optic_ACO_grn";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "gm_pso1_gry";					// Sniper scope

_bipod1 = "bipod_01_F_blk";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_silencer1];		//NOC
} 
else {
	_attachments = [_silencer1];		//DZIEŃ
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";							// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";											// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "gm_mpiaks74n_prp";
_riflemag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_riflemag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "gm_mpiaks74nk_prp";
_carbinemag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_carbinemag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "gm_mpiaks74nk_prp";
_smgmag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_smgmag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_ak74n_gp25";
_glriflemag = "gm_30Rnd_545x39mm_B_7N6_ak74_prp";
_glriflemag_tr = "gm_30Rnd_545x39mm_B_T_7T3_ak74_prp";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "gm_p1_blk";
_pistolmag = "gm_8Rnd_9x19mm_B_DM11_p1_blk";

/*
// Siły specjalne
_diverWepCaS = "CUP_arifle_AK74_GL";
_diverMagCaS = "CUP_30Rnd_545x39_AK_M";

_diverWepR = "CUP_srifle_VSSVintorez_VFG";
_diverMagR = "CUP_30Rnd_9x39_SP5_VIKHR_M";

_diverWepM = "CUP_arifle_RPK74_45";
_diverMagM = "CUP_60Rnd_545x39_AK74M_M";
*/

// ====================================================================================

// Equipment for special clases

// Light machinegun
_AR = "gm_lmgrpk_prp";
_ARmag = "gm_75Rnd_762x39mm_B_M43_ak47_blk";
_ARmag_tr = "gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk";

// Medium machinegun
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Marksman
_DMrifle = "gm_svd_wud";
_DMriflemag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// Light AT
_RAT = "rhs_weap_rpg26";
//_RATmag = "RPG32_F";

// Medium anti tank launcher
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Strzelec AA
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Heavy anti tank launcher
_HAT = "launch_O_Vorona_brown_F";
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = false;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Snajper
_SNrifle = "gm_svd_wud";
_SNrifleMag = "gm_10Rnd_762x54mmR_B_T_7t2_svd_blk";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "gm_gc_army_backpack_80_assaultpack_str";
_bagmedium = "gm_gc_army_backpack_80_assaultpack_str";
_baglarge =  "gm_gc_army_backpack_80_assaultpack_str";

_bagSupSmall = "gm_gc_army_backpack_80_lmg_str";
_bagSupMedium = "gm_gc_army_backpack_80_assaultpack_lmg_str";
_bagSupLarge =  "gm_gc_army_backpack_80_assaultpack_lmg_str";

_bagMs = "rhs_medic_bag";	//Backpack for medic
_bagMm = "rhs_medic_bag";	//Backpack for medic
_bagMl = "rhs_medic_bag";	//Backpack for medic

_bagRadio = "UK3CB_B_O_Radio_Backpack";
_bagTL = "UK3CB_TKP_O_B_ASS_BLK";

_bagENGs = "gm_gc_army_backpack_80_lmg_str";
_bagENGm = "gm_gc_army_backpack_80_lmg_str";
_bagENGl = "UK3CB_B_Alice_Bedroll_K";

_bagMAT = "gm_gc_army_backpack_80_at_str";	// Plecak dla MAT

_bagSF = "B_ViperHarness_hex_F";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "O_UAV_01_backpack_F";					// 
_bagSOFLAM = "O_Static_Designator_02_weapon_F";

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
_baseUniform = ["gm_gc_army_uniform_soldier_80_win"];
_baseHelmet = ["gm_gc_army_headgear_m56", "gm_gc_army_headgear_m56_net", "gm_gc_army_headgear_m56_cover_win", "gm_gc_army_headgear_m56_cover_win", "gm_gc_army_headgear_m56_cover_win"];
_baseGlasses = [];

// Kamizelki
_slRig = ["gm_gc_army_vest_80_leader_str"];
_engRig = ["gm_gc_army_vest_80_at_str"];
_lightRig = ["gm_gc_bgs_vest_80_border_str", "gm_gc_army_vest_80_at_str", "gm_gc_army_vest_80_rifleman_str"];
_mediumRig = ["gm_gc_bgs_vest_80_border_str", "gm_gc_army_vest_80_at_str", "gm_gc_army_vest_80_rifleman_str"];
_heavyRig = ["gm_gc_army_vest_80_lmg_str"];

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
_medUniform = ["gm_gc_army_uniform_soldier_80_win"];
_medHelmet = ["gm_gc_army_headgear_m56", "gm_gc_army_headgear_m56_net", "gm_gc_army_headgear_m56_cover_win", "gm_gc_army_headgear_m56_cover_win", "gm_gc_army_headgear_m56_cover_win"];
_medRig = ["gm_gc_bgs_vest_80_border_str"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["len_lwp_uniform_soldier_80_blue"];
_pilotHelmet = ["nva_zsh3_03", "nva_zsh3_04"];
_pilotRig = ["gm_ge_army_vest_80_officer"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_O_PilotCoveralls"];
_JPilotHelmet = ["rhs_zsh7a_alt"];
_JPilotRig = [];
_JPilotGlasses = [];

// Crew
_crewUniform = ["gm_gc_army_uniform_soldier_80_blk"];
_crewHelmet = ["rhs_tsh4", "gm_gc_army_headgear_crewhat_80_blk"];
_crewRig = ["gm_ge_army_vest_80_officer"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Special forces
_SFUniform =  ["U_O_V_Soldier_Viper_hex_F"];
_SFHelmet = ["H_HelmetO_ViperSP_hex_F"];
_SFRig = [];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_O_FullGhillie_ard"];
_ghillieHelmet = [];
_ghillieRig = ["V_HarnessO_brn"];
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

	//RU (WD) | MD | VDV
	case 6: 
	{
// Main weapond attachments	

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "rhs_acc_perst1ik_ris";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "rhs_acc_dtk1983";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhs_acc_rakursPM";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "rhs_acc_pso1m21";					// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_attach2,_silencer1,_scope1,_bipod1];		//NOC
} 
else {
	_attachments = [_attach1,_attach2,_silencer1,_scope1,_bipod1];		//DZIEŃ
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";							// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";											// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_ak74m_zenitco01_b33";
_riflemag = "rhs_30Rnd_545x39_7N22_plum_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_plum_green";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_aks74n_2_npz";
_carbinemag = "rhs_30Rnd_545x39_7N22_plum_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_plum_green";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_pp2000";
_smgmag = "rhs_mag_9x19mm_7n31_44";
_smgmag_tr = "rhs_mag_9x19mm_7n31_44";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_ak74mr_gp25";
_glriflemag = "rhs_30Rnd_545x39_7N22_plum_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "rhs_weap_pya";
_pistolmag = "rhs_mag_9x19_17";

/*
// Siły specjalne
_diverWepCaS = "CUP_arifle_AK74_GL";
_diverMagCaS = "CUP_30Rnd_545x39_AK_M";

_diverWepR = "CUP_srifle_VSSVintorez_VFG";
_diverMagR = "CUP_30Rnd_9x39_SP5_VIKHR_M";

_diverWepM = "CUP_arifle_RPK74_45";
_diverMagM = "CUP_60Rnd_545x39_AK74M_M";
*/

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "UK3CB_RPK";
_ARmag = "UK3CB_RPK_75Rnd_Drum";
_ARmag_tr = "UK3CB_RPK_75Rnd_Drum_T";

// Strzelec MMG
_MMG = "rhs_weap_pkp";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Strzelec wyborowy
_DMrifle = "rhs_weap_svdp";
_DMriflemag = "rhs_10Rnd_762x54mmR_7N14";

// Strzelec AT
_RAT = "rhs_weap_rpg26";
//_RATmag = "RPG32_F";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Strzelec AA
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Strzelec HAT
_HAT = "launch_O_Vorona_green_F";
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = true;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Snajper
_SNrifle = "rhs_weap_t5000";
_SNrifleMag = "rhs_5Rnd_338lapua_t5000";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_FieldPack_oli";
_bagmedium = "B_Kitbag_sgg";
_baglarge =  "B_Carryall_oli";

_bagSupSmall = "rhs_sidor";
_bagSupMedium = "UK3CB_BAF_B_Kitbag_OLI";
_bagSupLarge =  "UK3CB_BAF_B_Carryall_OLI";

_bagMs = "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";	//Backpack for medic
_bagMm = "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";	//Backpack for medic
_bagMl = "UK3CB_BAF_B_Bergen_OLI_Rifleman_B";	//Backpack for medic

_bagRadio = "UK3CB_BAF_B_Bergen_OLI_SL_A";
_bagTL = "rhs_assault_umbts";

_bagENGs = "rhs_assault_umbts_engineer_empty";
_bagENGm = "rhs_assault_umbts_engineer_empty";
_bagENGl = "rhs_assault_umbts_engineer_empty";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_ViperHarness_hex_F";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "O_UAV_01_backpack_F";					// 
_bagSOFLAM = "O_Static_Designator_02_weapon_F";

_baghmgg = "O_HMG_01_weapon_F";					// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner

_baghatg = "O_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "O_HMG_01_support_F";				// used by Heavy AT assistant gunner

_bagmtrg = "O_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "O_GMG_01_weapon_F";					// used by GMG gunner
_baggmgag = "O_HMG_01_support_F";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhs_uniform_emr_patchless"];
_baseHelmet = ["rhs_6b47", "rhs_6b47_ess"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhs_6b23_digi_6sh92_vog_headset","rhs_6b23_digi_6sh92_headset_mapcase"];
_engRig = ["rhs_6b23_digi_engineer"];
_lightRig = ["rhs_6b23_digi_vydra_3m"];
_mediumRig = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio"];
_heavyRig = ["rhs_6b23_6sh116"];

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
_medUniform = ["rhs_uniform_emr_patchless"];
_medHelmet = ["rhs_6b47", "rhs_6b47_ess"];
_medRig = ["rhs_6b23_digi_medic"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhs_uniform_df15"];
_pilotHelmet = ["rhs_zsh7a_mike","rhs_zsh7a_mike_alt"];
_pilotRig = ["rhs_vest_commander"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_O_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_O"];
_JPilotRig = [];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhs_uniform_flora_patchless"];
_crewHelmet = ["rhs_tsh4","rhs_tsh4_ess"];
_crewRig = ["rhs_6b23_digi_crewofficer","rhs_6b23_digi_crew"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Special forces
_SFUniform =  ["U_O_V_Soldier_Viper_hex_F"];
_SFHelmet = ["H_HelmetO_ViperSP_hex_F"];
_SFRig = [];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_O_FullGhillie_ard"];
_ghillieHelmet = [];
_ghillieRig = ["V_HarnessO_brn"];
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

	//RU (WD) | MD | VDV
	case 7: 
	{
// Main weapond attachments	

_attach1 = "acc_pointer_IR";	// Laser
_attach2 = "rhs_acc_perst1ik_ris";	// Flashlight
//_attach3 = "";				// Laser + Flashlight

_silencer1 = "rhs_acc_dtk1983";			// Silencer for basic weapon
_silencer2 = "muzzle_snds_H_snd_F";		// Silencer for additional weapon (for SF etc.)

_scope1 = "rhs_acc_rakursPM";			// Basic scope
_scope2 = "optic_DMS";					// Additional scope (for SF etc.)
_scope3 = "rhs_acc_pso1m21";					// Sniper scope

_bipod1 = "rhs_acc_grip_ffg2";				// Bipod for basic weapon
_bipod2 = "bipod_01_F_snd";				// Bipod for additional weapon (for SF etc.)

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_attach2,_silencer1,_scope1,_bipod1];		//NOC
} 
else {
	_attachments = [_attach1,_attach2,_silencer1,_scope1,_bipod1];		//DZIEŃ
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";							// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";											// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_ak74m_zenitco01_b33";
_riflemag = "rhs_30Rnd_545x39_7N22_plum_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_plum_green";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_aks74n_2_npz";
_carbinemag = "rhs_30Rnd_545x39_7N22_plum_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_plum_green";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_pp2000";
_smgmag = "rhs_mag_9x19mm_7n31_44";
_smgmag_tr = "rhs_mag_9x19mm_7n31_44";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_ak74mr_gp25";
_glriflemag = "rhs_30Rnd_545x39_7N22_plum_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_plum_green";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "rhs_weap_pya";
_pistolmag = "rhs_mag_9x19_17";

/*
// Siły specjalne
_diverWepCaS = "CUP_arifle_AK74_GL";
_diverMagCaS = "CUP_30Rnd_545x39_AK_M";

_diverWepR = "CUP_srifle_VSSVintorez_VFG";
_diverMagR = "CUP_30Rnd_9x39_SP5_VIKHR_M";

_diverWepM = "CUP_arifle_RPK74_45";
_diverMagM = "CUP_60Rnd_545x39_AK74M_M";
*/

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "UK3CB_RPK";
_ARmag = "UK3CB_RPK_75Rnd_Drum";
_ARmag_tr = "UK3CB_RPK_75Rnd_Drum_T";

// Strzelec MMG
_MMG = "rhs_weap_pkp";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Strzelec wyborowy
_DMrifle = "rhs_weap_svdp";
_DMriflemag = "rhs_10Rnd_762x54mmR_7N14";

// Strzelec AT
_RAT = "rhs_weap_rpg26";
//_RATmag = "RPG32_F";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";
//_MATsptr = "";

// Strzelec AA
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Strzelec HAT
_HAT = "launch_O_Vorona_green_F";
_HATmag1 = "Vorona_HEAT";
_HATmag2 = "Vorona_HE";
_HAT_Mobile = true;

// _HAT_Mobile = true; /true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

// Snajper
_SNrifle = "rhs_weap_t5000";
_SNrifleMag = "rhs_5Rnd_338lapua_t5000";

// ====================================================================================

// Bagbacks

_parachute = "B_Parachute";

_bagsmall = "B_FieldPack_cbr";
_bagmedium = "B_Kitbag_tan";
_baglarge =  "B_Carryall_cbr";

_bagSupSmall = "rhs_sidor";
_bagSupMedium = "UK3CB_BAF_B_Kitbag_TAN";
_bagSupLarge =  "UK3CB_BAF_B_Carryall_TAN";

_bagMs = "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";	//Backpack for medic
_bagMm = "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";	//Backpack for medic
_bagMl = "UK3CB_BAF_B_Bergen_TAN_Rifleman_B";	//Backpack for medic

_bagRadio = "UK3CB_BAF_B_Bergen_TAN_SL_A";
_bagTL = "rhs_assault_umbts";

_bagENGs = "rhs_assault_umbts_engineer_empty";
_bagENGm = "rhs_assault_umbts_engineer_empty";
_bagENGl = "rhs_assault_umbts_engineer_empty";

_bagMAT = "rhs_rpg_empty";	// Plecak dla MAT

_bagSF = "B_ViperHarness_hex_F";

_bagmediumdiver =  "B_SCBA_01_F";	// Diver backpack

_baguav = "O_UAV_01_backpack_F";					// 
_bagSOFLAM = "O_Static_Designator_02_weapon_F";

_baghmgg = "O_HMG_01_weapon_F";					// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner

_baghatg = "O_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "O_HMG_01_support_F";				// used by Heavy AT assistant gunner

_bagmtrg = "O_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";			// used by Mortar assistant gunner

_baggmgg = "O_GMG_01_weapon_F";					// used by GMG gunner
_baggmgag = "O_HMG_01_support_F";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhs_uniform_emr_des_patchless"];
_baseHelmet = ["rhs_6b47", "rhs_6b47_ess"];
_baseGlasses = [];

// Kamizelki
_slRig = ["rhs_6b23_digi_6sh92_vog_headset","rhs_6b23_digi_6sh92_headset_mapcase"];
_engRig = ["rhs_6b23_digi_engineer"];
_lightRig = ["rhs_6b23_digi_vydra_3m"];
_mediumRig = ["rhs_6b23_digi_6sh92_headset","rhs_6b23_digi_6sh92_radio"];
_heavyRig = ["rhs_6b23_6sh116"];

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
_medUniform = ["rhs_uniform_emr_des_patchless"];
_medHelmet = ["rhs_6b47", "rhs_6b47_ess"];
_medRig = ["rhs_6b23_digi_medic"];
_medGlasses = [];

// Heli Pilot
_pilotUniform = ["rhs_uniform_df15_tan"];
_pilotHelmet = ["rhs_zsh7a_mike","rhs_zsh7a_mike_alt"];
_pilotRig = ["rhs_vest_commander"];
_pilotGlasses = [];

// Jet Pilot
_JPilotUniform = ["U_O_PilotCoveralls"];
_JPilotHelmet = ["H_PilotHelmetFighter_O"];
_JPilotRig = [];
_JPilotGlasses = [];

// Crew
_crewUniform = ["rhs_uniform_flora_patchless"];
_crewHelmet = ["rhs_tsh4","rhs_tsh4_ess"];
_crewRig = ["rhs_6b23_digi_crewofficer","rhs_6b23_digi_crew"];
_crewGlasses = [];

// Divers
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_O_Diving"];

// Special forces
_SFUniform =  ["U_O_V_Soldier_Viper_hex_F"];
_SFHelmet = ["H_HelmetO_ViperSP_hex_F"];
_SFRig = [];
_SFGlasses = [];

// Ghillie (sniper/spotter)
_ghillieUniform = ["U_O_FullGhillie_ard"];
_ghillieHelmet = [];
_ghillieRig = ["V_HarnessO_brn"];
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