// ====================================================================================
// S.D.S Assign Gear Script - [V-1.8 beta | 04.01.2018]
// ====================================================================================

//	SPIS TRESCI
/*

	1. UK ARMY (MTP)
	2. UK DPM (DS)
	3. UK DPM (WD)
	4. US Rangers (MTP)
	5. USMC (WD)
	6. USMC (DS)
	7. US Army Delta (UCP)
	8. US Army CW (WD)
	9. US Army CW (DS)
	10. CDF (WD/mountain)
	11. CDF (DS)
	12. CDF (winter)
	13. IDF
	14. BW (WD)
	15. BW (DS)
	16. ACR (WD)
	17. ACR (DS)
	
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
_lornetkaRTO = "CUP_SOFLAM";
_GPS = "ItemGPS";
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

	//UK ARMY (MTP)
	case 1: 
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "rhsusf_acc_M952V";			// Latarka (boczna szyna) (RHS)

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";		// Tłumik płomieni

_scope1 = "CUP_optic_HoloWdl";			// Eotech (Czarny RHS)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";				// Aimpoint (RHS) (SF)

_bipod1 = "rhsusf_acc_grip4";		// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach1,_scope1];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";	// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_L85A2_G";
_riflemag = "CUP_30Rnd_556x45_Stanag_L85";
_riflemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_L85A2_NG";
_carbinemag = "CUP_30Rnd_556x45_Stanag_L85";
_carbinemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";
_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";
_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_L85A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag_L85";
_glriflemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

_bagFTL = "CUP_B_Predator_Radio_MTP";					// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_khk";                  // Plecak dla pilota (radio)

_bagTL = "CUP_B_Motherlode_Radio_MTP";		//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_khk";						// Plecak dla medyka (mały)
_bagMm = "B_Kitbag_mcamo";		// Plecak dla medyka (średni)
_bagMb = "B_Carryall_khk";        // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_khk";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_mcamo";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_mcamo";                   // Plecak dla RKM (duży)

_bagENG = "B_Carryall_khk";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_khk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_mcamo";					// Plecak dla MAT

_bagmedium = "B_Kitbag_mcamo";	// carries 200, weighs 30
_baglarge =  "B_Carryall_mcamo"; 				// carries 320, weighs 40

_bagmediumdiver =  "rhsusf_assault_eagleaiii_ocp";	// Plecaki SF

_baguav = "CUP_B_Predator_Radio_MTP";					// Plecak RTO

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
_baseUniform = ["CUP_U_B_BAF_MTP_UBACSLONGKNEE","CUP_U_B_BAF_MTP_UBACSROLLED"];
_baseHelmet = ["CUP_H_BAF_MTP_Mk6_EMPTY_PRR", "CUP_H_BAF_MTP_Mk6_GLASS_PRR", "CUP_H_BAF_MTP_Mk6_GOGGLES_PRR","CUP_H_BAF_MTP_Mk6_NETTING_PRR"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_B_BAF_MTP_Osprey_Mk4_Medic"];
_mediumRig = ["CUP_V_B_BAF_MTP_Osprey_Mk4_AutomaticRifleman", "CUP_V_B_BAF_MTP_Osprey_Mk4_Grenadier", "CUP_V_B_BAF_MTP_Osprey_Mk4_Rifleman"];
_heavyRig = ["CUP_V_B_BAF_MTP_Osprey_Mk4_Engineer"];

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
_crewUniform = ["CUP_U_B_BAF_MTP_UBACSTSHIRTKNEE"];
_crewHelmet = ["CUP_H_BAF_MTP_Mk6_CREW_PRR"];
_crewRig = ["CUP_V_B_BAF_MTP_Osprey_Mk4_Crewman"];
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

	//UK DPM (DS)							
	case 2:
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "rhsusf_acc_M952V";			// Latarka (boczna szyna) (RHS)

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";		// Tłumik płomieni

_scope1 = "CUP_optic_HoloWdl";			// Eotech (Czarny RHS)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";				// Aimpoint (RHS) (SF)

_bipod1 = "rhsusf_acc_grip4";		// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach1,_scope1];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";	// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_L85A2_G";
_riflemag = "CUP_30Rnd_556x45_Stanag_L85";
_riflemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_L85A2_NG";
_carbinemag = "CUP_30Rnd_556x45_Stanag_L85";
_carbinemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";
_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";
_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_L85A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag_L85";
_glriflemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

_bagTL = "tfw_ilbe_dd_coy";		//Plecak dowódcy drużyny

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

	//UK DPM (WD)
	case 3:
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "rhsusf_acc_M952V";			// Latarka (boczna szyna) (RHS)

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";		// Tłumik płomieni

_scope1 = "CUP_optic_HoloWdl";			// Eotech (Czarny RHS)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";				// Aimpoint (RHS) (SF)

_bipod1 = "rhsusf_acc_grip4";		// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach1,_scope1];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";	// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [_hg_attach1];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_L85A2_G";
_riflemag = "CUP_30Rnd_556x45_Stanag_L85";
_riflemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_L85A2_NG";
_carbinemag = "CUP_30Rnd_556x45_Stanag_L85";
_carbinemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";
_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";
_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_L85A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag_L85";
_glriflemag_tr = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";

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

	//US Rangers (MTP)
	case 4:
	{
_attach1 = "CUP_acc_ANPEQ_2";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "CUP_acc_Flashlight";				// Latarka (RHS)

_silencer1 = "CUP_muzzle_snds_SCAR_L";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_grey";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "CUP_optic_HoloBlack";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_eotech_552";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";				// Aimpoint RHS (SF)

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "rhsusf_acc_grip1";				// Grippod 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach1,_scope1];		//DZIEŃ 			
};

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "CUP_muzzle_snds_M9";	// 9mm tłumik do Glocka 17
_hg_attah1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [ ];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_Mk16_STD_FG";
_riflemag = "CUP_30Rnd_556x45_Stanag_Mk16";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Mk16_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_Mk16_CQC_FG";
_carbinemag = "CUP_30Rnd_556x45_Stanag_Mk16";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Mk16_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_diverWep = "rhs_weap_m4a1_blockII_KAC_bk";
_diverMag1 = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_diverMag2 = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_sfPistol = "rhsusf_weap_glock17g4";
_sfPistolMag = "rhsusf_mag_17Rnd_9x19_FMJ";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_Mk16_STD_EGLM";
_glriflemag = "CUP_30Rnd_556x45_Stanag_Mk16";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Mk16_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_M9";
_pistolmag = "CUP_15Rnd_9x19_M9";

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
_DMrifle = "rhs_weap_sr25_ec";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

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
_SNrifle = "rhs_weap_m40a5";
_SNrifleMag = "rhsusf_10Rnd_762x51_m118_special_Mag";

// ====================================================================================

// Plecaki
 
_bagsmall = "B_Parachute";                      // Spadochron
 
_bagFTL = "tfw_ilbe_blade_gr";                   // Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_rgr";                  // Plecak dla pilota (radio)
 
_bagTL = "tfw_ilbe_dd_gr";        //Plecak dowódcy druzyny
 
_bagMs = "B_AssaultPack_rgr";                        // Plecak dla medyka (maly)
_bagMm = "CFP_Kitbag_Drab";        // Plecak dla medyka (sredni)
_bagMb = "CFP_Kitbag_Drab";        // Plecak dla medyka (duzy)
 
_bagARs = "CUP_B_USMC_AssaultPack";       // Plecak dla RKM (maly)
_bagARm = "CUP_B_USMC_AssaultPack";                   // Plecak dla RKM (sredni)
_bagARb = "CUP_B_USMC_AssaultPack";                   // Plecak dla RKM (duzy)
 
_bagENG = "B_Kitbag_rgr";       // Plecak dla Mechanika
 
_bagR = "B_TacticalPack_blk";                  // Plecak dla strzelca, strzelca AT
 
_bagMAT = "CFP_Kitbag_Brown";                   // Plecak dla MAT
 
_bagmedium = "rhsusf_assault_eagleaiii_ucp";    // carries 200, weighs 30
_baglarge =  "B_Carryall_mcamo";                // carries 320, weighs 40
 
_bagmediumdiver =  "CUP_B_USMC_AssaultPack";  // Plecaki SF
 
_baguav = "tfw_ilbe_blade_gr";                   // Plecak RTO
 
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
_baseUniform = ["CFP_75th_CRYE_V4b_Full", "CFP_75th_CRYE_V4b_Sleeved"];
_baseHelmet = ["CFP_OpsC_Uncovered", "CFP_OpsC_Covered", "CFP_OpsC_Med", "CFP_OpsC_Uncov_Goggle_Off"];
_baseGlasses = [];
 
// Kamizelki
_lightRig = ["CFP_RAV_operator_OGA_OD"];
_mediumRig = ["CFP_FAPC_Operator_OGA_OD", "CFP_FAPC_Breacher_OGA_OD", "CFP_LBT6094_operator_OGA_OD", "CFP_CarrierRig_Operator_OGA_OD", "CFP_CarrierRig_Breacher_OGA_OD"];
_heavyRig = ["SP_PlateCarrier1_Green", "V_PlateCarrier1_rgr_noflag_F"];
 
// Sily specjalne
_diverUniform =  ["CFP_75th_CRYE_V4b_Full", "CFP_75th_CRYE_V4b_Sleeved"];
_diverHelmet = ["CFP_OpsC_Uncovered", "CFP_OpsC_Covered", "CFP_OpsC_Med", "CFP_OpsC_Uncov_Goggle_Off"];
_diverRig = ["CFP_FAPC_Operator_OGA_OD", "CFP_FAPC_Breacher_OGA_OD", "CFP_LBT6094_operator_OGA_OD", "CFP_CarrierRig_Operator_OGA_OD", "CFP_CarrierRig_Breacher_OGA_OD", "CFP_RAV_operator_OGA_OD"];
_diverGlasses = [];
 
// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_B"];
_pilotRig = ["CUP_V_B_PilotVest"];
_pilotGlasses = [];
 
// Zaloga pojazdu
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
_sfRig = ["CUP_V_CDF_OfficerBelt"];
_sfGlasses = [];
 
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

	//USMC (WD)
	case 5:
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "rhsusf_acc_M952V";			// Latarka (boczna szyna) (RHS)

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";		// Tłumik płomieni

_scope1 = "CUP_optic_CompM2_Black";			// Eotech (Czarny RHS)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";				// Aimpoint (RHS) (SF)

_bipod1 = "rhsusf_acc_grip4";		// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach1,_scope1];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [ ];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A4_Grip";
_riflemag = "CUP_30Rnd_556x45_Emag";
_riflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_M4A1_black";
_carbinemag = "CUP_30Rnd_556x45_Emag";
_carbinemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";
_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";
_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A4_GL";
_glriflemag = "CUP_30Rnd_556x45_Emag";
_glriflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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
_DMrifle = "CUP_srifle_L129A1_HG";
_DMriflemag = "CUP_20Rnd_762x51_L129_M";

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
_SNrifle = "CUP_srifle_AWM_wdl";
_SNrifleMag = "CUP_5Rnd_86x70_L115A1";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_wd";					// Plecak dla dowódcy (radio)
_bagPP = "CFP_AssaultPack_Marpat";                  // Plecak dla pilota (radio)

_bagTL = "tfw_ilbe_dd_wd";		//Plecak dowódcy drużyny

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

_bagmediumdiver =  "rhsusf_assault_eagleaiii_ocp";	// Plecaki SF

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

	//USMC (DS)
	case 6:
	{
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2";		// Laser
_attach2 = "CUP_acc_Flashlight";	// Latarka
_attach3 = "rhsusf_acc_M952V";			// Latarka (boczna szyna) (RHS)

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "CUP_acc_sffh";		// Tłumik płomieni

_scope1 = "CUP_optic_CompM2_Black";			// Eotech (Czarny RHS)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";				// Aimpoint (RHS) (SF)

_bipod1 = "rhsusf_acc_grip4";		// Chwyt przedni RKM (SF)
_bipod2 = "rhsusf_acc_grip3";				// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} 
else {
	_attachments = [_attach1,_scope1];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [ ];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A4_Grip";
_riflemag = "CUP_30Rnd_556x45_Emag";
_riflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_M4A1_black";
_carbinemag = "CUP_30Rnd_556x45_Emag";
_carbinemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";
_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";
_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A4_GL";
_glriflemag = "CUP_30Rnd_556x45_Emag";
_glriflemag_tr = "CUP_30Rnd_556x45_Emag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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
_DMrifle = "CUP_srifle_L129A1_HG";
_DMriflemag = "CUP_20Rnd_762x51_L129_M";

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
_SNrifle = "CUP_srifle_AWM_wdl";
_SNrifleMag = "CUP_5Rnd_86x70_L115A1";

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

_bagmediumdiver =  "rhsusf_assault_eagleaiii_ocp";	// Plecaki SF

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

	//delta 
	case 7:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = []; 			// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "rhsusf_acc_omega9k";	// 9mm tłumik do Glocka 17
_hg_attah1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "gst_m16a2_2";
_riflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_riflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "hlc_rifle_M14";
_carbinemag = "20Rnd_762x51_Mag";
_carbinemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Siły specjalne
//_diverWepCaS = "rhs_weap_m4a1_blockII_grip2_KAC";
//_diverMagCaS = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
//_diverWepM = "hlc_rifle_samr2";
//_diverMagM = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
//_diverWepR = "rhs_weap_m249_pip_S_vfg";
//_diverMagR = "rhsusf_100Rnd_556x45_soft_pouch";
//_secendWep = "hlc_smg_mp5k";
//_secendMag = "hlc_30Rnd_9x19_SD_MP5";

// Broń z granatnikiem (dla dowódców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m1911a1";
_pistolmag = "rhsusf_mag_7x45acp_MHP";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "rhs_weap_m249";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Strzelec MMG
_MMG = "hlc_lmg_m60";
_MMGmag = "hlc_100Rnd_762x51_M_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_M_M60E4";

// Strzelec wyborowy
_DMrifle = "hlc_rifle_M21_Rail";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "rhs_m72a7_mag";

// Strzelec MAT
_MAT = "rhs_weap_maaws";
_MATmag1 = "rhs_mag_maaws_HEAT";
_MATmag2 = "rhs_mag_maaws_HEDP";
_MAT_sight = "rhs_optic_maaws";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
_HAT = "rhs_weap_fgm148";		
_HATmag1 = "rhs_fgm148_magazine_AT";
_HATmag2 = "rhs_fgm148_magazine_AT";
_HAT_Mobile = false;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "rhs_weap_m24sws_blk";
_SNrifleMag = "rhsusf_5Rnd_762x51_m118_special_Mag";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";					// Spadochron

_bagFTL = "usm_pack_st138_prc77";				// Plecak dla dowódcy (radio)
_bagPP = "usm_pack_st138_prc77";             	// Plecak dla pilota (radio)

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

_baguav = "usm_pack_st138_prc77";					// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "rhs_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "rhs_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "rhs_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "rhs_M252_Bipod_Bag";			// used by Mortar assistant gunner

_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["matg","matag","hatg","hatag"];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["usm_bdu_dcu"];
_baseHelmet = ["usm_helmet_pasgt_dcu","usm_helmet_pasgt_g_dcu"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["usm_vest_pasgtdcu_lbv_gr","usm_vest_pasgtdcu_lbv_mg","usm_vest_pasgtdcu_lbv_rmp"];
_mediumRig = ["usm_vest_rba_lbe_gr","usm_vest_rba_lbe_mg","usm_vest_rba_lbe_rmp","usm_vest_rba_lbe_rm","usm_vest_rba_lbv_gr","usm_vest_rba_lbv_mg","usm_vest_rba_lbv_rmp"];
_heavyRig = ["usm_vest_rba_lbe_gr","usm_vest_rba_lbe_mg","usm_vest_rba_lbe_rmp","usm_vest_rba_lbe_rm","usm_vest_rba_lbv_gr","usm_vest_rba_lbv_mg","usm_vest_rba_lbv_rmp"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_FROG01_m81"];
_diverHelmet = ["rhsusf_mich_bare_headset","rhsusf_ach_bare_headset_ess","rhsusf_ach_helmet_M81"];
_diverRig = ["rhsusf_spc_marksman","rhsusf_spc_light"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["U_B_HeliPilotCoveralls"];
_pilotHelmet = ["rhsusf_hgu56p","rhsusf_hgu56p_visor_mask_skull"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_TacVest_blk"];
_sfGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_helmet","rhsusf_cvc_green_alt_helmet"];
_crewRig = ["rhsusf_spc_crewman"];
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
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "CUP_Mxx_camo";				// Camo net

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "muzzle_snds_B";			// Tłumik płomieni

_scope1 = "CUP_optic_HoloWdl";			// Eotech (Czarny RHS)
_scope2 = "rhsusf_acc_compm4";			// Aimpoint (RHS)
_scope3 = "CUP_optic_LeupoldMk4_10x40_LRT_Woodland";			// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";			// Aimpoint (RHS) (SF)

_bipod1 = "CUP_bipod_Harris_1A2_L";		// Dwójnóg
_bipod2 = "rhsusf_acc_grip3";			// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [];		//NOC
} 
else {
	_attachments = [];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";	// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A2";
_riflemag = "CUP_30Rnd_556x45_Stanag";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_M4A1";
_carbinemag = "CUP_30Rnd_556x45_Stanag";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";
_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";
_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "CUP_launch_M72A6_Special";
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
_HAT = "CUP_launch_M47";		
_HATmag1 = "CUP_Dragon_EP1_M";
_HATmag2 = "CUP_Dragon_EP1_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M24_wdl";
_SNrifleMag = "CUP_5Rnd_762x51_M24";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "usm_pack_st138_prc77";				// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_khk";                  	// Plecak dla pilota (radio)

_bagTL = "CUP_B_Motherlode_Radio_MTP";			//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_khk";					// Plecak dla medyka (mały)
_bagMm = "usm_pack_m5_medic";					// Plecak dla medyka (średni)
_bagMb = "usm_pack_alice";        				// Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_khk";					// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";						// Plecak dla RKM (średni)
_bagARb = "usm_pack_alice";                  	// Plecak dla RKM (duży)

_bagENG = "usm_pack_alice";						// Plecak dla Mechanika

_bagR = "B_AssaultPack_khk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "usm_pack_alice";						// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";					// carries 200, weighs 30
_baglarge =  "usm_pack_alice"; 					// carries 320, weighs 40

_bagmediumdiver =  "rhsusf_assault_eagleaiii_ocp";	// Plecaki SF

_baguav = "usm_pack_st138_prc77";				// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";				// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";			// used by GMG assistant gunner

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
_baseUniform = ["usm_bdu_w_m"];
_baseHelmet = ["usm_helmet_pasgt_g_w", "usm_helmet_pasgt_w"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["usm_vest_pasgt_lbe_rm_m"];
_mediumRig = ["usm_vest_pasgt_lbe_gr_m", "usm_vest_pasgt_lbe_mg_m", "usm_vest_pasgt_lbe_rmp_m"];
_heavyRig = ["usm_vest_pasgt_lbe_rm_m"];

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
_attach1 = "CUP_acc_ANPEQ_2_camo";		// Laser
_attach2 = "CUP_acc_Flashlight_wdl";	// Latarka
_attach3 = "CUP_Mxx_camo";				// Camo net

_silencer1 = "CUP_muzzle_snds_L85";		// Tłumik L85
_silencer2 = "muzzle_snds_B";			// Tłumik płomieni

_scope1 = "CUP_optic_HoloWdl";			// Eotech (Czarny RHS)
_scope2 = "rhsusf_acc_compm4";			// Aimpoint (RHS)
_scope3 = "CUP_optic_LeupoldMk4_10x40_LRT_Woodland";			// Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";			// Aimpoint (RHS) (SF)

_bipod1 = "CUP_bipod_Harris_1A2_L";		// Dwójnóg
_bipod2 = "rhsusf_acc_grip3";			// Chwyt przedni

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [];		//NOC
} 
else {
	_attachments = [];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_L";	// 9mm tłumik do Glocka 17
_hg_attach1 = "CUP_acc_Glock17_Flashlight";
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_M16A2";
_riflemag = "CUP_30Rnd_556x45_Stanag";
_riflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_M4A1";
_carbinemag = "CUP_30Rnd_556x45_Stanag";
_carbinemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_MP5A5_flashlight";
_smgmag = "CUP_30Rnd_9x19_MP5";
_smgmag_tr = "CUP_30Rnd_9x19_MP5";

// Siły specjalne
_SFWepTL = "rhs_weap_hk416d10_m320";
_SFMagTL = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_SFWepM = "rhs_weap_m249_pip_S_vfg";
_SFMagM = "rhsusf_100Rnd_556x45_soft_pouch";
_SFWepR = "rhs_weap_M590_5RD";
_SFMagR = "rhsusf_5Rnd_00Buck";
_SFsecendWep = "rhsusf_weap_glock17g4";
_SFsecendMag = "rhsusf_mag_17Rnd_9x19_JHP";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_M16A2_GL";
_glriflemag = "CUP_30Rnd_556x45_Stanag";
_glriflemag_tr = "CUP_30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Colt1911";
_pistolmag = "CUP_7Rnd_45ACP_1911";

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
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "CUP_launch_M72A6_Special";
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
_HAT = "CUP_launch_M47";		
_HATmag1 = "CUP_Dragon_EP1_M";
_HATmag2 = "CUP_Dragon_EP1_M";
_HAT_Mobile = true;			//true - Javelin		false - TOW

// Snajper
_SNrifle = "CUP_srifle_M24_wdl";
_SNrifleMag = "CUP_5Rnd_762x51_M24";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "usm_pack_st138_prc77";				// Plecak dla dowódcy (radio)
_bagPP = "B_AssaultPack_khk";                  	// Plecak dla pilota (radio)

_bagTL = "CUP_B_Motherlode_Radio_MTP";			//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_khk";					// Plecak dla medyka (mały)
_bagMm = "usm_pack_m5_medic";					// Plecak dla medyka (średni)
_bagMb = "usm_pack_alice";        				// Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_khk";					// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";						// Plecak dla RKM (średni)
_bagARb = "usm_pack_alice";                  	// Plecak dla RKM (duży)

_bagENG = "usm_pack_alice";						// Plecak dla Mechanika

_bagR = "B_AssaultPack_khk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "usm_pack_alice";						// Plecak dla MAT

_bagmedium = "B_Kitbag_rgr";					// carries 200, weighs 30
_baglarge =  "usm_pack_alice"; 					// carries 320, weighs 40

_bagmediumdiver =  "rhsusf_assault_eagleaiii_ocp";	// Plecaki SF

_baguav = "usm_pack_st138_prc77";				// Plecak RTO

_baghmgg = "CUP_B_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Tow_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_TOW_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_M252_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_M252_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "CUP_B_Mk19_Gun_Bag";				// used by GMG gunner
_baghsamag = "CUP_B_Mk19_Tripod_Bag";			// used by GMG assistant gunner

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
_baseUniform = ["usm_bdu_dcu_m"];
_baseHelmet = ["usm_helmet_pasgt_g_dcu", "usm_helmet_pasgt_dcu"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["usm_vest_pasgtdcu_lbv_rm_m"];
_mediumRig = ["usm_vest_pasgtdcu_lbv_gr_m", "usm_vest_pasgtdcu_lbv_mg_m", "usm_vest_pasgtdcu_lbv_rmp_m"];
_heavyRig = ["usm_vest_pasgtdcu_lbv_rm_m"];

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
_crewRig = ["usm_vest_pasgtdcu"];			
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
	//Altis Defence Forces [U]
	case 10: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
} else {
	_attachments = [_attach2];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "hlc_rifle_M14";
_riflemag = "20Rnd_762x51_Mag";
_riflemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_savz58v_black";
_carbinemag = "rhs_30Rnd_762x39mm_Savz58";
_carbinemag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
//_HAT = "";
//_HATmag1 = "";
//_HATmag2 = "";
_HAT_Mobile = false; 	//HAT statyczny - SPG-9

// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";						// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_gr";                  		// Plecak dla pilota (radio)

_bagTL = "B_AssaultPack_blk";					//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_blk";					// Plecak dla medyka (mały)
_bagMm = "B_AssaultPack_blk";					// Plecak dla medyka (średni)
_bagMb = "B_AssaultPack_blk";        			// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_blk";					// Plecak dla RKM (mały)
_bagARm = "B_Carryall_oli";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";					// Plecak dla Mechanika

_bagR = "B_AssaultPack_blk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_blk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_blk";			// Plecaki SF

_baguav = "tfw_ilbe_gr";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";				// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_altis_lizard"];
_baseHelmet = ["rhsgref_helmet_pasgt_altis_lizard","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_painted_alt01"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_khk", "V_TacVest_oli"];
_mediumRig = ["V_TacVest_khk", "V_TacVest_oli"];
_heavyRig = ["V_TacVest_khk", "V_TacVest_oli"];

// Siły specjalne
_diverUniform =  ["rhsgref_uniform_altis_lizard"];
_diverHelmet = ["rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess"];
_diverRig = ["V_TacVest_khk"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhsgref_uniform_olive"];
_pilotHelmet = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	//Altis Defence Forces [U]
	case 11: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
} else {
	_attachments = [_attach2];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "hlc_rifle_M14";
_riflemag = "20Rnd_762x51_Mag";
_riflemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_savz58v_black";
_carbinemag = "rhs_30Rnd_762x39mm_Savz58";
_carbinemag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
//_HAT = "";
//_HATmag1 = "";
//_HATmag2 = "";
_HAT_Mobile = false; 	//HAT statyczny - SPG-9

// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";						// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_gr";                  		// Plecak dla pilota (radio)

_bagTL = "B_AssaultPack_blk";					//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_blk";					// Plecak dla medyka (mały)
_bagMm = "B_AssaultPack_blk";					// Plecak dla medyka (średni)
_bagMb = "B_AssaultPack_blk";        			// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_blk";					// Plecak dla RKM (mały)
_bagARm = "B_Carryall_oli";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";					// Plecak dla Mechanika

_bagR = "B_AssaultPack_blk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_blk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_blk";			// Plecaki SF

_baguav = "tfw_ilbe_gr";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";				// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_altis_lizard"];
_baseHelmet = ["rhsgref_helmet_pasgt_altis_lizard","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_painted_alt01"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_khk", "V_TacVest_oli"];
_mediumRig = ["V_TacVest_khk", "V_TacVest_oli"];
_heavyRig = ["V_TacVest_khk", "V_TacVest_oli"];

// Siły specjalne
_diverUniform =  ["rhsgref_uniform_altis_lizard"];
_diverHelmet = ["rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess"];
_diverRig = ["V_TacVest_khk"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhsgref_uniform_olive"];
_pilotHelmet = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	//Altis Defence Forces [U]
	case 12: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
} else {
	_attachments = [_attach2];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "hlc_rifle_M14";
_riflemag = "20Rnd_762x51_Mag";
_riflemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_savz58v_black";
_carbinemag = "rhs_30Rnd_762x39mm_Savz58";
_carbinemag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
//_HAT = "";
//_HATmag1 = "";
//_HATmag2 = "";
_HAT_Mobile = false; 	//HAT statyczny - SPG-9

// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";						// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_gr";                  		// Plecak dla pilota (radio)

_bagTL = "B_AssaultPack_blk";					//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_blk";					// Plecak dla medyka (mały)
_bagMm = "B_AssaultPack_blk";					// Plecak dla medyka (średni)
_bagMb = "B_AssaultPack_blk";        			// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_blk";					// Plecak dla RKM (mały)
_bagARm = "B_Carryall_oli";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";					// Plecak dla Mechanika

_bagR = "B_AssaultPack_blk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_blk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_blk";			// Plecaki SF

_baguav = "tfw_ilbe_gr";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";				// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_altis_lizard"];
_baseHelmet = ["rhsgref_helmet_pasgt_altis_lizard","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_painted_alt01"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_khk", "V_TacVest_oli"];
_mediumRig = ["V_TacVest_khk", "V_TacVest_oli"];
_heavyRig = ["V_TacVest_khk", "V_TacVest_oli"];

// Siły specjalne
_diverUniform =  ["rhsgref_uniform_altis_lizard"];
_diverHelmet = ["rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess"];
_diverRig = ["V_TacVest_khk"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhsgref_uniform_olive"];
_pilotHelmet = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	//IDF [MD]
	case 13: 
	{
// Dodatki broń główna
_attach1 = "CFP_acc_ANPEQ15_Black";     // Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";   // Laser i latarka (można przełączyć) (RHS)
_attach3 = "CUP_acc_Flashlight";              // Latarka (RHS)
 
_silencer1 = "rhsusf_acc_nt4_black";        // Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_grey";      // Tłumik 5.56 (krótki) (RHS)
 
_scope1 = "CUP_optic_HoloBlack";          // Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";              // Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";       // Celownik snajperski 6.5-20x
_scope4 = "rhsusf_acc_T1_high";             // Aimpoint RHS (SF)
 
_bipod1 = "rhsusf_acc_harris_bipod";        //
_bipod2 = "rhsusf_acc_grip1";               // Grippod
 
// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {                 // Każda jednostka otrzyma ten zestaw dodatków
    _attachments = [_attach1,_scope1];      //NOC
} else {
    _attachments = [_scope1];      //DZIEŃ           
};
 
// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
 
// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "rhsusf_acc_omega9k";   // 9mm tłumik do Glocka 17
_hg_attah1 = "acc_flashlight_pistol";
_hg_scope1 = "optic_MRD";           // MRD
_hg_attachments= [_hg_attah1];
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
 
// Siły specjalne
_diverWep = "rhs_weap_m4a1_blockII_KAC_bk";
_diverMag1 = "CUP_30Rnd_545x39_AK_M";
_diverMag2 = "CUP_30Rnd_545x39_AK_M";
_sfPistol = "rhsusf_weap_glock17g4";
_sfPistolMag = "rhsusf_mag_17Rnd_9x19_FMJ";
 
// Broń z granatnikiem (dla dowóców)
_glrifle = "CFP_Tavor_Black_GL";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";
_glmag = "1Rnd_HE_Grenade_shell";
 
// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";
 
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
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";
 
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
_HAT_Mobile = true;         //true - Javelin        false - TOW
 
// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";
 
// ====================================================================================
 
// Plecaki
 
_bagsmall = "B_Parachute";                      // Spadochron
 
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
 
_baghsamg = "B_AA_01_weapon_F";                 // used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";              // used by Heavy SAM assistant gunner
 
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
_baseHelmet = ["CFP_IDF_M76", "CFP_IDF_M76_GG", "CFP_IDF_M76_CB_GG", "CFP_IDF_M76_BD_GG"];
_baseGlasses = [];
 
// Kamizelki
_lightRig = ["CFP_Modular1_IDF"];
_mediumRig = ["CFP_RAV_IDF"];
_heavyRig = ["CFP_RAV_IDF"];
 
// Siły specjalne
_diverUniform =  ["CFP_Modular1_IDF"];
_diverHelmet = ["CFP_Modular1_IDF"];
_diverRig = ["CFP_Modular1_IDF"];
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
_sfuniform = ["U_I_pilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_I"];
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
	//Altis Defence Forces [U]
	case 14: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
} else {
	_attachments = [_attach2];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "hlc_rifle_M14";
_riflemag = "20Rnd_762x51_Mag";
_riflemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_savz58v_black";
_carbinemag = "rhs_30Rnd_762x39mm_Savz58";
_carbinemag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
//_HAT = "";
//_HATmag1 = "";
//_HATmag2 = "";
_HAT_Mobile = false; 	//HAT statyczny - SPG-9

// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";						// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_gr";                  		// Plecak dla pilota (radio)

_bagTL = "B_AssaultPack_blk";					//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_blk";					// Plecak dla medyka (mały)
_bagMm = "B_AssaultPack_blk";					// Plecak dla medyka (średni)
_bagMb = "B_AssaultPack_blk";        			// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_blk";					// Plecak dla RKM (mały)
_bagARm = "B_Carryall_oli";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";					// Plecak dla Mechanika

_bagR = "B_AssaultPack_blk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_blk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_blk";			// Plecaki SF

_baguav = "tfw_ilbe_gr";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";				// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_altis_lizard"];
_baseHelmet = ["rhsgref_helmet_pasgt_altis_lizard","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_painted_alt01"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_khk", "V_TacVest_oli"];
_mediumRig = ["V_TacVest_khk", "V_TacVest_oli"];
_heavyRig = ["V_TacVest_khk", "V_TacVest_oli"];

// Siły specjalne
_diverUniform =  ["rhsgref_uniform_altis_lizard"];
_diverHelmet = ["rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess"];
_diverRig = ["V_TacVest_khk"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhsgref_uniform_olive"];
_pilotHelmet = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	//Bundeswehr [U]
	case 15: 
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
 
// Podstawowa bron (dla przykladowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_G36A_camo";
_riflemag = "CUP_30Rnd_556x45_G36_camo";
_riflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";
 
// Bron wersja "krótka" (dla przykladowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_G36K_camo";
_carbinemag = "CUP_30Rnd_556x45_G36_camo";
_carbinemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";
 
// Bron PDW (dla przykladowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_G36C_camo";
_smgmag = "CUP_30Rnd_556x45_G36_camo";
_smgmag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";
 
// Sily specjalne
_diverWep = "CUP_arifle_HK416_Black";
_diverMag1 = "CUP_30Rnd_556x45_PMAG_QP";
_diverMag2 = "CUP_30Rnd_556x45_PMAG_QP_Tracer_Red";
_sfPistol = "CUP_hgun_Glock17";
_sfPistolMag = "CUP_17Rnd_9x19_glock17";
 
// Bron z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AG36_camo";
_glriflemag = "CUP_30Rnd_556x45_G36_camo";
_glriflemag_tr = "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo";
_glmag = "CUP_1Rnd_HE_M203";
 
// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Glock17";
_pistolmag = "CUP_17Rnd_9x19_glock17";
 
// ====================================================================================
 
// Sprzet dla klas funkcyjnych
 
// Strzelec RKM
_AR = "CUP_arifle_MG36_camo";
_ARmag = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";
_ARmag_tr = "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag";
 
// Strzelec MMG
_MMG = "CUP_lmg_MG3";
_MMGmag = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
_MMGmag_tr = "CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";
 
// Strzelec wyborowy
_DMrifle = "CUP_arifle_HK417_20";
_DMriflemag = "CUP_20Rnd_762x51_HK417";
 
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
_SAMmag = "";
 
// Strzelec HAT
_HAT = "CUP_launch_Javelin";                        
_HATmag1 = "CUP_Javelin_M";
_HATmag2 = "CUP_Javelin_M";
_HAT_Mobile = true;         //true - Javelin        false - TOW
 
// Snajper
_SNrifle = "CUP_srifle_G22_des";
_SNrifleMag = "CUP_5Rnd_762x67_G22";
 
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
	//Altis Defence Forces [U]
	case 16: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
} else {
	_attachments = [_attach2];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "hlc_rifle_M14";
_riflemag = "20Rnd_762x51_Mag";
_riflemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_savz58v_black";
_carbinemag = "rhs_30Rnd_762x39mm_Savz58";
_carbinemag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
//_HAT = "";
//_HATmag1 = "";
//_HATmag2 = "";
_HAT_Mobile = false; 	//HAT statyczny - SPG-9

// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";						// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_gr";                  		// Plecak dla pilota (radio)

_bagTL = "B_AssaultPack_blk";					//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_blk";					// Plecak dla medyka (mały)
_bagMm = "B_AssaultPack_blk";					// Plecak dla medyka (średni)
_bagMb = "B_AssaultPack_blk";        			// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_blk";					// Plecak dla RKM (mały)
_bagARm = "B_Carryall_oli";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";					// Plecak dla Mechanika

_bagR = "B_AssaultPack_blk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_blk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_blk";			// Plecaki SF

_baguav = "tfw_ilbe_gr";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";				// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_altis_lizard"];
_baseHelmet = ["rhsgref_helmet_pasgt_altis_lizard","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_painted_alt01"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_khk", "V_TacVest_oli"];
_mediumRig = ["V_TacVest_khk", "V_TacVest_oli"];
_heavyRig = ["V_TacVest_khk", "V_TacVest_oli"];

// Siły specjalne
_diverUniform =  ["rhsgref_uniform_altis_lizard"];
_diverHelmet = ["rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess"];
_diverRig = ["V_TacVest_khk"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhsgref_uniform_olive"];
_pilotHelmet = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	//Altis Defence Forces [U]
	case 17: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
} else {
	_attachments = [_attach2];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "hlc_rifle_M14";
_riflemag = "20Rnd_762x51_Mag";
_riflemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_savz58v_black";
_carbinemag = "rhs_30Rnd_762x39mm_Savz58";
_carbinemag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
//_HAT = "";
//_HATmag1 = "";
//_HATmag2 = "";
_HAT_Mobile = false; 	//HAT statyczny - SPG-9

// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";						// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_gr";                  		// Plecak dla pilota (radio)

_bagTL = "B_AssaultPack_blk";					//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_blk";					// Plecak dla medyka (mały)
_bagMm = "B_AssaultPack_blk";					// Plecak dla medyka (średni)
_bagMb = "B_AssaultPack_blk";        			// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_blk";					// Plecak dla RKM (mały)
_bagARm = "B_Carryall_oli";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";					// Plecak dla Mechanika

_bagR = "B_AssaultPack_blk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_blk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_blk";			// Plecaki SF

_baguav = "tfw_ilbe_gr";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";				// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_altis_lizard"];
_baseHelmet = ["rhsgref_helmet_pasgt_altis_lizard","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_painted_alt01"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_khk", "V_TacVest_oli"];
_mediumRig = ["V_TacVest_khk", "V_TacVest_oli"];
_heavyRig = ["V_TacVest_khk", "V_TacVest_oli"];

// Siły specjalne
_diverUniform =  ["rhsgref_uniform_altis_lizard"];
_diverHelmet = ["rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess"];
_diverRig = ["V_TacVest_khk"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhsgref_uniform_olive"];
_pilotHelmet = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	//Altis Defence Forces [U]
	case 18: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "rhsusf_acc_eotech_552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_M8541";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
} else {
	_attachments = [_attach2];		//DZIEŃ 			
};

// [] = brak dodatków
// [_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
// [_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
// false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni

// ====================================================================================
// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];
// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "hlc_rifle_M14";
_riflemag = "20Rnd_762x51_Mag";
_riflemag_tr = "rhsusf_20Rnd_762x51_m62_Mag";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_savz58v_black";
_carbinemag = "rhs_30Rnd_762x39mm_Savz58";
_carbinemag_tr = "rhs_30Rnd_762x39mm_Savz58_tracer";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "hlc_smg_mp5a2";
_smgmag = "hlc_30Rnd_9x19_B_MP5";
_smgmag_tr = "hlc_30Rnd_9x19_B_MP5";

// Broń z granatnikiem (dla dowóców)
_glrifle = "gst_m16a2_gl";
_glriflemag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_glriflemag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_m240G";
_MMGmag = "rhsusf_100Rnd_762x51";
_MMGmag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_fim92";
_SAMmag = "rhs_fim92_mag";

// Strzelec HAT
//_HAT = "";
//_HATmag1 = "";
//_HATmag2 = "";
_HAT_Mobile = false; 	//HAT statyczny - SPG-9

// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_gr";						// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_gr";                  		// Plecak dla pilota (radio)

_bagTL = "B_AssaultPack_blk";					//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_blk";					// Plecak dla medyka (mały)
_bagMm = "B_AssaultPack_blk";					// Plecak dla medyka (średni)
_bagMb = "B_AssaultPack_blk";        			// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_blk";					// Plecak dla RKM (mały)
_bagARm = "B_Carryall_oli";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                   	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";					// Plecak dla Mechanika

_bagR = "B_AssaultPack_blk";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_oli";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_blk";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_blk";			// Plecaki SF

_baguav = "tfw_ilbe_gr";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";				// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";			// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "RHS_Mk19_Gun_Bag";					// used by Heavy SAM gunner
_baghsamag = "RHS_Mk19_Tripod_Bag";				// used by Heavy SAM assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = [];
_heavy =  ["eng","engm"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhsgref_uniform_altis_lizard"];
_baseHelmet = ["rhsgref_helmet_pasgt_altis_lizard","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_painted_alt01"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_khk", "V_TacVest_oli"];
_mediumRig = ["V_TacVest_khk", "V_TacVest_oli"];
_heavyRig = ["V_TacVest_khk", "V_TacVest_oli"];

// Siły specjalne
_diverUniform =  ["rhsgref_uniform_altis_lizard"];
_diverHelmet = ["rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess"];
_diverRig = ["V_TacVest_khk"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhsgref_uniform_olive"];
_pilotHelmet = ["rhs_zsh7a_mike_alt", "rhs_zsh7a_mike"];
_pilotRig = ["V_BandollierB_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhsgref_uniform_olive"];
_crewHelmet = ["rhsusf_cvc_green_alt_helmet"];
_crewRig = ["V_TacVest_blk"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
_ghillieGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["rhs_zsh7a_alt"];
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