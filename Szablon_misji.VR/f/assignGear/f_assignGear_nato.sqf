// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

	1. [X] UK (MTP)
	2. [X] UK DPM (WD)
	3. [X] UK DPM (DS)
	4. [X] US Rangers (MTP)
	5. [X] USMC (WD)
	6. [X] USMC (DS)
	7. [X] US Army (UCP)
	8. [X] US Army CW (WD)
	9. [X] US Army CW (DS)
	10. [X] US Army CW (WT)
	11. [X] CDF (WD)
	12. [X] CDF (DS)
	13. [X] CDF (WT)
	14. [X] IDF
	15. [X] BW (WD)
	16. [X] BW (DS)
	17. [X] ACR (WD)
	18. [X] ACR (DS)

*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Blufor;
// ====================================================================================

//Definicje przedmiotów

// Sprzet medyczny
_personalAidKit = "ACE_personalAidKit";		// Zestaw pierwszej pomocy
_surgicalKit = "ACE_surgicalKit";			// Zestaw do szycia ran
_AED = "adv_aceCPR_AED";					// Defibrylator
_splint = "adv_aceSplint_splint";			// Szyny do usztwniania

_bandage = "ACE_fieldDressing";				// Ogólny bandaż dla piechoty
_bandage_elastic = "ACE_elasticBandage";	// Bandaż elastyczny
_bandage_packing = "ACE_packingBandage";	//
_bandage_quikclot = "ACE_quikclot";			// Opatrunek "QuikClot"
_tourniquet ="ACE_tourniquet";				// Opaska uciskowa

_epinephrine = "ACE_epinephrine";			// Epinefryna (zwiększa tętno)
_morphine = "ACE_morphine";					// Morfina (niweluje ból, rozrzedza krew)
_adenosine = "ACE_adenosine";				// Adenozyna (obniża tętno)
_atropine = "ACE_atropine";					// Atropina (obniża tętno)

_blood_s = "ACE_bloodIV_250";				// Krew 200 ml
_blood_m = "ACE_bloodIV_500";				// Krew 500 ml
_blood_b = "ACE_bloodIV";					// Krew 1000 ml

_plasma_s = "ACE_plasmaIV_250";				// Osocze 200 ml
_plasma_m = "ACE_plasmaIV_500";				// Osocze 500 ml
_plasma_b = "ACE_plasmaIV";					// Osocze 1000 ml

_saline_s = "ACE_salineIV_250";				// Sól fizjologiczna 200 ml
_saline_m = "ACE_salineIV_500";				// Sól fizjologiczna 500 ml
_saline_b = "ACE_salineIV";					// Sól fizjologiczna 1000 ml

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
_nvg = "CUP_NVG_PVS15_black";

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
//_RATmag = "NLAW_F";

// Medium anti tank launcher
_MAT = "launch_MRAWS_sand_F";
_MATmag1 = "MRAWS_HEAT_F";
_MATmag2 = "MRAWS_HE_F";
//_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "rhs_mag_smaw_SR";

// Surface-air launcher
_SAM = "launch_B_Titan_F";
//_SAMmag = "Titan_AA";

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
_medRig = ["V_TacVest_blk"];
_engRig = ["V_PlateCarrierSpec_blk"];
_lightRig = ["V_PlateCarrier1_blk"];
_mediumRig = ["V_PlateCarrier2_blk"];
_heavyRig = ["V_PlateCarrierSpec_blk"];

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_slR = ["co", "dc", "ftl"];
_medR = ["m"];
_engR = ["eng","engm"];
_light = ["aar","mmgag","matag","hmgag","hatag","msamag"];
_heavy =  [];
_pilot = ["pp","pcc","pc"];
_JPilotR = ["ps"];
_crew = ["vc","vg","vd"];
_diver = ["divc","divr","divs","divm"];
_sfR = ["sftl","sfm","sfat","sfs"];
_ghillie = ["sn","sp"];


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

	//UK DPM (DS)
	case 2: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_OD_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";					// Tłumik płomieni

_scope1 = "CUP_optic_CompM2_low_OD";			// Aimpoint
_scope2 = "CUP_optic_Eotech553_OD";				// Eotech
_scope3 = "CUP_optic_LeupoldMk4";					// Celownik snajperski

_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach2,_scope1];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_L85A2_G";
_riflemag = "CUP_30Rnd_556x45_Stanag_L85";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_L85_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_L85A2_NG";
_carbinemag = "CUP_30Rnd_556x45_Stanag_L85";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_L85_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_L85A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag_L85";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_L85_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_L110A1";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_L7A2";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_L129A1_HG";
_DMriflemag = "CUP_20Rnd_762x51_L129_M";

// Strzelec AT
_RAT = "CUP_launch_NLAW";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "rhs_mag_smaw_SR";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";		
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_AWM_wdl";
_SNrifleMag = "CUP_5Rnd_86x70_L115A1";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_coy";					// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_cbr";                  // Plecak dla pilota (radio)

_bagTL = "CUP_B_Motherlode_Radio_MTP";		//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_cbr";						// Plecak dla medyka (mały)
_bagMm = "B_Kitbag_cbr";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_cbr";        // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_cbr";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_cbr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_cbr";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_cbr";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_cbr";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_cbr";					// Plecak dla MAT

_bagmedium = "B_Kitbag_cbr";	// carries 200, weighs 30
_baglarge =  "B_Carryall_cbr"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_cbr";	// Plecaki SF

_baguav = "tfw_ilbe_blade_coy";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_BAF_DDPM_UBACSLONG","CUP_U_B_BAF_DDPM_UBACSLONGKNEE","CUP_U_B_BAF_DDPM_UBACSROLLEDKNEE","CUP_U_B_BAF_DDPM_UBACSROLLED"];
_baseHelmet = ["CUP_H_BAF_DDPM_Mk6_EMPTY_PRR", "CUP_H_BAF_DDPM_Mk6_GLASS_PRR", "CUP_H_BAF_DDPM_Mk6_GOGGLES_PRR", "CUP_H_BAF_DDPM_Mk6_NETTING_PRR"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_B_BAF_DDPM_Osprey_Mk3_Medic"];
_mediumRig = ["CUP_V_B_BAF_DDPM_Osprey_Mk3_AutomaticRifleman", "CUP_V_B_BAF_DDPM_Osprey_Mk3_Grenadier", "CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer","CUP_V_B_BAF_DDPM_Osprey_Mk3_Rifleman"];
_heavyRig = ["CUP_V_B_BAF_DDPM_Osprey_Mk3_Engineer"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_BAF_PILOT"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_BAF_DDPM_UBACSTSHIRT"];
_crewHelmet = ["CUP_H_BAF_DDPM_Mk6_CREW_PRR"];
_crewRig = ["CUP_V_B_BAF_DDPM_Osprey_Mk3_Crewman"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//UK DPM (WD)
	case 3: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_OD_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";					// Tłumik płomieni

_scope1 = "CUP_optic_CompM2_low_OD";			// Aimpoint
_scope2 = "CUP_optic_Eotech553_OD";				// Eotech
_scope3 = "CUP_optic_LeupoldMk4";					// Celownik snajperski

_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach2,_scope1];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_L85A2_G";
_riflemag = "CUP_30Rnd_556x45_Stanag_L85";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_L85_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_L85A2_NG";
_carbinemag = "CUP_30Rnd_556x45_Stanag_L85";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_L85_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_L85A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag_L85";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_L85_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_L110A1";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_L7A2";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_L129A1_HG";
_DMriflemag = "CUP_20Rnd_762x51_L129_M";

// Strzelec AT
_RAT = "CUP_launch_NLAW";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "rhs_mag_smaw_SR";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";		
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_AWM_wdl";
_SNrifleMag = "CUP_5Rnd_86x70_L115A1";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_gr";					// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_rgr";                  // Plecak dla pilota (radio)

_bagTL = "tfw_ilbe_dd_gr";		//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";						// Plecak dla medyka (mały)
_bagMm = "B_KitB_Kitbag_rgrbag_cbr";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";        // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_rgr";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_rgr";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_rgr";	// Plecaki SF

_baguav = "tfw_ilbe_blade_gr";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_BAF_DPM_UBACSLONG","CUP_U_B_BAF_DPM_UBACSLONGKNEE","CUP_U_B_BAF_DPM_UBACSROLLEDKNEE","CUP_U_B_BAF_DPM_UBACSROLLED"];
_baseHelmet = ["CUP_H_BAF_DPM_Mk6_EMPTY_PRR", "CUP_H_BAF_DPM_Mk6_GLASS_PRR", "CUP_H_BAF_DPM_Mk6_GOGGLES_PRR", "CUP_H_BAF_DPM_Mk6_NETTING_PRR"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_B_BAF_DPM_Osprey_Mk3_Medic"];
_mediumRig = ["CUP_V_B_BAF_DPM_Osprey_Mk3_AutomaticRifleman", "CUP_V_B_BAF_DPM_Osprey_Mk3_Grenadier", "CUP_V_B_BAF_DPM_Osprey_Mk3_Officer","CUP_V_B_BAF_DPM_Osprey_Mk3_Rifleman"];
_heavyRig = ["CUP_V_B_BAF_DPM_Osprey_Mk3_Engineer"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_BAF_PILOT"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_BAF_DPM_UBACSTSHIRT"];
_crewHelmet = ["CUP_H_BAF_DPM_Mk6_CREW_PRR"];
_crewRig = ["CUP_V_B_BAF_DPM_Osprey_Mk3_Crewman"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//US Rangers (MTP)
	case 4: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_Black";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_SCAR_L";		// Tłumik L85
_silencer2 = "CUP_muzzle_mfsup_SCAR_L";					// Tłumik płomieni

_scope1 = "CUP_optic_CompM2_low";			// Aimpoint
_scope2 = "CUP_optic_Eotech553_OD";				// Eotech
_scope3 = "CUP_optic_LeupoldM3LR";					// Celownik snajperski

_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3,_scope1];		//NOC
} 
else {
	_attachments = [_attach3,_scope1];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_Mk16_STD_FG";
_riflemag = "CUP_30Rnd_556x45_Stanag_Mk16_black";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_Mk16_CQC_FG";
_carbinemag = "CUP_30Rnd_556x45_Stanag_Mk16_black";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_Mk16_STD_EGLM";
_glriflemag = "CUP_30Rnd_556x45_Stanag_Mk16_black";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Mk16_black_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_M9";
_pistolmag = "CUP_15Rnd_9x19_M9";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_Mk48_des";
_ARmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_ARmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec MMG
_MMG = "CUP_lmg_M240";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_M110";
_DMriflemag = "CUP_20Rnd_762x51_B_M110";

// Strzelec AT
_RAT = "CUP_launch_M136";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "rhs_mag_smaw_SR";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";		
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M107_Base";
_SNrifleMag = "CUP_10Rnd_127x99_M107";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_gr";					// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_rgr";                  // Plecak dla pilota (radio)

_bagTL = "tfw_ilbe_dd_gr";		//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";						// Plecak dla medyka (mały)
_bagMm = "CFP_Kitbag_Drab";		// Plecak dla medyka (średni)
_bagMb = "CFP_Kitbag_Drab";        // Plecak dla medyka (duży)

_bagARs = "CUP_B_USMC_AssaultPack";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_rgr";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40

_bagmediumdiver =  "CUP_B_USMC_AssaultPack";	// Plecaki SF

_baguav = "tfw_ilbe_blade_gr";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CFP_75th_CRYE_V4b_Full", "CFP_75th_CRYE_V4b_Sleeved"];
_baseHelmet = ["CFP_OpsC_Uncovered", "CFP_OpsC_Covered", "CFP_OpsC_Med", "CFP_OpsC_Uncov_Goggle_Off"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CFP_RAV_operator_OGA_OD"];
_mediumRig = ["CFP_FAPC_Operator_OGA_OD", "CFP_FAPC_Breacher_OGA_OD", "CFP_LBT6094_operator_OGA_OD", "CFP_CarrierRig_Operator_OGA_OD", "CFP_CarrierRig_Breacher_OGA_OD"];
_heavyRig = ["SP_PlateCarrier1_Green", "V_PlateCarrier1_rgr_noflag_F"];

// Siły specjalne
_diverUniform =  ["CFP_75th_CRYE_V4b_Full", "CFP_75th_CRYE_V4b_Sleeved"];
_diverHelmet = ["CFP_OpsC_Uncovered", "CFP_OpsC_Covered", "CFP_OpsC_Med", "CFP_OpsC_Uncov_Goggle_Off"];
_diverRig = ["CFP_FAPC_Operator_OGA_OD", "CFP_FAPC_Breacher_OGA_OD", "CFP_LBT6094_operator_OGA_OD", "CFP_CarrierRig_Operator_OGA_OD", "CFP_CarrierRig_Breacher_OGA_OD", "CFP_RAV_operator_OGA_OD"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CFP_75th_CRYE_V4b_Sleeved"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["SP_Tactical1_Tan"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//USMC (WD)
	case 5: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_OD_Top";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Top_Flashlight_OD_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_M16_camo";		// Tłumik L85
_silencer2 = "CUP_muzzle_mfsup_Flashhider_556x45_OD";					// Tłumik płomieni

_scope1 = "CUP_optic_Eotech553_OD";			// Aimpoint
_scope2 = "CUP_optic_MicroT1_coyote";				// Eotech
_scope3 = "CUP_optic_LeupoldM3LR";					// Celownik snajperski

_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3,_scope1];		//NOC
} 
else {
	_attachments = [_attach3,_scope1];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A4_Grip";
_riflemag = "CUP_30Rnd_556x45_Emag";
_riflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_M4A3_black";
_carbinemag = "CUP_30Rnd_556x45_Emag";
_carbinemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A4_GL";
_glriflemag = "CUP_30Rnd_556x45_Emag";
_glriflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_m249_pip1";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_M240";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_Mk12SPR";
_DMriflemag = "CUP_20Rnd_556x45_Stanag";

// Strzelec AT
_RAT = "CUP_launch_M136";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_Mk153Mod0";
_MATmag1 = "CUP_SMAW_HEAA_M";
_MATmag2 = "CUP_SMAW_HEDP_M";
_MAT_sight = "CUP_optic_SMAW_Scope";
_MATsptr = "CUP_SMAW_Spotting";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";		
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M107_Base";
_SNrifleMag = "CUP_10Rnd_127x99_M107";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_wd";					// Plecak dla dowódcy (radio)
_bagPP = "CFP_AssaultPack_Marpat";                  // Plecak dla pilota (radio)

_bagTL = "tfw_ilbe_dd_gr";		//Plecak dowódcy drużyny

_bagMs = "CFP_AssaultPack_Marpat";						// Plecak dla medyka (mały)
_bagMm = "CFP_Kitbag_Marpat";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_khk";        // Plecak dla medyka (duży)

_bagARs = "CFP_AssaultPack_Marpat";		// Plecak dla RKM (mały)
_bagARm = "CFP_Kitbag_Marpat";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_khk";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_khk";		// Plecak dla Mechanika

_bagR = "CFP_AssaultPack_Marpat";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_khk";					// Plecak dla MAT

_bagmedium = "CFP_Kitbag_Marpat";	// carries 200, weighs 30
_baglarge =  "B_Carryall_khk"; 				// carries 320, weighs 40

_bagmediumdiver =  "CFP_AssaultPack_Marpat";	// Plecaki SF

_baguav = "tfw_ilbe_blade_wd";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_USMC_FROG2_WMARPAT","CUP_U_B_USMC_FROG4_WMARPAT"];
_baseHelmet = ["CUP_H_USMC_LWH_WDL", "CUP_H_USMC_LWH_ESS_HS_WDL", "CUP_H_USMC_LWH_ESS_LR_WDL", "CUP_H_USMC_LWH_NVGMOUNT_ESS_HS_WDL", "CUP_H_USMC_LWH_NVGMOUNT_ESS_LR_WDL"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_B_MTV_Pouches"];
_mediumRig = ["CUP_V_B_MTV_PistolBlack", "CUP_V_B_MTV_LegPouch", "CUP_V_B_MTV_Marksman", "CUP_V_B_MTV_TL"];
_heavyRig = ["CUP_V_B_MTV_Mine"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_USMC_Helmet_Pilot"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_USMC_FROG3_WMARPAT"];
_crewHelmet = ["CUP_H_USMC_ACVC_WDL"];
_crewRig = ["CUP_V_B_MTV"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//USMC (DS)
	case 6: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_OD_Top";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_M16_desert";		// Tłumik L85
_silencer2 = "CUP_muzzle_mfsup_Flashhider_556x45_Tan";					// Tłumik płomieni

_scope1 = "CUP_optic_Eotech533";			// Aimpoint
_scope2 = "CUP_optic_MicroT1_coyote";				// Eotech
_scope3 = "CUP_optic_LeupoldM3LR";					// Celownik snajperski

_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3,_scope1];		//NOC
} 
else {
	_attachments = [_attach3,_scope1];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A4_Grip";
_riflemag = "CUP_30Rnd_556x45_Emag";
_riflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_M4A3_black";
_carbinemag = "CUP_30Rnd_556x45_Emag";
_carbinemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A4_GL";
_glriflemag = "CUP_30Rnd_556x45_Emag";
_glriflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_m249_pip1";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_M240";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_Mk12SPR";
_DMriflemag = "CUP_20Rnd_556x45_Stanag";

// Strzelec AT
_RAT = "CUP_launch_M136";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_Mk153Mod0";
_MATmag1 = "CUP_SMAW_HEAA_M";
_MATmag2 = "CUP_SMAW_HEDP_M";
_MAT_sight = "CUP_optic_SMAW_Scope";
_MATsptr = "CUP_SMAW_Spotting";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";		
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M107_Base";
_SNrifleMag = "CUP_10Rnd_127x99_M107";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_d";					// Plecak dla dowódcy (radio)
_bagPP = "CFP_AssaultPack_MarpatDesert";                  // Plecak dla pilota (radio)

_bagTL = "tfw_ilbe_dd_d";		//Plecak dowódcy drużyny

_bagMs = "CFP_AssaultPack_MarpatDesert";						// Plecak dla medyka (mały)
_bagMm = "CFP_Kitbag_MarpatDesert";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_khk";        // Plecak dla medyka (duży)

_bagARs = "CFP_AssaultPack_MarpatDesert";		// Plecak dla RKM (mały)
_bagARm = "CFP_Kitbag_MarpatDesert";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_khk";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_khk";		// Plecak dla Mechanika

_bagR = "CFP_AssaultPack_MarpatDesert";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_khk";					// Plecak dla MAT

_bagmedium = "CFP_Kitbag_MarpatDesert";	// carries 200, weighs 30
_baglarge =  "B_Carryall_khk"; 				// carries 320, weighs 40

_bagmediumdiver =  "CFP_AssaultPack_MarpatDesert";	// Plecaki SF

_baguav = "tfw_ilbe_blade_d";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_USMC_FROG2_DMARPAT","CUP_U_B_USMC_FROG4_DMARPAT"];
_baseHelmet = ["CUP_H_USMC_LWH_DES", "CUP_H_USMC_LWH_ESS_HS_DES", "CUP_H_USMC_LWH_ESS_LR_DES", "CUP_H_USMC_LWH_NVGMOUNT_ESS_HS_DES", "CUP_H_USMC_LWH_NVGMOUNT_ESS_LR_DES"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_B_MTV_Pouches"];
_mediumRig = ["CUP_V_B_MTV_PistolBlack", "CUP_V_B_MTV_LegPouch", "CUP_V_B_MTV_Marksman", "CUP_V_B_MTV_TL"];
_heavyRig = ["CUP_V_B_MTV_Mine"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_USMC_Helmet_Pilot"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_USMC_FROG3_DMARPAT"];
_crewHelmet = ["CUP_H_USMC_ACVC_DES"];
_crewRig = ["CUP_V_B_MTV"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//US Army (UCP)
	case 7: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_Black";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_M16";		// Tłumik L85
_silencer2 = "CUP_muzzle_mfsup_Flashhider_556x45_Black";					// Tłumik płomieni

_scope1 = "CUP_optic_Eotech553_Black";			// Aimpoint
_scope2 = "CUP_optic_CompM2_low";				// Eotech
_scope3 = "CUP_optic_LeupoldM3LR";					// Celownik snajperski

_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2,_scope1];		//NOC
} 
else {
	_attachments = [_attach1,_scope1];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A4_Grip";
_riflemag = "CUP_30Rnd_556x45_Stanag";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_M4A3_black";
_carbinemag = "CUP_30Rnd_556x45_Stanag";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M4A1_BUIS_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_m249_para";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_M240";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_Mk12SPR";
_DMriflemag = "CUP_20Rnd_556x45_Stanag";

// Strzelec AT
_RAT = "CUP_launch_M136";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";		
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M107_Base";
_SNrifleMag = "CUP_10Rnd_127x99_M107";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_gr";					// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_rgr";                  // Plecak dla pilota (radio)

_bagTL = "tfw_ilbe_dd_gr";		//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";						// Plecak dla medyka (mały)
_bagMm = "B_Kitbag_rgr";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";        // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_rgr";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_rgr";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_rgr";	// Plecaki SF

_baguav = "tfw_ilbe_blade_gr";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CFP_U_FieldUniform_acu"];
_baseHelmet = ["CUP_H_USArmy_HelmetMICH_earpro_ess", "CUP_H_USArmy_HelmetMICH_earpro", "CUP_H_USArmy_HelmetMICH_ESS", "CUP_H_USArmy_HelmetMICH_headset_ess", "CUP_H_USArmy_HelmetMICH_headset"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_B_Interceptor_Rifleman_Olive"];
_mediumRig = ["CUP_V_B_Interceptor_Grenadier_M81", "CUP_V_B_Interceptor_Rifleman_M81"];
_heavyRig = ["CUP_V_B_Interceptor_Grenadier_Olive"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USArmy_PilotOverall"];
_pilotHelmet = ["CUP_H_USMC_Helmet_Pilot"];
_pilotRig = ["CUP_V_B_USArmy_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_US_BDU_roll2_glove"];
_crewHelmet = ["CUP_H_USMC_ACVC_WDL"];
_crewRig = ["CUP_V_B_Interceptor_Base_M81"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//US Army CW (WD)
	case 8: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_Black";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_M16";		// Tłumik L85
_silencer2 = "CUP_muzzle_mfsup_Flashhider_556x45_Black";					// Tłumik płomieni

_scope1 = "CUP_optic_Eotech553_Black";			// Aimpoint
_scope2 = "CUP_optic_CompM2_low";				// Eotech
_scope3 = "CUP_optic_LeupoldM3LR";					// Celownik snajperski

_bipod1 = "CUP_bipod_Harris_1A2_L";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3];		//NOC
} 
else {
	_attachments = [];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A2";
_riflemag = "CUP_30Rnd_556x45_Stanag";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_Colt727";
_carbinemag = "CUP_30Rnd_556x45_Stanag";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_M249_E2";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_M60E4_norail";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_M14";
_DMriflemag = "CUP_20Rnd_762x51_DMR";

// Strzelec AT
_RAT = "CUP_launch_M72A6_Special";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_M47";		
_HATmag1 = "CUP_Dragon_EP1_M";
_HATmag2 = "CUP_Dragon_EP1_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M40A3";
_SNrifleMag = "CUP_5Rnd_762x51_M24";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "usm_pack_st138_prc77";					// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_oli";                  // Plecak dla pilota (radio)

_bagTL = "usm_pack_alice_prc77";		//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_oli";						// Plecak dla medyka (mały)
_bagMm = "usm_pack_m5_medic";		// Plecak dla medyka (średni)
_bagMb = "usm_pack_alice";        // Plecak dla medyka (duży)

_bagARs = "B_FieldPack_oli";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "usm_pack_alice";                   // Plecak dla RKM (duży)

_bagENG = "usm_pack_alice";		// Plecak dla Mechanika

_bagR = "B_FieldPack_oli";					// Plecak dla strzelca, strzelca AT

_bagMAT = "usm_pack_alice";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "usm_pack_alice"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_oli";	// Plecaki SF

_baguav = "usm_pack_st138_prc77";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["usm_bdu_w"];
_baseHelmet = ["usm_helmet_pasgt_g_w", "usm_helmet_pasgt_w"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["usm_vest_pasgt_lbv_rmp_m"];
_mediumRig = ["usm_vest_pasgt_lbv_rm_m", "usm_vest_pasgt_lbv_mg_m", "usm_vest_pasgt_lbv_gr_m"];
_heavyRig = ["usm_vest_pasgt_lbv_rmp_m"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_USMC_Helmet_Pilot"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["usm_bdu_odg"];
_crewHelmet = ["CUP_H_USMC_ACVC_WDL"];
_crewRig = ["usm_vest_pasgt"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//US Army CW (DS)
	case 9: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_Black";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_M16";		// Tłumik L85
_silencer2 = "CUP_muzzle_mfsup_Flashhider_556x45_Black";					// Tłumik płomieni

_scope1 = "CUP_optic_Eotech553_Black";			// Aimpoint
_scope2 = "CUP_optic_CompM2_low";				// Eotech
_scope3 = "CUP_optic_LeupoldM3LR";					// Celownik snajperski

_bipod1 = "CUP_bipod_Harris_1A2_L";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3];		//NOC
} 
else {
	_attachments = [];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A2";
_riflemag = "CUP_30Rnd_556x45_Stanag";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_Colt727";
_carbinemag = "CUP_30Rnd_556x45_Stanag";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_M249_E2";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_M60E4_norail";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_M14";
_DMriflemag = "CUP_20Rnd_762x51_DMR";

// Strzelec AT
_RAT = "CUP_launch_M72A6_Special";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_M47";		
_HATmag1 = "CUP_Dragon_EP1_M";
_HATmag2 = "CUP_Dragon_EP1_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M40A3";
_SNrifleMag = "CUP_5Rnd_762x51_M24";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "usm_pack_st138_prc77";					// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_oli";                  // Plecak dla pilota (radio)

_bagTL = "usm_pack_alice_prc77";		//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_oli";						// Plecak dla medyka (mały)
_bagMm = "usm_pack_m5_medic";		// Plecak dla medyka (średni)
_bagMb = "usm_pack_alice";        // Plecak dla medyka (duży)

_bagARs = "B_FieldPack_oli";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "usm_pack_alice";                   // Plecak dla RKM (duży)

_bagENG = "usm_pack_alice";		// Plecak dla Mechanika

_bagR = "B_FieldPack_oli";					// Plecak dla strzelca, strzelca AT

_bagMAT = "usm_pack_alice";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "usm_pack_alice"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_oli";	// Plecaki SF

_baguav = "usm_pack_st138_prc77";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["usm_bdu_dcu"];
_baseHelmet = ["usm_helmet_pasgt_g_dcu", "usm_helmet_pasgt_dcu"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["usm_vest_pasgtdcu_lbv_rmp_m"];
_mediumRig = ["usm_vest_pasgtdcu_lbv_rm_m", "usm_vest_pasgtdcu_lbv_mg_m", "usm_vest_pasgtdcu_lbv_gr_m"];
_heavyRig = ["usm_vest_pasgtdcu_lbv_rmp_m"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_USMC_Helmet_Pilot"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["usm_bdu_odg"];
_crewHelmet = ["CUP_H_USMC_ACVC_DES"];
_crewRig = ["usm_vest_pasgt"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//US Army CW (WT)
	case 10: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_Black";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_M16";		// Tłumik L85
_silencer2 = "CUP_muzzle_mfsup_Flashhider_556x45_Black";					// Tłumik płomieni

_scope1 = "CUP_optic_Eotech553_Black";			// Aimpoint
_scope2 = "CUP_optic_CompM2_low";				// Eotech
_scope3 = "CUP_optic_LeupoldM3LR";					// Celownik snajperski

_bipod1 = "CUP_bipod_Harris_1A2_L";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3];		//NOC
} 
else {
	_attachments = [];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A2";
_riflemag = "CUP_30Rnd_556x45_Stanag";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_Colt727";
_carbinemag = "CUP_30Rnd_556x45_Stanag";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_M249_E2";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_M60E4_norail";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_M14";
_DMriflemag = "CUP_20Rnd_762x51_DMR";

// Strzelec AT
_RAT = "CUP_launch_M72A6_Special";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_M47";		
_HATmag1 = "CUP_Dragon_EP1_M";
_HATmag2 = "CUP_Dragon_EP1_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M40A3";
_SNrifleMag = "CUP_5Rnd_762x51_M24";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "usm_pack_st138_prc77";					// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_oli";                  // Plecak dla pilota (radio)

_bagTL = "usm_pack_alice_prc77";		//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_oli";						// Plecak dla medyka (mały)
_bagMm = "usm_pack_m5_medic";		// Plecak dla medyka (średni)
_bagMb = "usm_pack_alice";        // Plecak dla medyka (duży)

_bagARs = "B_FieldPack_oli";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "usm_pack_alice";                   // Plecak dla RKM (duży)

_bagENG = "usm_pack_alice";		// Plecak dla Mechanika

_bagR = "B_FieldPack_oli";					// Plecak dla strzelca, strzelca AT

_bagMAT = "usm_pack_alice";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "usm_pack_alice"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_oli";	// Plecaki SF

_baguav = "usm_pack_st138_prc77";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["usm_bdu_ubn"];
_baseHelmet = ["usm_helmet_pasgt_g_w", "usm_helmet_pasgt_w"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["usm_vest_pasgt_lbv_rmp_m"];
_mediumRig = ["usm_vest_pasgt_lbv_rm_m", "usm_vest_pasgt_lbv_mg_m", "usm_vest_pasgt_lbv_gr_m"];
_heavyRig = ["usm_vest_pasgt_lbv_rmp_m"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_USMC_Helmet_Pilot"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["usm_bdu_odg"];
_crewHelmet = ["CUP_H_USMC_ACVC_WDL"];
_crewRig = ["usm_vest_pasgt"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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
	
	//CDF (WD) [U]
	case 11: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_grey";		// Laser (RHS)
//_attach2 = "";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "CUP_acc_Flashlight";				// Latarka (RHS)

_silencer1 = "CUP_muzzle_Bizon";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "CUP_muzzle_mfsup_Flashhider_762x39_Black";		// Tłumik 5.56 (krótki) (RHS)

//_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
//_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "CUP_optic_PSO_3_open";		// Celownik snajperski 6.5-20x

//_bipod1 = "rhsusf_acc_harris_bipod";		// 
//_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3];		//NOC
} else {
	_attachments = [];		//DZIEŃ 			
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK47_Early";
_riflemag = "CUP_30Rnd_762x39_AK47_M";
_riflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKMS_Early";
_carbinemag = "CUP_30Rnd_762x39_AK47_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK74M_M";
_smgmag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK74M_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK47_GL_Early";
_glriflemag = "CUP_30Rnd_762x39_AK47_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";
_glmag = "CUP_1Rnd_HE_GP25_M";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_arifle_RPK74";
_ARmag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";
_ARmag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";

// Strzelec MMG
_MMG = "CUP_lmg_PKM";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VM_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_9K32Strela";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Metis";		
_HATmag1 = "CUP_AT13_M";
_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_ksvk";
_SNrifleMag = "CUP_5Rnd_127x108_KSVK_M";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "CUP_B_Kombat_Radio_Olive";					// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_oli";                  // Plecak dla pilota (radio)

_bagTL = "CUP_B_Kombat_Olive";		//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_oli";						// Plecak dla medyka (mały)
_bagMm = "CUP_B_AlicePack_Khaki";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";        // Plecak dla medyka (duży)

_bagARs = "B_FieldPack_oli";		// Plecak dla RKM (mały)
_bagARm = "CUP_B_AlicePack_Khaki";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";		// Plecak dla Mechanika

_bagR = "B_FieldPack_oli";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";					// Plecak dla MAT

_bagmedium = "CUP_B_AlicePack_Khaki";	// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_oli";	// Plecaki SF

_baguav = "CUP_B_Kombat_Radio_Olive";					// Plecak RTO

_baghmgg = "CUP_B_DShkM_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_DShkM_TripodLow_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_SPG9_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_SPG9_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_CDF_MNT_1","CUP_U_B_CDF_MNT_2"];
_baseHelmet = ["CUP_H_CDF_H_PASGT_MNT","SP_PASGTHelmet_Green2"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_Green"];
_mediumRig = ["CUP_V_CDF_6B3_4_Green", "CUP_V_CDF_6B3_3_Green", "CUP_V_CDF_6B3_5_Green"];
_heavyRig = ["CUP_V_CDF_6B3_2_Green"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_CDF_MNT_1"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up"];
_pilotRig = ["CUP_V_CDF_OfficerBelt"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_CDF_MNT_2"];
_crewHelmet = ["CUP_H_RUS_TSH_4_Brown"];
_crewRig = ["CUP_V_CDF_CrewBelt"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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
	
	//CDF (DS) [U]
	case 12: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_grey";		// Laser (RHS)
//_attach2 = "";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "CUP_acc_Flashlight";				// Latarka (RHS)

_silencer1 = "CUP_muzzle_Bizon";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "CUP_muzzle_mfsup_Flashhider_762x39_Black";		// Tłumik 5.56 (krótki) (RHS)

//_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
//_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "CUP_optic_PSO_3_open";		// Celownik snajperski 6.5-20x

//_bipod1 = "rhsusf_acc_harris_bipod";		// 
//_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3];		//NOC
} else {
	_attachments = [];		//DZIEŃ 			
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK47_Early";
_riflemag = "CUP_30Rnd_762x39_AK47_M";
_riflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKMS_Early";
_carbinemag = "CUP_30Rnd_762x39_AK47_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK74M_M";
_smgmag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK74M_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK47_GL_Early";
_glriflemag = "CUP_30Rnd_762x39_AK47_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";
_glmag = "CUP_1Rnd_HE_GP25_M";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_arifle_RPK74";
_ARmag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";
_ARmag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";

// Strzelec MMG
_MMG = "CUP_lmg_PKM";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VM_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_9K32Strela";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Metis";		
_HATmag1 = "CUP_AT13_M";
_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_ksvk";
_SNrifleMag = "CUP_5Rnd_127x108_KSVK_M";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "CUP_B_Kombat_Radio_Olive";					// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_oli";                  // Plecak dla pilota (radio)

_bagTL = "CUP_B_Kombat_Olive";		//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_oli";						// Plecak dla medyka (mały)
_bagMm = "CUP_B_AlicePack_Khaki";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";        // Plecak dla medyka (duży)

_bagARs = "B_FieldPack_oli";		// Plecak dla RKM (mały)
_bagARm = "CUP_B_AlicePack_Khaki";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";		// Plecak dla Mechanika

_bagR = "B_FieldPack_oli";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";					// Plecak dla MAT

_bagmedium = "CUP_B_AlicePack_Khaki";	// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_oli";	// Plecaki SF

_baguav = "CUP_B_Kombat_Radio_Olive";					// Plecak RTO

_baghmgg = "CUP_B_DShkM_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_DShkM_TripodLow_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_SPG9_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_SPG9_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_CDF_DST_1","CUP_U_B_CDF_DST_2"];
_baseHelmet = ["CUP_H_CDF_H_PASGT_DST"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_Green"];
_mediumRig = ["CUP_V_CDF_6B3_4_Green", "CUP_V_CDF_6B3_3_Green", "CUP_V_CDF_6B3_5_Green"];
_heavyRig = ["CUP_V_CDF_6B3_2_Green"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_CDF_DST_1"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up"];
_pilotRig = ["CUP_V_CDF_OfficerBelt"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_CDF_DST_2"];
_crewHelmet = ["CUP_H_RUS_TSH_4_Brown"];
_crewRig = ["CUP_V_CDF_CrewBelt"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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
	
	//CDF (WT) [U]
	case 13: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_grey";		// Laser (RHS)
//_attach2 = "";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "CUP_acc_Flashlight";				// Latarka (RHS)

_silencer1 = "CUP_muzzle_Bizon";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "CUP_muzzle_mfsup_Flashhider_762x39_Black";		// Tłumik 5.56 (krótki) (RHS)

//_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
//_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "CUP_optic_PSO_3_open";		// Celownik snajperski 6.5-20x

//_bipod1 = "rhsusf_acc_harris_bipod";		// 
//_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3];		//NOC
} else {
	_attachments = [];		//DZIEŃ 			
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK47_Early";
_riflemag = "CUP_30Rnd_762x39_AK47_M";
_riflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKMS_Early";
_carbinemag = "CUP_30Rnd_762x39_AK47_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK74M_M";
_smgmag_tr = "CUP_30Rnd_TE1_Red_Tracer_545x39_AK74M_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK47_GL_Early";
_glriflemag = "CUP_30Rnd_762x39_AK47_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_762x39_AK47_M";
_glmag = "CUP_1Rnd_HE_GP25_M";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_arifle_RPK74";
_ARmag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";
_ARmag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";

// Strzelec MMG
_MMG = "CUP_lmg_PKM";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VM_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_9K32Strela";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Metis";		
_HATmag1 = "CUP_AT13_M";
_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_ksvk";
_SNrifleMag = "CUP_5Rnd_127x108_KSVK_M";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "CUP_B_Kombat_Radio_Olive";					// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_oli";                  // Plecak dla pilota (radio)

_bagTL = "CUP_B_Kombat_Olive";		//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_oli";						// Plecak dla medyka (mały)
_bagMm = "CUP_B_AlicePack_Khaki";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";        // Plecak dla medyka (duży)

_bagARs = "B_FieldPack_oli";		// Plecak dla RKM (mały)
_bagARm = "CUP_B_AlicePack_Khaki";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";		// Plecak dla Mechanika

_bagR = "B_FieldPack_oli";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";					// Plecak dla MAT

_bagmedium = "CUP_B_AlicePack_Khaki";	// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_oli";	// Plecaki SF

_baguav = "CUP_B_Kombat_Radio_Olive";					// Plecak RTO

_baghmgg = "CUP_B_DShkM_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_DShkM_TripodLow_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_SPG9_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_SPG9_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_CDF_SNW_2"];
_baseHelmet = ["CUP_H_CDF_H_PASGT_SNW"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_Green"];
_mediumRig = ["CUP_V_CDF_6B3_4_Green", "CUP_V_CDF_6B3_3_Green", "CUP_V_CDF_6B3_5_Green"];
_heavyRig = ["CUP_V_CDF_6B3_2_Green"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_CDF_SNW_2"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up"];
_pilotRig = ["CUP_V_CDF_OfficerBelt"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_CDF_SNW_2"];
_crewHelmet = ["CUP_H_RUS_TSH_4_Brown"];
_crewRig = ["CUP_V_CDF_CrewBelt"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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
	
	//IDF [MD]
	case 14: 
	{
// Dodatki broń główna
_attach1 = "CFP_acc_ANPEQ15_Black";		// Laser (RHS)
//_attach2 = "";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "CUP_acc_Flashlight";				// Latarka (RHS)

//_silencer1 = "CUP_muzzle_Bizon";		// Tłumik 5.56 (długi) (RHS)
//_silencer2 = "CUP_muzzle_mfsup_Flashhider_762x39_Black";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "CUP_optic_HoloBlack";				// Eotech (Czarny PSZ)
//_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "CUP_optic_LeupoldM3LR";		// Celownik snajperski 6.5-20x

//_bipod1 = "rhsusf_acc_harris_bipod";		// 
//_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_scope1,_attach1];		//NOC
} else {
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CFP_Tavor_Black_Long";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";
 
// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CFP_Tavor_Black";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";
 
// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hgun_PDW2000_F";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Mag";
// Broń z granatnikiem (dla dowóców)
_glrifle = "CFP_Tavor_Black_GL";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "LMG_Zafir_F";
_ARmag = "150Rnd_762x54_Box";
_ARmag_tr = "150Rnd_762x54_Box_Tracer";

// Strzelec MMG
_MMG = "CUP_lmg_M240";
_MMGmag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_M136";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";      
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M40A3";
_SNrifleMag = "CUP_5Rnd_762x51_M24";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_coy";                   // Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_coy";                  // Plecak dla pilota (radio)
 
_bagTL = "CFP_AssaultPack_IDF";        //Plecak dowódcy drużyny
 
_bagMs = "CFP_AssaultPack_IDF";                        // Plecak dla medyka (mały)
_bagMm = "CFP_AssaultPack_IDF";        // Plecak dla medyka (średni)
_bagMb = "B_Carryall_khk";        // Plecak dla medyka (duży)
 
_bagARs = "CFP_AssaultPack_IDF";       // Plecak dla RKM (mały)
_bagARm = "CFP_AssaultPack_IDF";                   // Plecak dla RKM (średni)
_bagARb = "B_Carryall_khk";                   // Plecak dla RKM (duży)
 
_bagENG = "B_Carryall_khk";       // Plecak dla Mechanika
 
_bagR = "CFP_AssaultPack_IDF";                  // Plecak dla strzelca, strzelca AT
 
_bagMAT = "B_Carryall_khk";                   // Plecak dla MAT
 
_bagmedium = "rhsusf_assault_eagleaiii_ucp";    // carries 200, weighs 30
_baglarge =  "B_Carryall_mcamo";                // carries 320, weighs 40
 
_bagmediumdiver =  "CFP_AssaultPack_IDF";  // Plecaki SF
 
_baguav = "tfw_ilbe_coy";                   // Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";                    // used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";            // used by Heavy MG assistant gunner
 
_baghatg = "CUP_B_Tow_Gun_Bag";                   // used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";               // used by Heavy AT assistant gunner
 
_bagmtrg = "CUP_B_M252_Gun_Bag";              // used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";           // used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CFP_U_FieldUniform_idf_SS", "CFP_U_FieldUniform_idf"];
_baseHelmet = ["CFP_IDF_M76", "CFP_IDF_M76_BD_CB_GG_Black", "CFP_IDF_M76_GG", "CFP_IDF_M76_CB_GG", "CFP_IDF_M76_BD_GG", "CFP_MitzHelm1_Des2", "CFP_MitzHelm2_Des2", "CFP_MitzHelm3_Des2", "CFP_MitzHelm4_Des2"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CFP_Modular1_IDF"];
_mediumRig = ["CFP_RAV_IDF"];
_heavyRig = ["CFP_RAV_IDF"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["SP_0000_Standard_FieldUniform_Green"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["V_TacVest_oli"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["SP_0000_Standard_FieldUniform_Green"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["CFP_Modular1_IDF"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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
	
	//BW WD [MD]
	case 15: 
	{
// Dodatki bron glówna
_attach1 = "CUP_acc_ANPEQ_15";     // Laser 
_attach2 = "acc_flashlight";   // Laser i latarka (mozna przelaczyc) 
_attach3 = "CUP_acc_LLM";      // Latarka 
 
_silencer1 = "CUP_muzzle_snds_G36_desert";        // Tlumik 5.56 (dlugi) 
_silencer2 = "CUP_muzzle_snds_G36_black";      // Tlumik 5.56 (krótki) 
 
_scope1 = "CUP_optic_ZeissZPoint";          // Eotech 
_scope2 = "CUP_optic_CompM2_Black";              // Aimpoint
_scope3 = "CUP_optic_SB_3_12x50_PMII";       // Celownik snajperski 6.5-20x
_scope4 = "optic_Holosight_smg_blk_F";             // Aimpoint  (SF)
 
_bipod1 = "CUP_Bipod_G36";        //
_bipod2 = "CUP_Bipod_G36";               // Grippod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_scope1,_attach1];		//NOC
} else {
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_G36A_RIS";
_riflemag = "CUP_30Rnd_556x45_G36";
_riflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
 
// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_G36K_RIS";
_carbinemag = "CUP_30Rnd_556x45_G36";
_carbinemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
 
// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hgun_PDW2000_F";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Red_Mag";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_G36A_AG36_RIS";
_glriflemag = "CUP_30Rnd_556x45_G36";
_glriflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_arifle_MG36";
_ARmag = "CUP_100Rnd_556x45_BetaCMag";
_ARmag_tr = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";

// Strzelec MMG
_MMG = "CUP_lmg_MG3";
_MMGmag = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_G22_wdl";
_DMriflemag = "CUP_5Rnd_762x67_G22";

// Strzelec AT
_RAT = "CUP_launch_M136";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";      
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M107_Base";
_SNrifleMag = "CUP_10Rnd_127x99_M107";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";                      // Spadochron
 
_bagFTL = "tfw_ilbe_blade_coy";                   // Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_dd_coy";                  // Plecak dla pilota (radio)
 
_bagTL = "tfw_ilbe_dd_coy";        //Plecak dowódcy druzyny
 
_bagMs = "CFP_AssaultPack_Tropentarn";                        // Plecak dla medyka (maly)
_bagMm = "CFP_Kitbag_Tropentarn";        // Plecak dla medyka (sredni)
_bagMb = "CFP_Kitbag_Tropentarn";        // Plecak dla medyka (duzy)
 
_bagARs = "CFP_AssaultPack_Tropentarn";       // Plecak dla RKM (maly)
_bagARm = "CUP_B_GER_Pack_Tropentarn";                   // Plecak dla RKM (sredni)
_bagARb = "CUP_B_GER_Pack_Tropentarn";                   // Plecak dla RKM (duzy)
 
_bagENG = "CUP_B_GER_Pack_Tropentarn";       // Plecak dla Mechanika
 
_bagR = "CUP_B_GER_Pack_Tropentarn";                  // Plecak dla strzelca, strzelca AT
 
_bagMAT = "CFP_Kitbag_Tropentarn";                   // Plecak dla MAT
 
_bagmedium = "CUP_B_GER_Pack_Tropentarn";    // carries 200, weighs 30
_baglarge =  "CUP_B_GER_Pack_Tropentarn";                // carries 320, weighs 40
 
_bagmediumdiver =  "CFP_Kitbag_Drab";  // Plecaki SF
 
_baguav = "tfw_ilbe_coy";                   // Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";                    // used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";            // used by Heavy MG assistant gunner
 
_baghatg = "CUP_B_Tow_Gun_Bag";                   // used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";               // used by Heavy AT assistant gunner
 
_bagmtrg = "CUP_B_M252_Gun_Bag";              // used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";           // used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_GER_Flecktarn_1"];
_baseHelmet = ["CFP_PASGTHelmet_Flecktarn2", "CFP_PASGTHelmet_Flecktarn1"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_B_GER_Carrier_Vest_2"];
_mediumRig = ["CUP_V_B_GER_Carrier_Vest", "CUP_V_B_GER_Carrier_Vest_3"];
_heavyRig = ["CUP_V_B_GER_Carrier_Vest_2"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["SP_0000_Standard_FieldUniform_Tan"];
_pilotHelmet = ["CUP_H_BAF_Helmet_Pilot"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_GER_Flecktarn_2"];
_crewHelmet = ["CUP_H_USMC_ACVC_WDL"];
_crewRig = ["CUP_V_B_GER_Vest_1"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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
	
	//Bundeswehr (DS) [U]
	case 16: 
	{
// Dodatki bron glówna
_attach1 = "CUP_acc_ANPEQ_15";     // Laser 
_attach2 = "acc_flashlight";   // Laser i latarka (mozna przelaczyc) 
_attach3 = "CUP_acc_LLM";      // Latarka 
 
_silencer1 = "CUP_muzzle_snds_G36_desert";        // Tlumik 5.56 (dlugi) 
_silencer2 = "CUP_muzzle_snds_G36_black";      // Tlumik 5.56 (krótki) 
 
_scope1 = "CUP_optic_HoloDesert";          // Eotech 
_scope2 = "CUP_optic_CompM2_Black";              // Aimpoint
_scope3 = "CUP_optic_SB_3_12x50_PMII";       // Celownik snajperski 6.5-20x
_scope4 = "optic_Holosight_smg_blk_F";             // Aimpoint  (SF)
 
_bipod1 = "CUP_Bipod_G36";        //
_bipod2 = "CUP_Bipod_G36";               // Grippod
 
// Jakie dodatki maja byc dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {                 // Kazda jednostka otrzyma ten zestaw dodatków
    _attachments = [_attach1];      //NOC
} else {
    _attachments = [_attach2];      //DZIEN           
};
 
// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunieta
// false = nie zmieniaj dodatków, zostaw tak jak domyslnie arma respi na broni
 
// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";   // 9mm tlumik do Glocka 17
_hg_attah1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";           // MRD
_hg_attachments= [_hg_attah1];
// ====================================================================================
 
// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_G36A_RIS";
_riflemag = "CUP_30Rnd_556x45_G36";
_riflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
 
// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_G36K_RIS";
_carbinemag = "CUP_30Rnd_556x45_G36";
_carbinemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
 
// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hgun_PDW2000_F";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Red_Mag";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_G36A_AG36_RIS";
_glriflemag = "CUP_30Rnd_556x45_G36";
_glriflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_arifle_MG36";
_ARmag = "CUP_100Rnd_556x45_BetaCMag";
_ARmag_tr = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";

// Strzelec MMG
_MMG = "CUP_lmg_MG3";
_MMGmag = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_G22_wdl";
_DMriflemag = "CUP_5Rnd_762x67_G22";

// Strzelec AT
_RAT = "CUP_launch_M136";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";      
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M107_Base";
_SNrifleMag = "CUP_10Rnd_127x99_M107";
 
// ====================================================================================
 
// Plecaki
 
_bagsmall = "B_Parachute";                      // Spadochron
 
_bagFTL = "tfw_ilbe_blade_coy";                   // Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_dd_coy";                  // Plecak dla pilota (radio)
 
_bagTL = "tfw_ilbe_dd_coy";        //Plecak dowódcy druzyny
 
_bagMs = "CFP_AssaultPack_Tropentarn";                        // Plecak dla medyka (maly)
_bagMm = "CFP_Kitbag_Tropentarn";        // Plecak dla medyka (sredni)
_bagMb = "CFP_Kitbag_Tropentarn";        // Plecak dla medyka (duzy)
 
_bagARs = "CFP_AssaultPack_Tropentarn";       // Plecak dla RKM (maly)
_bagARm = "CUP_B_GER_Pack_Tropentarn";                   // Plecak dla RKM (sredni)
_bagARb = "CUP_B_GER_Pack_Tropentarn";                   // Plecak dla RKM (duzy)
 
_bagENG = "CUP_B_GER_Pack_Tropentarn";       // Plecak dla Mechanika
 
_bagR = "CUP_B_GER_Pack_Tropentarn";                  // Plecak dla strzelca, strzelca AT
 
_bagMAT = "CFP_Kitbag_Tropentarn";                   // Plecak dla MAT
 
_bagmedium = "CUP_B_GER_Pack_Tropentarn";    // carries 200, weighs 30
_baglarge =  "B_Carryall_mcamo";                // carries 320, weighs 40
 
_bagmediumdiver =  "CFP_Kitbag_Drab";  // Plecaki SF
 
_baguav = "tfw_ilbe_coy";                   // Plecak RTO
 
_baghmgg = "CUP_B_M2_Gun_Bag";                    // used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";            // used by Heavy MG assistant gunner
 
_baghatg = "CUP_B_TOW_Tripod_Bag";                   // used by Heavy AT gunner
_baghatag = "CUP_B_Tow_Gun_Bag";               // used by Heavy AT assistant gunner
 
_bagmtrg = "CUP_B_M252_Gun_Bag";              // used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";           // used by Mortar assistant gunner
 
_baghsamg = "B_AA_01_weapon_F";                 // used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";              // used by Heavy SAM assistant gunner
 
// ====================================================================================
 
// Mundury, kamizelki itp.
 
// Definicja jaka klasa do jakiej grupy ma sie zaliczac
// Jezeli jakas klasa nie jest tutaj dopisana domyslnie trafi do "_medium"
 
_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];
 
// Podstawowe mundury
// Elementy wyposazenia sa losowo wybierane z listy
_baseUniform = ["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1"];
_baseHelmet = ["CFP_PASGTHelmet_Tropentarn2", "CFP_PASGTHelmet_Tropentarn1", "CFP_BoonieHat_Tropentarn"];
_baseGlasses = [];
 
// Kamizelki
_lightRig = ["CUP_V_I_RACS_Carrier_Vest_2"];
_mediumRig = ["CFP_PlateCarrier1_Tropentarn", "CFP_PlateCarrier2_Tropentarn", "CUP_V_I_RACS_Carrier_Vest_3", "CUP_V_I_RACS_Carrier_Vest"];
_heavyRig = ["CFP_Modular1_Tropentarn"];
 
// Sily specjalne
_diverUniform =  ["CFP_U_Crye_Tropentarn"];
_diverHelmet = ["CFP_OPS2017_Helmet_Tropentarn","VSM_OPS2017_Helmet_Tan","CFP_OPS2017_Helmet_ATACSAU"];
_diverRig = ["CFP_RAV_operator_OGA_OD","CFP_LBT6094_operator_OGA_OD","CFP_CarrierRig_Operator_OGA_OD","CFP_CarrierRig_Breacher_OGA_OD"];
_diverGlasses = [];
 
// Pilot
_pilotUniform = ["SP_0000_Standard_FieldUniform_Tan"];
_pilotHelmet = ["CUP_H_BAF_Helmet_Pilot"];
_pilotRig = ["CUP_V_BAF_Osprey_Mk2_DDPM_Pilot"];
_pilotGlasses = [];
 
// Zaloga pojazdu
_crewUniform = ["CFP_U_WorkUniform_Flecktarn"];
_crewHelmet = ["SP_Beret2_Black"];
_crewRig = ["CUP_V_B_GER_Vest_2"];
_crewGlasses = [];
 
// Ghillie																																																		
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];
 
// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["CUP_V_CDF_OfficerBelt"];
_sfGlasses = [];
 
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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//ACR (WD)
	case 17: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_15_Black";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Top_Flashlight_Black_L";				// Latarka + laser

_silencer1 = "muzzle_snds_M";		// Tłumik
_silencer2 = "CUP_acc_sffh";					// Tłumik płomieni

_scope1 = "CUP_optic_MicroT1";			// Aimpoint
_scope2 = "CUP_optic_HoloBlack";				// Eotech
_scope3 = "CUP_optic_LeupoldMk4";					// Celownik snajperski

//_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
//_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach3,_scope1];		//NOC
} 
else {
	_attachments = [_attach2,_scope1];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_CZ805_A1";
_riflemag = "CUP_30Rnd_556x45_G36";
_riflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_CZ805_A2";
_carbinemag = "CUP_30Rnd_556x45_G36";
_carbinemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_EVO";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Red_Mag";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_CZ805_GL";
_glriflemag = "CUP_30Rnd_556x45_G36";
_glriflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Duty";
_pistolmag = "16Rnd_9x21_Mag";

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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_lmg_minimipara";
_ARmag = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";
_ARmag_tr = "CUP_100Rnd_TE4_Red_Tracer_556x45_M249";

// Strzelec MMG
_MMG = "CUP_lmg_UK59";
_MMGmag = "CUP_50Rnd_UK59_762x54R_Tracer";
_MMGmag_tr = "CUP_50Rnd_UK59_762x54R_Tracer";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_CZ750";
_DMriflemag = "CUP_10Rnd_762x51_CZ750_Tracer";

// Strzelec AT
_RAT = "CUP_launch_M72A6";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "rhs_mag_smaw_SR";

// Strzelec AA
_SAM = "CUP_launch_FIM92Stinger";
//_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "CUP_launch_Javelin";		
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_AS50";
_SNrifleMag = "CUP_5Rnd_127x99_as50_M";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";					// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_rgr";                  // Plecak dla pilota (radio)

_bagTL = "tfw_ilbe_dd_gr";		//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";						// Plecak dla medyka (mały)
_bagMm = "B_Kitbag_rgr";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";        // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_rgr";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_rgr";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_rgr";	// Plecaki SF

_baguav = "tfw_ilbe_gr";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_CZ_WDL_NoKneepads", "CUP_U_B_CZ_WDL_Kneepads"];
_baseHelmet = ["CUP_H_CZ_Helmet03", "CUP_H_CZ_Helmet04", "CUP_H_CZ_Helmet09", "CUP_H_CZ_Helmet10"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CZ_vest13"];
_mediumRig = ["CUP_V_CZ_vest07", "CUP_V_CZ_vest03", "CUP_V_CZ_vest11", "CUP_V_CZ_vest05"];
_heavyRig = ["CUP_V_CZ_vest18"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_CZ_Helmet06"];
_pilotRig = ["CUP_V_CZ_vest20"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_CZ_WDL_Kneepads_Gloves"];
_crewHelmet = ["CUP_H_CZ_Helmet05"];
_crewRig = ["CUP_V_CZ_vest19"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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

	//ACR (DS)
	case 18: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "CUP_acc_ANPEQ_15_Flashlight_OD_L";				// Latarka + laser

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";					// Tłumik płomieni

_scope1 = "CUP_optic_CompM2_low_OD";			// Aimpoint
_scope2 = "CUP_optic_PSO_3";							// PSO dla wyborowego
_scope3 = "CUP_optic_Leupold_VX3";				// Celownik snajperski 

_bipod1 = "rhsusf_acc_grip4";				// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [];		//NOC
} 
else {
	_attachments = [];		//DZIEŃ
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
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_Sa58P_des";
_riflemag = "CUP_30Rnd_Sa58_M";
_riflemag_tr = "CUP_30Rnd_Sa58_M_TracerG";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_Sa58V_camo";
_carbinemag = "CUP_30Rnd_Sa58_M";
_carbinemag_tr = "CUP_30Rnd_Sa58_M_TracerG";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_SA61";
_smgmag = "CUP_20Rnd_B_765x17_Ball_M";
_smgmag_tr = "CUP_20Rnd_B_765x17_Ball_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_Sa58RIS2_gl";
_glriflemag = "CUP_30Rnd_Sa58_M";
_glriflemag_tr = "CUP_30Rnd_Sa58_M_TracerG";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Compact";
_pistolmag = "CUP_10Rnd_9x19_Compact";

// Siły specjalne
/*
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

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "CUP_arifle_RPK74";
_ARmag = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";
_ARmag_tr = "CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M";

// Strzelec MMG
_MMG = "CUP_lmg_UK59";
_MMGmag = "CUP_50Rnd_UK59_762x54R_Tracer";
_MMGmag_tr = "CUP_50Rnd_UK59_762x54R_Tracer";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD_des";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_MAAWS";
_MATmag1 = "CUP_MAAWS_HEAT_M";
_MATmag2 = "CUP_MAAWS_HEDP_M";
_MAT_sight = "CUP_optic_MAAWS_Scope";
//_MATsptr = "rhs_mag_smaw_SR";

// Strzelec AA
_SAM = "CUP_launch_9K32Strela";
//_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "CUP_launch_Metis";		
_HATmag1 = "CUP_AT13_M";
_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_AS50";
_SNrifleMag = "CUP_5Rnd_127x99_as50_M";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_coy";					// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_rgr";                  // Plecak dla pilota (radio)

_bagTL = "CUP_B_Kombat_Radio_Olive";		//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";						// Plecak dla medyka (mały)
_bagMm = "B_Kitbag_rgr";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_cbr";        // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_rgr";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_cbr";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_cbr";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_rgr";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_cbr";					// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";	// carries 200, weighs 30
_baglarge =  "B_Carryall_cbr"; 				// carries 320, weighs 40

_bagmediumdiver =  "CUP_B_Kombat_Radio_Olive";	// Plecaki SF

_baguav = "tfw_ilbe_blade_coy";					// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_B_CZ_DST_NoKneepads","CUP_U_B_CZ_DST_TShirt","CUP_U_B_CZ_DST_Kneepads"];
_baseHelmet = ["CUP_H_CZ_Helmet01", "CUP_H_CZ_Helmet02", "CUP_H_CZ_Helmet07", "CUP_H_CZ_Helmet08"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CZ_vest10","CUP_V_CZ_vest14"];
_mediumRig = ["CUP_V_CZ_vest06", "CUP_V_CZ_vest12", "CUP_V_CZ_vest04", "CUP_V_CZ_vest08"];
_heavyRig = ["CUP_V_CZ_vest18"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_rgr"];
_diverHelmet = ["rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_cam","rhsusf_opscore_ut_pelt_nsw","rhsusf_opscore_ut_pelt_nsw_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_B_USMC_PilotOverall"];
_pilotHelmet = ["CUP_H_CZ_Helmet06"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_B_CZ_DST_Kneepads_Gloves"];
_crewHelmet = ["CUP_H_CZ_Helmet05"];
_crewRig = ["CUP_V_CZ_vest19"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

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
	// Dodanie przedmiotów medycznych do każdej jednstki (gracza)	
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