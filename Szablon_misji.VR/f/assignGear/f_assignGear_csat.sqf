// ====================================================================================
// S.D.S Assign Gear Script - [V-1.8 beta | 04.03.2018]
// ====================================================================================

//	SPIS TRESCI
/*

	1. CHdKZ
	2. KPA (korea)
	3. VDV (WD)
	4. VDV (DS)
	5. MSV (WD)
	6. SLA (DS)
	7. SLA (WD)
	8. SLA (urban/winter)
	9. Takistan Army
	10. Takistan Rebels
	
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
_GPS = "ItemGPS";
_handcuffs = "ACE_CableTie";
_worek = "ACE_bodyBag";

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

// Granaty ręczne
_grenade = "CUP_HandGrenade_RGD5";
_mgrenade = "ACE_M84";
_smokegrenade = "SmokeShell";

//Granaty dymne
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";
_smokegrenadered = "SmokeShellRed";
_smokegrenadeblue = "SmokeShellBlue";

// Granaty dymne do granatnika
_glsmokewhite = "CUP_1Rnd_SMOKE_GP25_M";
_glsmokegreen = "CUP_1Rnd_SmokeGreen_GP25_M";
_glsmokered = "CUP_1Rnd_SmokeRed_GP25_M";

// Flary do granatnika
_glflarewhite = "CUP_IlumFlareWhite_GP25_M";
_glflarered = "CUP_IlumFlareRed_GP25_M";
_glflaregreen = "CUP_IlumFlareGreen_GP25_M";

// Noktowizja
_nvg = "CUP_NVG_HMNVS";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Mechanicy/saperzy
_ATmine = "ATMine_Range_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";
_mineDetector = "ACE_VMM3";

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
_attach1 = "CUP_acc_Flashlight";		// Latarka (RHS)
_attach2 = "CUP_acc_ANPEQ_2";			// Laser (RHS)
_attach3 = "rhs_acc_perst3_2dp_h";		// Latarka+Laser (RHS)

_silencer1 = "CUP_muzzle_TGPA";			// Tłumik płomieni (domyslny do wszytskich AK) (RHS)
_silencer2 = "rhs_acc_dtk4short";		// Tłumik (RHS)

_scope1 = "CUP_optic_Kobra";			// Celownik holo (RHS)
_scope2 = "CUP_optic_PSO_3";			// Celownik holo (buguje RKM) (RHS)
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny (RHS)

_bipod1 = "rhs_acc_grip_ffg2";			// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then 
{								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1]; 		//NOC
} else 
{
	_attachments = [_scope1]; 		//DZIEŃ 			
};

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK74M";
_riflemag = "CUP_30Rnd_545x39_AK74M_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS74";
_carbinemag = "CUP_30Rnd_545x39_AK74M_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK74M_M";
_smgmag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK74M_GL";
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

// Strzelec RKM
_AR = "CUP_arifle_RPK74M";
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
//_RATmag = "rhs_rpg26_mag";

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
_baseUniform = ["CUP_U_O_RUS_Flora_1","CUP_U_O_RUS_Flora_2"];
_baseHelmet = ["CUP_H_RUS_6B27"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_Green"];
_mediumRig = ["CUP_V_RUS_6B3_1","CUP_V_RUS_6B3_2","CUP_V_RUS_6B3_3"];
_heavyRig = ["CUP_V_RUS_6B3_1","CUP_V_RUS_6B3_2","CUP_V_RUS_6B3_3"];

// Siły specjalne
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["CUP_U_O_RUS_Flora_3"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up"];
_pilotRig = ["CUP_V_C_Police_Holster"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_O_RUS_Flora_2"];
_crewHelmet = ["CUP_H_SLA_TankerHelmet"];
_crewRig = ["CUP_V_RUS_6B3_4"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Opa
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
_attach1 = "CUP_acc_Flashlight";		// Latarka (RHS)
_attach2 = "rhs_acc_perst3";			// Laser (RHS)
_attach3 = "rhs_acc_perst3_2dp_h";		// Latarka+Laser (RHS)

_silencer1 = "rhs_acc_dtk";				// Tłumik płomieni (domyslny do wszytskich AK) (RHS)
_silencer2 = "rhs_acc_dtk4short";		// Tłumik (RHS)

_scope1 = "rhs_acc_ekp8_18";				// Celownik holo (RHS)
_scope2 = "rhs_acc_pkas";				// Celownik holo (buguje RKM) (RHS)
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny (RHS)

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

// Siły specjalne
//_diverWepCaS = "arifle_min_rf_ak12_camo_grip";
//_diverMagCaS = "30Rnd_min_rf_545x39_mag";
//_diverWepR = "arifle_min_rf_ak12_camo_grip";
//_diverMagR = "30Rnd_min_rf_545x39_mag";
//_diverWepM = "arifle_min_rf_ak12_camo";
//_diverMagM = "30Rnd_min_rf_545x39_mag";

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
//_RATmag = "rhs_rpg26_mag";

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
_attach1 = "rhs_acc_2dpZenit";			// Latarka (RHS)
_attach2 = "rhs_acc_perst1ik";			// Laser (RHS)

_silencer1 = "rhs_acc_dtk";				// Tłumik płomieni (domyslny do wszytskich AK) (RHS)
_silencer2 = "rhs_acc_dtk4short";		// Tłumik (RHS)

_scope1 = "rhs_acc_1p63";				// Celownik holo (RHS)
_scope2 = "rhs_acc_pkas";				// Celownik holo (buguje RKM) (RHS)
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny (RHS)

_bipod1 = "bipod_02_F_hex";				// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_attachments = [_silencer1,_attach1]; 	// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_ak74m_2mag";
_riflemag = "rhs_30Rnd_545x39_AK";
_riflemag_tr = "rhs_30Rnd_545x39_AK_green";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_ak74m";
_carbinemag = "rhs_30Rnd_545x39_AK";
_carbinemag_tr = "rhs_30Rnd_545x39_AK_green";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_aks74u";
_smgmag = "rhs_30Rnd_545x39_AK";
_smgmag_tr = "rhs_30Rnd_545x39_AK_green";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_ak74m_gp25";
_glriflemag = "rhs_30Rnd_545x39_AK";
_glriflemag_tr = "rhs_30Rnd_545x39_AK_green";
_glmag = "rhs_VOG25";

// Pistolet (dla wszystkich klas)
_pistol = "rhs_weap_pya";
_pistolmag = "rhs_mag_9x19_17";

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
_AR = "hlc_rifle_rpk74n";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

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

_bagTL = "B_Kitbag_sgg";						//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_khk";					// Plecak dla medyka (mały)
_bagMm = "B_FieldPack_oli";						// Plecak dla medyka (średni)
_bagMb = "B_TacticalPack_oli";               	// Plecak dla medyka (duży)

_bagARs = "rhs_assault_umbts";					// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_sgg";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_oli";                     // Plecak dla RKM (duży)

_bagENG = "rhs_assault_umbts_engineer_empty";	// Plecak dla Mechanika

_bagR = "B_FieldPack_oli";						// Plecak dla strzelca, strzelca AT

_bagMAT = "rhs_rpg_empty";						// Plecak dla MAT

_bagmedium = "B_Kitbag_sgg";					// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 					// carries 320, weighs 40

_bagmediumdiver =  "rhs_assault_umbts";			// Plecaki SF

_baguav = "rhs_assault_umbts";						// Plecak RTO

_baghmgg = "RHS_NSV_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_NSV_Tripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "RHS_Metis_Gun_Bag";					// used by Heavy AT gunner
_baghatag = "RHS_Metis_Tripod_Bag";				// used by Heavy AT assistant gunner

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
_baseUniform = ["rhs_uniform_flora_patchless"];
_baseHelmet = ["rhs_6b27m_green","rhs_6b27m_green_ess","rhs_6b27m","rhs_6b27m_ess"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["rhs_6b23_medic"];
_mediumRig = ["rhs_6b13_Flora_6sh92","rhs_6b13_Flora_6sh92_headset_mapcase","rhs_6b13_Flora_6sh92_radio","rhs_6b13_Flora_6sh92_vog"];
_heavyRig =  ["rhs_6b13_Flora_6sh92","rhs_6b13_Flora_6sh92_headset_mapcase","rhs_6b13_Flora_6sh92_radio","rhs_6b13_Flora_6sh92_vog"];

// Siły specjalne
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["rhs_uniform_df15"];
_pilotHelmet = ["rhs_zsh7a_mike","rhs_zsh7a","rhs_gssh18"];
_pilotRig = ["rhs_vest_commander"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["rhs_uniform_mflora_patchless"];
_crewHelmet = ["rhs_tsh4"];
_crewRig = ["rhs_vydra_3m"];
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

	   //RU VDV (DS)
    case 4:
    {
// Dodatki broń główna
_attach1 = "CUP_acc_ANPEQ_2";     // Laser (CUP)
_attach2 = "CUP_acc_Flashlight_desert";              // Latarka (CUP)
 
_silencer1 = "rhsusf_acc_nt4_black";        // Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_grey";      // Tłumik 5.56 (krótki) (RHS)
 
_scope1 = "CUP_optic_Kobra";          // Kobra
 
_bipod1 = "rhsusf_acc_harris_bipod";        //
_bipod2 = "rhsusf_acc_grip1";               // Grippod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {                 // Każda jednostka otrzyma ten zestaw dodatków

    _attachments = [_attach1,_scope1];      //NOC
} else {
    _attachments = [_attach1,_scope1];      //DZIEŃ           
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
_rifle = "CUP_arifle_AK74M";
_riflemag = "CUP_30Rnd_545x39_AK74M_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
 
// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS74U";
_carbinemag = "CUP_30Rnd_545x39_AK74M_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
 
// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK74M_M";
_smgmag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
 
// Siły specjalne
_diverWep = "CUP_arifle_AK74M";
_diverMag1 = "CUP_30Rnd_545x39_AK74M_M";
_diverMag2 = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
_sfPistol = "CUP_hgun_Makarov";
_sfPistolMag = "CUP_8Rnd_9x18_Makarov_M";
 
// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK74M_GL";
_glriflemag = "CUP_30Rnd_545x39_AK74M_M";
_glriflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
_glmag = "1Rnd_HE_Grenade_shell";
 
// Pistolet (dla wszystkich klas)
_pistol = "CUP_hgun_Makarov";
_pistolmag = "CUP_8Rnd_9x18_Makarov_M";
 
// ====================================================================================
 
// Sprzęt dla klas funkcyjnych
 
// Strzelec RKM
_AR = "CUP_arifle_RPK74M";
_ARmag = "CUP_60Rnd_545x39_AK74M_M";
_ARmag_tr = "CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";
 
// Strzelec MMG
_MMG = "CUP_lmg_Pecheneg";
_MMGmag = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
_MMGmag_tr = "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M";
 
// Strzelec wyborowy
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";
 
// Strzelec AT
_RAT = "CUP_launch_RPG18";
//_RATmag = "";
 
// Strzelec MAT
_MAT = "CUP_launch_RPG7V";
_MATmag1 = "CUP_PG7VL_M";
_MATmag2 = "CUP_OG7_M";
_MAT_sight = "CUP_optic_PGO7V3";
//_MATsptr = "rhs_mag_smaw_SR";
 
// Strzelec AA
_SAM = "CUP_launch_9K32Strela";
_SAMmag = "CUP_Strela_2_M";
 
// Strzelec HAT
_HAT = "CUP_launch_RPG7V";      
_HATmag1 = "CUP_PG7VR_M";
_HATmag2 = "CUP_TBG7V_M";
_HAT_Mobile = true;         //true - Javelin        false - TOW
 
// Snajper
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";
 
// ====================================================================================
 
// Plecaki
 
_bagsmall = "B_Parachute";                      // Spadochron
 
_bagFTL = "CUP_B_Kombat_Radio_Olive";                   // Plecak dla dowódcy (radio)
_bagPP = "rhsusf_assault_eagleaiii_ucp";                  // Plecak dla pilota (radio)
 
_bagTL = "CUP_B_RUS_Backpack";        //Plecak dowódcy drużyny
 
_bagMs = "CUP_B_RUS_Pack_Medic";                        // Plecak dla medyka (mały)
_bagMm = "CUP_B_RUS_Pack_Medic";        // Plecak dla medyka (średni)
_bagMb = "CUP_B_RUS_Pack_Medic";        // Plecak dla medyka (duży)
 
_bagARs = "B_FieldPack_cbr";       // Plecak dla RKM (mały)
_bagARm = "CUP_B_RUS_Pack_Medic";                   // Plecak dla RKM (średni)
_bagARb = "CUP_B_RUS_Pack_Medic";                   // Plecak dla RKM (duży)
 
_bagENG = "B_FieldPack_cbr";       // Plecak dla Mechanika
 
_bagR = "CUP_B_RUS_Backpack";                  // Plecak dla strzelca, strzelca AT
 
_bagMAT = "SP_Carryall_Tan";                   // Plecak dla MAT
 
_bagmedium = "SP_Carryall_Tan";    // carries 200, weighs 30
_baglarge =  "SP_Carryall_Tan";                // carries 320, weighs 40
 
_bagmediumdiver =  "CUP_B_RUS_Backpack";  // Plecaki SF
 
_baguav = "CUP_B_Kombat_Radio_Olive";                   // Plecak RTO
 
_baghmgg = "CUP_B_DShkM_Gun_Bag";                    // used by Heavy MG gunner
_baghmgag = "CUP_B_DShkM_TripodLow_Bag";            // used by Heavy MG assistant gunner
 
_baghatg = "CUP_B_Metis_Gun_Bag";                   // used by Heavy AT gunner
_baghatag = "CUP_B_Metis_Tripod_Bag";               // used by Heavy AT assistant gunner
 
_bagmtrg = "CUP_B_Podnos_Gun_Bag";              // used by Mortar gunner
_bagmtrag = "CUP_B_Podnos_Bipod_Bag";           // used by Mortar assistant gunner
 
_baghsamg = "CUP_B_AGS30_Gun_Bag";                 // used by Heavy SAM gunner
_baghsamag = "CUP_B_AGS30_Tripod_Bag";              // used by Heavy SAM assistant gunner
 
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
_baseUniform = ["CUP_U_O_RUARMY_DesertEMR_VDV", "CUP_U_O_RUARMY_DesertEMR_2_VDV"];
_baseHelmet = ["CFP_H_O_RUARMY_6B27_NVG", "CFP_H_O_RUARMY_6B27"];
_baseGlasses = [];
 
// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_DST", "CUP_V_CDF_6B3_2_DST", "CUP_V_CDF_6B3_3_DST", "CUP_V_CDF_6B3_4_DST", "CUP_V_CDF_6B3_5_DST", "CUP_V_CDF_6B3_5_MNT"];
_mediumRig = ["CUP_V_CDF_6B3_1_DST", "CUP_V_CDF_6B3_2_DST", "CUP_V_CDF_6B3_3_DST", "CUP_V_CDF_6B3_4_DST", "CUP_V_CDF_6B3_5_DST", "CUP_V_CDF_6B3_5_MNT"];
_heavyRig = ["CUP_V_CDF_6B3_1_DST", "CUP_V_CDF_6B3_2_DST", "CUP_V_CDF_6B3_3_DST", "CUP_V_CDF_6B3_4_DST", "CUP_V_CDF_6B3_5_DST", "CUP_V_CDF_6B3_5_MNT"];
 
// Siły specjalne
_diverUniform =  ["rhs_uniform_g3_mc"];
_diverHelmet = ["rhsusf_opscore_mc_cover_pelt","rhsusf_opscore_mc_cover_pelt_nsw","rhsusf_opscore_mc_cover_pelt_cam"];
_diverRig = ["rhsusf_mbav_grenadier","rhsusf_mbav_mg","rhsusf_mbav_medic","rhsusf_mbav_rifleman"];
_diverGlasses = [];
 
// Pilot
_pilotUniform = ["CUP_U_O_SLA_Overalls_Pilot"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Down", "CUP_H_RUS_ZSH_Shield_Up"];
_pilotRig = ["CUP_V_C_Police_Holster"];
_pilotGlasses = [];
 
// Załoga pojazdu
_crewUniform = ["SP_0000_Standard_Coverall_Tan"];
_crewHelmet = ["CUP_H_RUS_TSH_4_Brown"];
_crewRig = ["CFP_AK_VEST_LOlive", "CFP_AK_VEST_Olive"];
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

	//Dpdanie nocnego wyposażenia
	call Night_Eq_No_NVG;
		
};	
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//Rosja MSV
	case 1: 
	{
_attach1 = "CUP_acc_Flashlight";		// Latarka (RHS)
_attach2 = "CUP_acc_ANPEQ_2";			// Laser (RHS)
_attach3 = "rhs_acc_perst3_2dp_h";		// Latarka+Laser (RHS)

_silencer1 = "CUP_muzzle_TGPA";			// Tłumik płomieni (domyslny do wszytskich AK) (RHS)
_silencer2 = "rhs_acc_dtk4short";		// Tłumik (RHS)

_scope1 = "CUP_optic_Kobra";			// Celownik holo (RHS)
_scope2 = "CUP_optic_PSO_3";			// Celownik holo (buguje RKM) (RHS)
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny (RHS)

_bipod1 = "rhs_acc_grip_ffg2";			// Default bipod
_bipod2 = "bipod_02_F_blk";				// Black bipod

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then 
{								// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1]; 		//NOC
} else 
{
	_attachments = [_scope1]; 		//DZIEŃ 			
};

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "CUP_arifle_AK74M";
_riflemag = "CUP_30Rnd_545x39_AK74M_M";
_riflemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "CUP_arifle_AKS74";
_carbinemag = "CUP_30Rnd_545x39_AK74M_M";
_carbinemag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "CUP_arifle_AKS74U";
_smgmag = "CUP_30Rnd_545x39_AK74M_M";
_smgmag_tr = "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M";

// Broń z granatnikiem (dla dowóców)
_glrifle = "CUP_arifle_AK74M_GL";
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

// Strzelec RKM
_AR = "CUP_arifle_RPK74M";
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
//_RATmag = "rhs_rpg26_mag";

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
_baseUniform = ["CUP_U_O_RUS_Flora_1","CUP_U_O_RUS_Flora_2"];
_baseHelmet = ["CUP_H_RUS_6B27"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["CUP_V_CDF_6B3_1_Green"];
_mediumRig = ["CUP_V_RUS_6B3_1","CUP_V_RUS_6B3_2","CUP_V_RUS_6B3_3"];
_heavyRig = ["CUP_V_RUS_6B3_1","CUP_V_RUS_6B3_2","CUP_V_RUS_6B3_3"];

// Siły specjalne
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["CUP_U_O_RUS_Flora_3"];
_pilotHelmet = ["CUP_H_RUS_ZSH_Shield_Up"];
_pilotRig = ["CUP_V_C_Police_Holster"];
_pilotGlasses = [];

// Załoga pojazdu
_crewUniform = ["CUP_U_O_RUS_Flora_2"];
_crewHelmet = ["CUP_H_SLA_TankerHelmet"];
_crewRig = ["CUP_V_RUS_6B3_4"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; 
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Opa
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

	//ZSRR Woodland [CW]
	case 6:
	{
_attach1 = "rhs_acc_2dpZenit";			// Latarka (RHS)
_attach2 = "rhs_acc_perst1ik";			// Laser (RHS)

_silencer1 = "rhs_acc_dtk";				// Tłumik płomieni (domyslny do wszytskich AK) (RHS)
_silencer2 = "rhs_acc_dtk4short";		// Tłumik (RHS)

_scope1 = "rhs_acc_1p63";				// Celownik holo (RHS)
_scope2 = "rhs_acc_pkas";				// Celownik holo (buguje RKM) (RHS)
_scope3 = "rhs_acc_pso1m2";				// Celownik optyczny (RHS)

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

// Siły specjalne
//_diverWepCaS = "arifle_min_rf_ak12_camo_grip";
//_diverMagCaS = "30Rnd_min_rf_545x39_mag";
//_diverWepR = "arifle_min_rf_ak12_camo_grip";
//_diverMagR = "30Rnd_min_rf_545x39_mag";
//_diverWepM = "arifle_min_rf_ak12_camo";
//_diverMagM = "30Rnd_min_rf_545x39_mag";

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