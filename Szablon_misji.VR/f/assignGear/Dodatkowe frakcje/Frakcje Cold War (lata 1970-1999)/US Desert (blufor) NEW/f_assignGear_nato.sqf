// F3 - Folk ARPS Assign Gear Script - NATO - US DESERT
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// Dostępne klasy postaci
// Poniżej wypisane są wszystkie aktualne klasy postaci
//
// Defined loadouts:
//		co			- dowódca kompanii
//		dc 			- dowódca plutonu
//		m 			- medyk
//		ftl			- dowódca drużyny
//		ar 			- strzelec RKM
//		aar			- amunicyjny RKM
//		rat			- strzelec (AT)
//		dm			- strzelec wyborowy - nieużywany
//		mmgg		- strzelec MMG
//		mmgag		- amunicyjny MMG
//		matg		- strzelec MAT
//		matag		- amunicyjny MAT
//		hmgg		- strzelec HMG
//		hmgag		- amunicyjny HMG
//		hatg		- strzelec HAT
//		hatag		- amunicyjny HAT
//		mtrg		- strzelec MTR
//		mtrag		- amunicyjny MTR
//		msamg		- strzelec AA
//		msamag		- amunicyjny AA
//		hsamg		- strzelec HAA - nieużywany
//		hsamag		- amunicyjny HAA - nieużywany
//		sn			- najper -nieuzywany
//		sp			- obserwator - nieużywany
//		vc			- dowódca pojazdu
//		vg			- strzelec w pojeździe
//		vd			- kierowca pojazdu (mechanik)
//		pp			- pilot
//		pcc			- co-pilot (mechanik)
//		pc			- załoga śmigłowców - mało stosowane
//		eng			- mechanik
//		engm		- saper
//		uav			- RTO/FAC
//		divc    	- dowódca sił specjalnych
//		divr    	- strzelec AT sił specjalnych
//		divs    	- saper sił specjalnych
//		divm    	- medyk sił specjalnych
//		r 			- strzelec
//		car			- strzelec (karabin krótki)
//		smg			- strzelec smg
//		ps			- pilot samolotu
//
//		crate_small	- Mała skrzynka z amunicją (dla teamu)
//		crate_med	- średnia skrzynka z amunicją (dla sekcji)
//		crate_large	- Duża skrzynka z amunicją (dla plutonu)
//      crate_smallmedical - Mała skrzynka z medykamentami
//      crate_bigmedical - Duża skrzynka z medykamentami
//
//
// ====================================================================================

// Dodatki do broni używane przez większośc klas

// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";		// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = [_attach3]; 			// Każda jednostka otrzyma ten zestaw dodatków

// [] = brak dodatków
// [_attach1,_scope1,_silencer1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1 i _silencer1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================
// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_m16a4_carryhandle_grip_pmag";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_m4a1_carryhandle_grip";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhsusf_weap_MP7A1_base_f";
_smgmag = "rhsusf_mag_40Rnd_46x30_FMJ";
_smgmag_tr = "rhsusf_mag_40Rnd_46x30_FMJ";

// Siły specjalne
//_diverWepCaS = "rhs_weap_m4a1_blockII_grip2_KAC";
//_diverMagCaS = "30Rnd_556x45_Stanag";
//_diverWepM = "hlc_rifle_samr2";
//_diverMagM = "30Rnd_556x45_Stanag";
//_diverWepR = "rhs_weap_m249_pip_S_vfg";
//_diverMagR = "rhsusf_100Rnd_556x45_soft_pouch";
//_secendWep = "hlc_smg_mp5k";
//_secendMag = "hlc_30Rnd_9x19_SD_MP5";

// Broń z granatnikiem (dla dowódców)
_glrifle = "rhs_weap_m16a4_carryhandle_M203";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Granaty dymne do granatnika
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flary do granatnika
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistolet (dla wszystkich klas)
//_pistol = "";	// _pistol = "CUP_hgun_M9"; - bug nie pozwala na dodnie
//_pistolmag = "";	// _pistolmag = "CUP_15Rnd_9x19_M9";

// Granaty ręczne
_grenade = "HandGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadeblue = "SmokeShellBlue";
_smokegrenadered = "SmokeShellRed";

//Flary ręczne
_flarewhite = "ACE_HandFlare_White";
_flarered = "ACE_HandFlare_Red";
_flareyellow = "ACE_HandFlare_Yellow";
_flaregreen = "ACE_HandFlare_Green";

// Świetliki
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Sprzet medyczny
_personalAidKit = "ACE_personalAidKit";		// Zestaw pierwszej pomocy
_surgicalKit = "ACE_surgicalKit";			// Zestaw do szycia ran
_bandage = "ACE_quikclot";					// Opatrunek "Quik Clot" dla piechoty
_epinephrine = "ACE_epinephrine";			// Epinefryna
_morphine = "ACE_morphine";					// Morfina
_blood = "ACE_bloodIV_500";					// Krew 500 ml
_plasma = "ACE_plasmaIV_500";				// Osocze 500 ml
_saline = "ACE_salineIV_500";				// Sól fizjologiczna 500 ml

_firstaid = "FirstAidKit";
_medkit = "Medikit";

//Przydatne rzeczy
_earplugs = "ACE_EarPlugs";
_IRstrobe = "ACE_IR_Strobe_Item";
_latarka = "ACE_Flashlight_MX991";
_lornetkaAM = "ACE_Vector";
_lornetkaFTL = "Binocular";
_GPS = "ItemGPS";
_Antena_RTO = "tfw_rf3080Item";

// Noktowizja
_nvg = "rhsusf_ANPVS_15";

// Terminal UAV
_uavterminal = "B_UavTerminal";	  // Dla BLUFORU musi być terminal BLUFORU, innej frakcji nie zadziała

// Backpacks
_bagsmall = "B_Parachute";					// Spadochron

_bagFTL = "tf_rt1523g_sage";				// Plecak dla dowódcy (radio)
_bagPP = "tf_rt1523g_sage";             	// Plecak dla pilota (radio)

_bagTL = "B_Kitbag_cbr";					//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_cbr";				// Plecak dla medyka (mały)
_bagMm = "B_TacticalPack_oli";				// Plecak dla medyka (średni)
_bagMb = "B_Kitbag_cbr";               		// Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_cbr";				// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_cbr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_cbr";                 // Plecak dla RKM (duży)

_bagENG = "B_AssaultPack_cbr";				// Plecak dla Mechanika

_bagR = "B_Kitbag_cbr";						// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_cbr";					// Plecak dla MAT

_bagmedium = "B_TacticalPack_oli";			// carries 200, weighs 30
_baglarge =  "B_Carryall_cbr"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_cbr";		// Plecaki SF

_baguav = "tf_rt1523g_sage";					// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";					// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "rhs_weap_m249_pip_L";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Strzelec MMG
_MMG = "rhs_weap_m240B";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
_RATmag = "rhs_m72a7_mag";

// Strzelec MAT
_MAT = "rhs_weap_smaw_green";
_MATmag1 = "rhs_mag_smaw_HEAA";
_MATmag2 = "rhs_mag_smaw_HEDP";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "rhs_weap_fgm148";
_HATmag1 = "rhs_fgm148_magazine_AT";
_HATmag2 = "rhs_fgm148_magazine_AT";

// Snajper
_SNrifle = "srifle_LRR_F";
_SNrifleMag = "7Rnd_408_Mag";

// Mechanicy/saperzy
_ATmine = "ATMine_Range_Mag";
_satchel = "SatchelCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej frupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposarzenia są losowo wybierane z listy
_baseUniform = ["usm_bdu_d"];
_baseHelmet = ["usm_helmet_pasgt_g_d","usm_helmet_pasgt_d"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["usm_vest_pasgtdes_lbe_gr","usm_vest_pasgtdes_lbe_mg","usm_vest_pasgtdes_lbe_rmp","usm_vest_pasgtdes_lbe_rm","usm_vest_pasgtdes_lbv_gr","usm_vest_pasgtdes_lbv_mg","usm_vest_pasgtdes_lbv_rmp","usm_vest_pasgtdes_lbv_rm"];
_mediumRig = ["usm_vest_pasgtdes_lbe_gr","usm_vest_pasgtdes_lbe_mg","usm_vest_pasgtdes_lbe_rmp","usm_vest_pasgtdes_lbe_rm","usm_vest_pasgtdes_lbv_gr","usm_vest_pasgtdes_lbv_mg","usm_vest_pasgtdes_lbv_rmp","usm_vest_pasgtdes_lbv_rm"]; 	// default for all infantry classes
_heavyRig = ["usm_vest_pasgtdes_lbe_gr","usm_vest_pasgtdes_lbe_mg","usm_vest_pasgtdes_lbe_rmp","usm_vest_pasgtdes_lbe_rm","usm_vest_pasgtdes_lbv_gr","usm_vest_pasgtdes_lbv_mg","usm_vest_pasgtdes_lbv_rmp","usm_vest_pasgtdes_lbv_rm"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_FROG01_m81"];
_diverHelmet = ["rhsusf_mich_bare_headset","rhsusf_ach_bare_headset_ess","rhsusf_ach_helmet_M81"];
_diverRig = ["rhsusf_spc_marksman","rhsusf_spc_light"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_TacVest_blk"];
_sfGlasses = [];

// Załoga pojazdu
_crewUniform = ["usm_bdu_odg"];
_crewHelmet = ["usm_helmet_cvc"];
_crewRig = ["usm_vest_pasgtdes"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
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

	// Przedmioty uniwersalne dla klas
	// Dodanie przedmiotów do każdej jednstki (gracza)

	_unit addItem _earplugs;		// Dodaje zatyczki do uszy
	_unit addItem _bandage;	
    _unit addItem _bandage;
	_unit addItem _bandage;
	_unit addItem _bandage;	
	_unit addItem _bandage;
	_unit addItem _bandage;
	_unit addItem _bandage;	
	_unit addItem _bandage;
	_unit addItem _bandage;	
	_unit addItem _bandage;
	_unit addItem _bandage;
	_unit addItem _bandage;			// Dodanie 12 sztuk bandaży
	_unit addItem _morphine;
	_unit addItem _morphine;		// Dodanie 2 sztuk morfiny
	_unit addItem _epinephrine;
	_unit addItem _epinephrine;		// Dodanie 2 sztuk epinefryny
	//_unit addItem _IRstrobe;		// Znacznik IR (doczepiany)
	_unit linkItem "ItemMap";		// Dodanie mapy
	_unit linkItem "ItemCompass";	// Dodanie kompsu
	_unit linkItem "ItemRadio";		// Dodanie radia (nie z taskforce)
	_unit linkItem "tf_microdagr";	// Dodanie zegarka
	//_unit linkItem "ItemGPS"; 	// Dodanie GPS (wyczone)
	_unit addItem _latarka;			// Latarka na mape
	
	
  };


// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = f_param_backpacks;
	_loadout_night_day = f_param_night_day_wyp;
	if (count _this > 1) then {_loadout = _this select 1};
	if (count _this > 1) then {_loadout_night_day = _this select 1};
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

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,3];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _glrifle;					//_COrifle
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaFTL;
		_unit linkItem _GPS;
		["ftl"] call _backpack;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,3];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _glrifle;					//_DCrifle
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaFTL;
		_unit linkItem _GPS;
		["ftl"] call _backpack;
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,3];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit linkItem _GPS;
		["m"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		_unit addmagazines [_glriflemag,3];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _glrifle;					//_FTLrifle
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaFTL;
		_unit linkItem _GPS;
		["g"] call _backpack;
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addmagazines [_ARmag,3];
		_unit addmagazines [_ARmag_tr,1];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _AR;
		_unit addweapon _pistol;
		_attachments = [];
		["ar"] call _backpack;
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_riflemag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		["aar"] call _backpack;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _rifle;
		_unit addweapon _pistol;
		["rat"] call _backpack;
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
	};
	
// LOADOUT: RIFLEMAN
	case "r":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _rifle;
		_unit addweapon _pistol;
		["r"] call _backpack;
	};


// LOADOUT: DESIGNATED MARKSMAN
	case "dm":
	{
		_unit addmagazines [_DMriflemag,7];
		_unit addweapon _DMrifle;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		["dm"] call _backpack;
		_attachments = [_attach2,_scope3];
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		_unit addmagazines [_MMGmag,1];
		_unit addmagazines [_MMGmag_tr,1];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];		
		_unit addweapon _pistol;
		_unit addweapon _MMG;
		_attachments = [_scope2];
		["mmg"] call _backpack;
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _rifle;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;				
		["mmgag"] call _backpack;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		["hmgg"] call _backpack;
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon _lornetkaAM;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		["hmgag"] call _backpack;
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addweapon _MAT;
		_unit addSecondaryWeaponItem "rhs_weap_optic_smaw";
		["matg"] call _backpack;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		_unit addmagazines [_smokegrenade,2];
		["matag"] call _backpack;
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		["hatg"] call _backpack;
		_unit addWeapon _HAT;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		["hatag"] call _backpack;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		_unit addItem "ACE_MapTools";
		_unit addItem "ACE_RangeTable_82mm";
		["mtrg"] call _backpack;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		_unit addWeapon _lornetkaAM;
		_unit addItem "ACE_MapTools";
		_unit addItem "ACE_RangeTable_82mm";
		["mtrag"] call _backpack;
	};

// LOADOUT: MEDIUM SAM GUNNER
	case "msamg":
	{
		
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		["msamg"] call _backpack;
		_unit addweapon _SAM;
		
	};

// LOADOUT: MEDIUM SAM ASSISTANT GUNNER
	case "msamag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,1];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		["msamag"] call _backpack;
	};

// LOADOUT: HEAVY SAM GUNNER
	case "hsamg":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		["hsamg"] call _backpack;
	};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER
	case "hsamag":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon _lornetkaAM;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		["hsamag"] call _backpack;
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_attach1,_scope3];
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_glriflemag,5];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addmagazines [_glmag,3];
		//_unit addmagazines [_glsmokewhite,4];
		_unit addweapon _glrifle;					//_COrifle
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon _lornetkaAM;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit linkItem _GPS;
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_unit addWeapon _lornetkaFTL;
		_attachments = [_scope1];
		["vc"] call _backpack;
	};

// LOADOUT: VEHICLE DRIVER
	case "vd":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_attachments = [_scope1];
		["cc"] call _backpack;
	};

// LOADOUT: VEHICLE GUNNER
	case "vg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_attachments = [_scope1];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_attachments = [_scope1];
		["pp"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW CHIEF
	case "pcc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_attachments = [_scope1];
		["cc"] call _backpack;
	};
	
// LOADOUT: JET PILOTS
	case "ps":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_attachments = [_scope1];
		["ps"] call _backpack;
	};

// LOADOUT: AIR VEHICLE CREW
	case "pc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_attachments = [_scope1];
	};

// LOADOUT: ENGINEER (DEMO)
	case "eng":
{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit linkItem _GPS;
		_unit addItem "ACE_MapTools";
		_unit addItem "ACE_RangeTable_82mm";
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (MINES)
	case "engm":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,1];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_APmine2,2];
		_unit addItem "MineDetector";
		_unit linkItem _GPS;
		_unit addItem "ACE_Clacker"; //zapalnik
		_unit addItem "ACE_DefusalKit"; //zestaw do rozbrajania
		["engm"] call _backpack;
	};

// LOADOUT: FAC RTO
	case "uav":
	{
        _unit addmagazines [_glriflemag,5];
        _unit addmagazines [_glriflemag_tr,4];
        _unit addmagazines [_glmag,7];
        //_unit addmagazines [_glsmokewhite,2];
        _unit addweapon _glrifle;        
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,2];
        _unit addmagazines [_pistolmag,3];
        _unit addweapon _pistol;
		_unit linkItem _GPS; 
        _unit addWeapon "Laserdesignator";
        ["ftl"] call _backpack;
        _unit addMagazines ["Laserbatteries",2];
		(unitBackpack _unit) addItemCargoGlobal [_Antena_RTO, 1];
	};
			
 // LOADOUT: Dowódca sil specjalnych
	case "divc":
	{
		_unit addmagazines [_diverMagCaS,6];
		_unit addweapon _diverWepCaS;
		_unit addmagazines [_secendMag,3];
		_unit addweapon _secendWep;
		_attachments = [_attach1,_scope4,_silencer2];
		_hg_attachments= [_hg_silencer2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_unit addWeapon "Laserdesignator";
		_unit addMagazines ["Laserbatteries",2];
		["divc"] call _backpack;
	};

// LOADOUT: Medyk sil specjalnych
	case "divm":
	{	
		_unit addmagazines [_diverMagM,10];
		_unit addweapon _diverWepM;
		_unit addmagazines [_secendMag,3];
		_unit addweapon _secendWep;
		_attachments = [_attach1,_scope4,_silencer2];
		_hg_attachments= [_hg_silencer2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_unit addWeapon _lornetkaAM;
		["divm"] call _backpack;
	};

// LOADOUT: Saper sil specjalnych
	case "divs":
	{
		_unit addmagazines [_diverMagCaS,8];
		_unit addweapon _diverWepCaS;
		_unit addmagazines [_secendMag,3];
		_unit addweapon _secendWep;
		_attachments = [_attach1,_scope4,_silencer2];
		_hg_attachments= [_hg_silencer2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_mgrenade,3];
		_unit addmagazines [_smokegrenade,2];
		_unit linkItem _GPS;
		_unit addWeapon _lornetkaAM;
		["divs"] call _backpack;
	};
	
// LOADOUT: Strzelec AT sil specjalnych
	case "divr":
	{
		_unit addmagazines [_diverMagR,6];
		_unit addweapon _diverWepR;
		_unit addmagazines [_secendMag,3];
		_unit addweapon _secendWep;
		_attachments = [_attach1,_scope4,_silencer2];
		_hg_attachments= [_hg_silencer2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		_unit addweapon _RAT;
		_unit linkItem _GPS;
		_unit addWeapon _lornetkaAM;
		["divr"] call _backpack;
	};


// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		["car"] call _backpack;
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,1];
		["smg"] call _backpack;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,5];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,6];
		//_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["g"] call _backpack;
	};


//////////////////////////////////////////////////////
//////////////////////////////////////////////////////	
		
	
// CARGO: CAR - Przykład inicjalizacji: ["v_car",this,"blu_f"] call f_fnc_assignGear
	case "v_car":
	{
		["v_car"] call _crate;
	};

// CARGO: TRUCK - Przykład inicjalizacji: ["tr",this,"blu_f"] call f_fnc_assignGear
	case "tr":
	{
		["tr"] call _crate;
	};

// CARGO: IFV - Przykład inicjalizacji: ["ifv",this,"blu_f"] call f_fnc_assignGear
	case "ifv":
	{
		["ifv"] call _crate;
	};
	
// CARGO: LOGISTYKI - Przykład inicjalizacji: ["v_log",this,"blu_f"] call f_fnc_assignGear
	case "v_log":
	{
		["v_log"] call _crate;	
	};

// CRATE: Mała skrzynka, amunicja dla jednego teamu
	case "crate_small":
	{
		["crate_small"] call _crate;
	};

// CRATE: Średnia Skrzynka , Amunicja dla jednej sekcji
	case "crate_med":
	{
		["crate_med"] call _crate;
	};

// CRATE: Duża skrzynka, amunicja dla 1 plutonu
	case "crate_large":
	{
		["crate_large"] call _crate;
	};

// CRATE: Mała skrzynka, zasoby medyczne
	case "crate_smallmedical":
	{
		["crate_smallmedical"] call _crate;
	};

// CRATE: Duża skrzynka, zasoby medyczne
	case "crate_bigmedical":
	{
		["crate_bigmedical"] call _crate;
	};

// CRATE: Skrzynka, zasoby MMG
	case "crate_mmg":
	{
		["crate_mmg"] call _crate;
	};

// CRATE: Skrzynka, zasoby MAT
	case "crate_mat":
	{
		["crate_mat"] call _crate;
	};	

// CRATE: Skrzynka, zasoby SAM
	case "crate_sam":
	{
		["crate_sam"] call _crate;
	};
	
// CRATE: Skrzynka, zasoby HAT
	case "crate_hat":
	{
		["crate_hat"] call _crate;
	};
	
// CRATE: Skrzynka, zasoby Nocne
	case "crate_night_small":
	{
		["crate_night_small"] call _crate;
	};
	
// CRATE: Skrzynka, zasoby Nocne
	case "crate_night_big":
	{
		["crate_night_big"] call _crate;
	};
	
// ====================================================================================

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_nato.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================
// Dodanie nocnego wyposażenia

	_loadout_night_day = f_param_night_day_wyp;
		
	if (_loadout_night_day == 0) then {
	
		if(_typeofUnit != "ps") then {
		
			//_unit linkItem _nvg;			// Dodanie noktowizji
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
		
		if (_typeofUnit == "pp" || _typeofUnit == "pcc" || _typeofUnit == "pc" || _typeofUnit == "divc" || _typeofUnit == "divm" || _typeofUnit == "divs" || _typeofUnit == "divr") then {
		
		_unit linkItem _nvg;			// Dodanie noktowizji
		
		};
	};
	
// ====================================================================================

// If this is an ammobox, check medical component settings and if needed run converter script.

if (!_isMan) then
	{
	// Authentic Gameplay Modification
	if (f_var_medical == 2) exitWith
		{
			[_unit] execVM "f\medical\AGM_converter.sqf";
		};
	};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments
#include "f_assignGear_attachments.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
