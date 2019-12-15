// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

1. [X] CHdKZ
2. [X] KPA
3. [X] VDV MD (WD)
4. [X] VDV CW (WD)
5. [X] VDV CW (DS)
6. [ ] SLA (DS)
7. [ ] SLA (WD)
8. [ ] SLA (WT)
9. [ ] Takistan Army
10. [ ] Takistan Rebels
	
*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Opfor;
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

//Konstruktor BUILDERA
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

	//CHdKZ
	case 1: 
	{
_attach1 = "CUP_acc_Flashlight";		// Latarka 
_attach2 = "CUP_acc_ANPEQ_2";			// Laser 
_attach3 = "rhs_acc_perst3_2dp_h";		// Latarka+Laser 

_silencer1 = "CUP_muzzle_TGPA";			// Tłumik płomieni (domyslny do wszytskich AK) 
_silencer2 = "rhs_acc_dtk4short";		// Tłumik 

_scope1 = "CUP_optic_Kobra";			// Celownik holo 
_scope2 = "CUP_optic_PSO_3";			// Celownik holo (buguje RKM) 
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny 

_bipod1 = "rhs_acc_grip_ffg2";			// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

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
_rifle = "CUP_arifle_AK47_Early";
_riflemag = "CUP_30Rnd_762x39_AK47_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS";
_carbinemag = "CUP_30Rnd_762x39_AK47_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK74M_M";
_smgmag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK47_GL_Early";
_glriflemag = "CUP_30Rnd_762x39_AK47_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M";
_glmag = "CUP_1Rnd_HE_GP25_M";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";

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
_AR = "CUP_arifle_RPK74";
_ARmag = "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M";
_ARmag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_762x39_AK47_M";

// Strzelec MMG
_MMG = "CUP_lmg_PKM";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VL_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";

// Strzelec AA
_SAM = "CUP_launch_Igla";
//_SAMmag = "";

// Strzelec HAT
_HAT = "CUP_launch_Metis";
_HATmag1 = "CUP_AT13_M";
_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// Snajper
_SNrifle = "CUP_srifle_ksvk";
_SNrifleMag = "CUP_5Rnd_127x108_KSVK_M";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";		         		// Parachute

_bagFTL = "CUP_B_Kombat_Radio_Olive";                  	// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_oli";                  		// Plecak dla pilota (radio)

_bagTL = "B_FieldPack_oli";						//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_oli";					// Plecak dla medyka (mały)
_bagMm = "CUP_B_Kombat_Olive";						// Plecak dla medyka (średni)
_bagMb = "CUP_B_AlicePack_Khaki";               	// Plecak dla medyka (duży)

_bagARs = "B_FieldPack_oli";					// Plecak dla RKM (mały)
_bagARm = "CUP_B_Kombat_Olive";						// Plecak dla RKM (średni)
_bagARb = "CUP_B_AlicePack_Khaki";                     // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";	// Plecak dla Mechanika

_bagR = "CUP_B_AlicePack_Khaki";						// Plecak dla strzelca, strzelca AT

_bagMAT = "CUP_B_AlicePack_Khaki";						// Plecak dla MAT

_bagmedium = "CUP_B_Kombat_Olive";					// carries 200, weighs 30
_baglarge =  "CUP_B_AlicePack_Khaki"; 					// carries 320, weighs 40

_bagmediumdiver =  "CUP_B_Kombat_Olive";			// Plecaki SF

_baguav = "CUP_B_Kombat_Radio_Olive";						// Plecak RTO

_baghmgg = "CUP_B_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_Kord_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_Podnos_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_Podnos_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by Heavy GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by Heavy GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm" ,"aar" , "ar"];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = ["ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_O_CHDKZ_Kam_03","CUP_U_O_CHDKZ_Kam_01","CUP_U_O_CHDKZ_Kam_04","CUP_U_O_CHDKZ_Kam_08","CUP_U_O_CHDKZ_Kam_07"];
_baseHelmet = ["CUP_H_FR_BandanaWdl","CUP_H_PMC_Beanie_Black","CUP_H_ChDKZ_Beret","SP_SSh68CoverHelmet_Green1","H_Booniehat_oli","H_Shemag_olive","H_ShemagOpen_tan"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["V_TacVest_camo"];
_mediumRig = ["CUP_V_O_Ins_Carrier_Rig","V_BandollierB_rgr","V_Chestrig_oli"];
_heavyRig = ["V_TacVest_camo"];

// Siły specjalne
_diverUniform =  ["CUP_U_O_RUS_Gorka_Partizan"];
_diverHelmet = ["CUP_H_RUS_ZSH_1_Goggles"];
_diverRig = ["CUP_V_O_Ins_Carrier_Rig_Com","CUP_V_O_Ins_Carrier_Rig_MG","CUP_V_RUS_Smersh_2","CUP_V_O_Ins_Carrier_Rig_Light"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["CUP_U_O_CHDKZ_Bardak"];
_pilotHelmet = ["H_Cap_headphones"];
_pilotRig = ["CUP_V_O_TK_OfficerBelt2"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_O_CHDKZ_Lopotev","CUP_U_O_CHDKZ_Kam_06","CUP_U_O_CHDKZ_Kam_02"];
_crewHelmet = ["CUP_H_SLA_TankerHelmet"];
_crewRig = ["CUP_V_O_TK_OfficerBelt2"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Jet pilot
_sfuniform = ["rhs_uniform_df15_tan"];
_sfhelmet = ["rhs_zsh7a_alt"];
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

	//KPA (korea)
	case 2:
	{
_attach1 = "CUP_acc_Flashlight";		// Latarka 
_attach2 = "rhs_acc_perst3";			// Laser 
_attach3 = "rhs_acc_perst3_2dp_h";		// Latarka+Laser 

_silencer1 = "rhs_acc_dtk";				// Tłumik płomieni (domyslny do wszytskich AK) 
_silencer2 = "rhs_acc_dtk4short";		// Tłumik 

_scope1 = "rhs_acc_ekp8_18";				// Celownik holo 
_scope2 = "rhs_acc_pkas";				// Celownik holo (buguje RKM) 
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny 

_bipod1 = "rhs_acc_grip_ffg2";			// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1]; 		//NOC
} 
else {
	_attachments = []; 		//DZIEŃ 			
};

/*
[] = brak dodatków
[_attach1,_scope1] = usuwa dodatki a na ich miejsce dodaje _attach1, _scope1
[_scope2] = dodaje tylko _scope2, reszta zostaje usunięta
false = nie zmieniaj dodatków, zostaw tak jak domyślnie arma respi na broni
*/

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK74";
_riflemag = "CUP_30Rnd_545x39_AK_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS74";
_carbinemag = "CUP_30Rnd_545x39_AK_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK_M";
_smgmag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK74_GL";
_glriflemag = "CUP_30Rnd_545x39_AK_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";
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
_AR = "CUP_arifle_RPK74_45";
_ARmag = "CUP_60Rnd_545x39_AK74M_M";
_ARmag_tr = "CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Strzelec MMG
_MMG = "CUP_lmg_PKM";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VL_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";

// Strzelec AA
_SAM = "CUP_launch_Igla";
//_SAMmag = "rhs_mag_9k38_rocket";

// Strzelec HAT
_HAT = "CUP_launch_Metis";
_HATmag1 = "CUP_AT13_M";
_HATmag2 = "CUP_AT13_M";
_HAT_Mobile = false;

// Snajper
_SNrifle = "CUP_srifle_ksvk";
_SNrifleMag = "CUP_5Rnd_127x108_KSVK_M";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";		         		// Parachute

_bagFTL = "B_Kitbag_rgr";                  	// Plecak dla dowódcy (radio)
_bagPP = "B_FieldPack_khk";                  		// Plecak dla pilota (radio)

_bagTL = "B_Kitbag_rgr";					//Plecak dowódcy drużyny

_bagMs = "B_FieldPack_khk";					// Plecak dla medyka (mały)
_bagMm = "B_TacticalPack_rgr";						// Plecak dla medyka (średni)
_bagMb = "B_Carryall_khk";               	// Plecak dla medyka (duży)

_bagARs = "B_FieldPack_khk";					// Plecak dla RKM (mały)
_bagARm = "B_TacticalPack_rgr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_khk";                     // Plecak dla RKM (duży)

_bagENG = "B_Carryall_khk";	// Plecak dla Mechanika

_bagR = "B_TacticalPack_rgr";						// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_khk";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_rgr";				// carries 200, weighs 30
_baglarge =  "B_Carryall_khk"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_Kitbag_rgr";			// Plecaki SF

_baguav = "B_Kitbag_rgr";						// Plecak RTO

_baghmgg = "CUP_B_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_Kord_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_Podnos_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_Podnos_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by Heavy GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by Heavy GMG assistant gunner


// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm" ,"aar" , "ar" ];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [ "ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CFP_U_WorkUniform_DRK"];
_baseHelmet = ["SP_SSh68CoverHelmet_DRK"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CFP_Field_Satchel"];
_mediumRig = ["CFP_Field_Satchel"];
_heavyRig = ["CFP_Field_Satchel"];

// Siły specjalne
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["SP_0000_Standard_FieldUniform_Black"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CFP_U_WorkUniform_DRK2"];
_crewHelmet = ["CUP_H_RUS_TSH_4_Brown"];
_crewRig = ["CFP_Field_Satchel"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Opa
_sfuniform = ["rhs_uniform_df15"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	
	//Dpdanie nocnego wyposażenia
	call Night_Eq_No_NVG;
		
};	
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//VDV (WD)
	case 3:
	{
_attach1 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";			// Latarka + Laser 
_attach2 = "CUP_acc_ANPEQ_15_Black";			// Laser 

_silencer1 = "CUP_muzzle_TGPA";				// Tłumik płomieni (domyslny do wszytskich AK) 
_silencer2 = "CUP_muzzle_mfsup_Flashhider_545x39_Black";		// Tłumik 

_scope1 = "optic_ACO_grn";				// Celownik holo 
_scope2 = "CUP_optic_Kobra";				// Celownik holo (buguje RKM) 
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny 

_bipod1 = "bipod_02_F_hex";				// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
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
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK74M_railed";
_riflemag = "CUP_30Rnd_545x39_AK74M_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS74U_railed";
_carbinemag = "CUP_30Rnd_545x39_AK74M_M";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_green";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_bizon";
_smgmag = "CUP_64Rnd_9x19_Bizon_M";
_smgmag_tr = "CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK74M_GL_railed";
_glriflemag = "CUP_30Rnd_545x39_AK74M_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
_glmag = "CUP_1Rnd_HE_GP25_M";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";

// Siły specjalne
//_diverWepCaS = "arifle_min_rf_ak12_camo_grip";
//_diverMagCaS = "30Rnd_min_rf_545x39_mag";
//_diverWepR = "arifle_min_rf_ak12_camo_grip";
//_diverMagR = "30Rnd_min_rf_545x39_mag";
//_diverWepM = "arifle_min_rf_ak12_camo";
//_diverMagM = "30Rnd_min_rf_545x39_mag";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

/// Strzelec RKM
_AR = "CUP_arifle_RPK74M_railed";
_ARmag = "CUP_60Rnd_545x39_AK74M_M";
_ARmag_tr = "CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Strzelec MMG
_MMG = "CUP_lmg_Pecheneg";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD_wdl";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VL_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";

// Strzelec AA
_SAM = "CUP_launch_Igla";
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

_bagsmall = "B_Parachute";		         		// Parachute

_bagFTL = "CUP_B_Kombat_Radio_Olive";                  	// Plecak dla dowódcy (radio)
_bagPP = "CUP_B_Kombat_Olive";                  		// Plecak dla pilota (radio)

_bagTL = "CUP_B_Kombat_Olive";						//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_rgr";					// Plecak dla medyka (mały)
_bagMm = "B_Kitbag_sgg";						// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";               	// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_rgr";					// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_sgg";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                     // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";	// Plecak dla Mechanika

_bagR = "B_TacticalPack_rgr";						// Plecak dla strzelca, strzelca AT

_bagMAT = "CUP_B_RPGPack_Khaki";						// Plecak dla MAT

_bagmedium = "B_Kitbag_sgg";					// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_Kitbag_sgg";			// Plecaki SF

_baguav = "CUP_B_Kombat_Radio_Olive";						// Plecak RTO

_baghmgg = "CUP_B_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_Kord_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_Podnos_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_Podnos_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by Heavy GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by Heavy GMG assistant gunner

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
_specOp = [ "ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_O_RUS_EMR_1_VDV", "CUP_U_O_RUS_EMR_2_VDV"];
_baseHelmet = ["CUP_H_RUS_6B46","CUP_H_RUS_6B47","CUP_H_RUS_6B47_SF"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_RUS_6B45_3"];
_mediumRig = ["CUP_V_RUS_6B45_2","CUP_V_RUS_6B45_1"];
_heavyRig =  ["CUP_V_RUS_6B45_2","CUP_V_RUS_6B45_1"];

// Siły specjalne
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["CUP_U_O_RUS_VSR98_worn_VDV"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up","CUP_H_RUS_ZSH_Shield_Down"];
_pilotRig = ["V_Rangemaster_belt"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_O_RUS_VSR98_worn_VDV_rolled_up"];
_crewHelmet = ["CUP_H_SLA_TankerHelmet"];
_crewRig = ["V_BandollierB_oli"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Opa
_sfuniform = ["rhs_uniform_df15"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	
	//Dpdanie nocnego wyposażenia
	call Night_Eq_NVG;
		
};	
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//RU VDV CW (WD)
    case 4:
    {
_attach1 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";			// Latarka + Laser 
_attach2 = "CUP_acc_Flashlight";			// Laser 

_silencer1 = "CUP_muzzle_TGPA";				// Tłumik płomieni (domyslny do wszytskich AK) 
_silencer2 = "CUP_muzzle_mfsup_Flashhider_545x39_Black";		// Tłumik 

_scope1 = "optic_ACO_grn";				// Celownik holo 
_scope2 = "CUP_optic_Kobra";				// Celownik holo (buguje RKM) 
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny 

_bipod1 = "bipod_02_F_hex";				// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
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
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK74_Early";
_riflemag = "CUP_30Rnd_545x39_AK_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS74U";
_carbinemag = "CUP_30Rnd_545x39_AK_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_bizon";
_smgmag = "CUP_64Rnd_9x19_Bizon_M";
_smgmag_tr = "CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK74_GL_Early";
_glriflemag = "CUP_30Rnd_545x39_AK_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";
_glmag = "CUP_1Rnd_HE_GP25_M";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";

// Siły specjalne
//_diverWepCaS = "arifle_min_rf_ak12_camo_grip";
//_diverMagCaS = "30Rnd_min_rf_545x39_mag";
//_diverWepR = "arifle_min_rf_ak12_camo_grip";
//_diverMagR = "30Rnd_min_rf_545x39_mag";
//_diverWepM = "arifle_min_rf_ak12_camo";
//_diverMagM = "30Rnd_min_rf_545x39_mag";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

/// Strzelec RKM
_AR = "CUP_arifle_RPK74_45";
_ARmag = "CUP_60Rnd_545x39_AK74M_M";
_ARmag_tr = "CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Strzelec MMG
_MMG = "CUP_lmg_PKM";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VL_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";

// Strzelec AA
_SAM = "CUP_launch_Igla";
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

_bagsmall = "B_Parachute";		         		// Parachute

_bagFTL = "CUP_B_Kombat_Radio_Olive";                  	// Plecak dla dowódcy (radio)
_bagPP = "CUP_B_Kombat_Olive";                  		// Plecak dla pilota (radio)

_bagTL = "CUP_B_Kombat_Olive";						//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_oli";					// Plecak dla medyka (mały)
_bagMm = "B_FieldPack_khk";						// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";               	// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_oli";					// Plecak dla RKM (mały)
_bagARm = "B_FieldPack_khk";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                     // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";	// Plecak dla Mechanika

_bagR = "B_TacticalPack_oli";						// Plecak dla strzelca, strzelca AT

_bagMAT = "CUP_B_RPGPack_Khaki";						// Plecak dla MAT

_bagmedium = "B_FieldPack_khk";					// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_khk";			// Plecaki SF

_baguav = "CUP_B_Kombat_Radio_Olive";						// Plecak RTO

_baghmgg = "CUP_B_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_Kord_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_Podnos_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_Podnos_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by Heavy GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by Heavy GMG assistant gunner

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
_specOp = [ "ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_O_RUS_VSR98_worn_VDV", "CUP_U_O_RUS_VSR98_worn_VDV_rolled_up"];
_baseHelmet = ["SP_SSh68Helmet_Green1","SP_SSh68NetHelmet_Green1","CUP_H_C_Ushanka_03"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_Green"];
_mediumRig = ["CUP_V_CDF_6B3_4_Green","CUP_V_CDF_6B3_3_Green","CUP_V_CDF_6B3_5_Green","CUP_V_CDF_6B3_2_Green"];
_heavyRig =  ["CUP_V_CDF_6B3_1_Green"];

// Siły specjalne
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["CUP_U_O_RUS_VSR98_worn_VDV_rolled_up"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up","CUP_H_RUS_ZSH_Shield_Down"];
_pilotRig = ["V_BandollierB_oli"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_O_RUS_VSR98_worn_gloves_VDV"];
_crewHelmet = ["CUP_H_SLA_TankerHelmet"];
_crewRig = ["CUP_V_O_SLA_M23_1_OD"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Opa
_sfuniform = ["rhs_uniform_df15"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	
	//Dpdanie nocnego wyposażenia
	call Night_Eq_No_NVG;
		
};	
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//VDV CW (DS)
	case 5: 
	{
_attach1 = "CUP_acc_ANPEQ_15_Flashlight_Black_L";			// Latarka + Laser 
_attach2 = "CUP_acc_Flashlight";			// Laser 

_silencer1 = "CUP_muzzle_TGPA";				// Tłumik płomieni (domyslny do wszytskich AK) 
_silencer2 = "CUP_muzzle_mfsup_Flashhider_545x39_Black";		// Tłumik 

_scope1 = "optic_ACO_grn";				// Celownik holo 
_scope2 = "CUP_optic_Kobra";				// Celownik holo (buguje RKM) 
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny 

_bipod1 = "bipod_02_F_hex";				// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach2];		//NOC
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
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK74_Early";
_riflemag = "CUP_30Rnd_545x39_AK_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS74U";
_carbinemag = "CUP_30Rnd_545x39_AK_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_smg_bizon";
_smgmag = "CUP_64Rnd_9x19_Bizon_M";
_smgmag_tr = "CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK74_GL_Early";
_glriflemag = "CUP_30Rnd_545x39_AK_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M";
_glmag = "CUP_1Rnd_HE_GP25_M";

// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";

// Siły specjalne
//_diverWepCaS = "arifle_min_rf_ak12_camo_grip";
//_diverMagCaS = "30Rnd_min_rf_545x39_mag";
//_diverWepR = "arifle_min_rf_ak12_camo_grip";
//_diverMagR = "30Rnd_min_rf_545x39_mag";
//_diverWepM = "arifle_min_rf_ak12_camo";
//_diverMagM = "30Rnd_min_rf_545x39_mag";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

/// Strzelec RKM
_AR = "CUP_arifle_RPK74_45";
_ARmag = "CUP_60Rnd_545x39_AK74M_M";
_ARmag_tr = "CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Strzelec MMG
_MMG = "CUP_lmg_PKM";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";

// Strzelec wyborowy
_DMrifle = "CUP_srifle_SVD";
_DMriflemag = "CUP_10Rnd_762x54_SVD_M";

// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";

// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VL_M";
_MATmag2 = "CUP_PG7VR_M";
_MAT_sight = "CUP_optic_PGO7V3";

// Strzelec AA
_SAM = "CUP_launch_Igla";
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

_bagsmall = "B_Parachute";		         		// Parachute

_bagFTL = "CUP_B_Kombat_Radio_Olive";                  	// Plecak dla dowódcy (radio)
_bagPP = "CUP_B_Kombat_Olive";                  		// Plecak dla pilota (radio)

_bagTL = "CUP_B_Kombat_Olive";						//Plecak dowódcy drużyny

_bagMs = "B_TacticalPack_oli";					// Plecak dla medyka (mały)
_bagMm = "B_FieldPack_khk";						// Plecak dla medyka (średni)
_bagMb = "B_Carryall_oli";               	// Plecak dla medyka (duży)

_bagARs = "B_TacticalPack_oli";					// Plecak dla RKM (mały)
_bagARm = "B_FieldPack_khk";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                     // Plecak dla RKM (duży)

_bagENG = "B_Carryall_oli";	// Plecak dla Mechanika

_bagR = "B_TacticalPack_oli";						// Plecak dla strzelca, strzelca AT

_bagMAT = "CUP_B_RPGPack_Khaki";						// Plecak dla MAT

_bagmedium = "B_FieldPack_khk";					// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_FieldPack_khk";			// Plecaki SF

_baguav = "CUP_B_Kombat_Radio_Olive";						// Plecak RTO

_baghmgg = "CUP_B_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "CUP_B_Kord_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "CUP_B_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "CUP_B_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "CUP_B_Podnos_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "CUP_B_Podnos_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "CUP_B_AGS30_Gun_Bag";					// used by Heavy GMG gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";				// used by Heavy GMG assistant gunner

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
_specOp = [ "ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["CUP_U_O_RUS_M88_VDV", "CUP_U_O_RUS_M88_VDV_rolled_up"];
_baseHelmet = ["SP_SSh68Helmet_Green1","SP_SSh68NetHelmet_Green1","CUP_H_RUS_Beret_VDV"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_Green"];
_mediumRig = ["CUP_V_CDF_6B3_4_Green","CUP_V_CDF_6B3_3_Green","CUP_V_CDF_6B3_5_Green","CUP_V_CDF_6B3_2_Green"];
_heavyRig =  ["CUP_V_CDF_6B3_1_Green"];

// Siły specjalne
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["CUP_U_O_RUS_M88_VDV_rolled_up"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up","CUP_H_RUS_ZSH_Shield_Down"];
_pilotRig = ["V_BandollierB_oli"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_O_RUS_M88_VDV"];
_crewHelmet = ["CUP_H_SLA_TankerHelmet"];
_crewRig = ["CUP_V_O_SLA_M23_1_OD"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Opa
_sfuniform = ["rhs_uniform_df15"];
_sfhelmet = ["rhs_zsh7a_alt"];
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
	
	//Dpdanie nocnego wyposażenia
	call Night_Eq_No_NVG;
		
};	
		
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//SLA (DS)
	case 6:
	{
_attach1 = "rhs_acc_2dpZenit";			// Latarka 
_attach2 = "rhs_acc_perst1ik";			// Laser 

_silencer1 = "rhs_acc_dtk";				// Tłumik płomieni (domyslny do wszytskich AK) 
_silencer2 = "rhs_acc_dtk4short";		// Tłumik 

_scope1 = "rhs_acc_1p63";				// Celownik holo 
_scope2 = "rhs_acc_pkas";				// Celownik holo (buguje RKM) 
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny 

_bipod1 = "bipod_02_F_hex";				// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_attachments = [_silencer1,_attach1]; 	// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_silencer2 = "muzzle_snds_L";	// SF Pistol suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_ak74";
_riflemag = "rhs_30Rnd_545x39_AK";
_riflemag_tr = "rhs_30Rnd_545x39_7N22_AK";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_aks74";
_carbinemag = "rhs_30Rnd_545x39_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_7N22_AK";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_aks74u";
_smgmag = "rhs_30Rnd_545x39_AK";
_smgmag_tr = "rhs_30Rnd_545x39_7N22_AK";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_ak74_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_7N10_AK";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "rhs_weap_makarov_pmm";
_pistolmag = "rhs_mag_9x18_12_57N181S";

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
_AR = "hlc_rifle_rpk_75rnd";
_ARmag = "hlc_75Rnd_762x39_m_rpk";
_ARmag_tr = "hlc_75Rnd_762x39_m_rpk";

// Strzelec MMG
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Strzelec wyborowy
_DMrifle = "rhs_weap_svdp_wd";
_DMriflemag = "rhs_10Rnd_762x54mmR_7N1";

// Strzelec AT
_RAT = "rhs_weap_rpg26";
//_RATmag = "rhs_rpg26_mag";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";
_MAT_sight = "rhs_acc_pgo7v3";

// Strzelec AA
_SAM = "rhs_weap_igla";
_SAMmag = "rhs_mag_9k38_rocket";

// Strzelec HAT
//_HAT = "launch_O_Titan_short_F";
//_HATmag1 = "Titan_AT";
//_HATmag2 = "Titan_AP";

// Snajper
_SNrifle = "srifle_GM6_F";
_SNrifleMag = "5Rnd_127x108_Mag";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";		         		// Parachute

_bagFTL = "rhs_assault_umbts";                  	// Plecak dla dowódcy (radio)
_bagPP = "rhs_assault_umbts";                  		// Plecak dla pilota (radio)

_bagTL = "rhs_assault_umbts";					//Plecak dowódcy drużyny

_bagMs = "rhs_sidor";							// Plecak dla medyka (mały)
_bagMm = "B_FieldPack_oli";						// Plecak dla medyka (średni)
_bagMb = "B_FieldPack_oli";               		// Plecak dla medyka (duży)

_bagARs = "B_FieldPack_cbr";					// Plecak dla RKM (mały)
_bagARm = "rhs_assault_umbts";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_cbr";						// Plecak dla RKM (duży)

_bagENG = "rhs_assault_umbts_engineer_empty";	// Plecak dla Mechanika

_bagR = "rhs_sidor";							// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_cbr";						// Plecak dla MAT

_bagmedium = "rhs_sidor";						// carries 200, weighs 30
_baglarge =  "B_Carryall_cbr"; 					// carries 320, weighs 40

_bagmediumdiver =  "B_Carryall_cbr";			// Plecaki SF

_baguav = "rhs_assault_umbts";						// Plecak RTO

_baghmgg = "RHS_Kord_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_Kord_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_SPG9_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_SPG9_Tripod_Bag";				// used by Heavy AT assistant gunner

_bagmtrg = "RHS_Podnos_Gun_Bag";				// used by Mortar gunner
_bagmtrag = "RHS_Podnos_Bipod_Bag";				// used by Mortar assistant gunner

_baghsamg = "RHS_AGS30_Gun_Bag";					// used by Heavy GMG gunner
_baghsamag = "RHS_AGS30_Tripod_Bag";				// used by Heavy GMG assistant gunner

// ====================================================================================

// Mundury, kamizelki itp.

// Definicja jaka klasa do jakiej grupy ma się zaliczać
// Jeżeli jakaś klasa nie jest tutaj dopisana domyslnie trafi do "_medium"

_light = ["m"];
_heavy =  ["eng","engm" ,"aar" , "ar" ];
_diver = ["divc","divr","divs","divm"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [ "ps"];

// Podstawowe mundury
// Elementy wyposażenia są losowo wybierane z listy
_baseUniform = ["rhs_uniform_flora_patchless_alt"];
_baseHelmet = ["rhs_ssh68","rhsgref_ssh68_vsr"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["rhs_6b5_medic_vsr","rhs_6b5_medic"];
_mediumRig = ["rhs_6b5_vsr","rhs_6b5","rhs_6b5_sniper_vsr"];
_heavyRig = ["rhs_6b5_vsr","rhs_6b5","rhs_6b5_sniper_vsr"];

// Siły specjalne
_diverUniform =  ["rhs_uniform_gorka_r_y"];
_diverHelmet = ["rhs_ssh68"];
_diverRig = ["rhs_vydra_3m"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["rhs_uniform_df15"];
_pilotHelmet = ["rhs_zsh7a_mike","rhs_gssh18"];
_pilotRig = ["rhs_vest_commander"];
_pilotGlasses = [];

// Jet Pilot
_sfuniform = ["rhs_uniform_df15"];
_sfhelmet = ["rhs_zsh7a_alt"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhs_uniform_flora_patchless_alt"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhs_vydra_3m"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
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
	
	//Dpdanie nocnego wyposażenia
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