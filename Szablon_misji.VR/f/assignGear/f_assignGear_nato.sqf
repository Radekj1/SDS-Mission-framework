// ====================================================================================
// S.D.S Assign Gear Script - [V-1.7 | 19.04.2017]
// ====================================================================================

//	SPIS TRESCI
/*

	1.	US ARMY UCP
	2.	US ARMY OCP
	3.	USMC Desert
	4.	USMC Woodland
	5.	Polska Desert
	6.	Polska Woodland
	7.	US Desert [CW]
	8.	US Woodland [CW]
	
*/
// ====================================================================================
	// Proszę wpisać odpowiednią liczbę dla wybranej frakcji
	_loadout_faction_player = 2;
// ====================================================================================

//Definicje przedmiotów

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
_latarka = "ACE_Flashlight_XL50";
_lornetkaAM = "ACE_Vector";
_lornetkaFTL = "Binocular";
_lornetkaRTO = "Laserdesignator";
_GPS = "ItemGPS";
_Antena_RTO = "tfw_rf3080Item";

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
_grenade = "rhs_mag_m67";
_mgrenade = "ACE_M84";

// Granaty dymne do granatnika
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flary do granatnika
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

//Przedmioty w skrzyniach
_satche_small = "DemoCharge_Remote_Mag";
_satche_big = "SatchelCharge_Remote_Mag";
_toolkit = "ToolKit";
_zapalnik = "ACE_M26_Clacker";
_n_rozbraja = "ACE_DefusalKit";
_saperka = "ACE_EntrenchingTool";
_wirecutter = "ACE_wirecutter";

// Mechanicy/saperzy
_ATmine = "ATMine_Range_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// Noktowizja
_nvg = "rhsusf_ANPVS_15";

// Terminal UAV
_uavterminal = "B_UavTerminal";	  // Dla BLUFORU musi być terminal BLUFORU, innej frakcji nie zadziała

//Konstruktor BUILDERA
Builder = {	
	_backpack = {
		_typeofBackPack = _this select 0;
		_loadout = f_param_backpacks;
		if (count _this > 1) then {_loadout = _this select 1};
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
	
Medical = {
	for "_p" from 1 to 12 do {_unit addItem _bandage;};		// Dodanie 12 sztuk bandaży
	for "_p" from 1 to 2 do {_unit addItem _morphine;};		// Dodanie 2 sztuk morfiny
	for "_p" from 1 to 2 do {_unit addItem _epinephrine;};	// Dodanie 2 sztuk epinefryny	
	_unit linkItem "ItemMap";		// Dodanie mapy
	_unit linkItem "ItemCompass";	// Dodanie kompsu
	_unit linkItem "ItemRadio";		// Dodanie radia (nie z taskforce)
	_unit linkItem "tf_microdagr";	// Dodanie zegarka
	_unit addItem _earplugs;		// Dodaje zatyczki do uszy
	_unit addItem _latarka;			// Latarka na mape
};

	

// ====================================================================================

switch (_loadout_faction_player) do
{
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//US ARMY UCP
	case 1: 
	{
// Dodatki broń główna
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} else {
	_attachments = [_attach3,_scope1];		//DZIEŃ 			
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
_rifle = "rhs_weap_m4a1_carryhandle_pmag";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_m4_carryhandle";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhsusf_weap_MP7A1_base_f";
_smgmag = "rhsusf_mag_40Rnd_46x30_FMJ";
_smgmag_tr = "rhsusf_mag_40Rnd_46x30_FMJ";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_m4a1_carryhandle_m203";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// Siły specjalne
//_diverWep = "rhs_weap_m4a1_blockII_grip2_KAC";
//_diverMag1 = "30Rnd_556x45_Stanag";
//_diverMag2 = "30Rnd_556x45_Stanag_Tracer_Red";

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

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_M136";
//_RATmag = "";

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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tf_rt1523g_big_rhs";					// Plecak dla dowódcy (radio)
_bagPP = "tf_rt1523g_big_rhs";                  // Plecak dla pilota (radio)

_bagTL = "rhsusf_assault_eagleaiii_ucp";		//Plecak dowódcy drużyny

_bagMs = "B_Kitbag_cbr";						// Plecak dla medyka (mały)
_bagMm = "rhsusf_assault_eagleaiii_ucp";		// Plecak dla medyka (średni)
_bagMb = "rhsusf_assault_eagleaiii_ucp";        // Plecak dla medyka (duży)

_bagARs = "rhsusf_assault_eagleaiii_ucp";		// Plecak dla RKM (mały)
_bagARm = "B_Carryall_mcamo";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_mcamo";                   // Plecak dla RKM (duży)

_bagENG = "rhsusf_assault_eagleaiii_ucp";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_mcamo";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_mcamo";					// Plecak dla MAT

_bagmedium = "rhsusf_assault_eagleaiii_ucp";	// carries 200, weighs 30
_baglarge =  "B_Carryall_mcamo"; 				// carries 320, weighs 40

_bagmediumdiver =  "rhsusf_assault_eagleaiii_ucp";	// Plecaki SF

_baguav = "tf_rt1523g_big_rhs";					// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";					// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";				// used by Heavy SAM assistant gunner

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
_baseUniform = ["rhs_uniform_cu_ucp"];
_baseHelmet = ["rhsusf_ach_helmet_ESS_ucp", "rhsusf_ach_helmet_headset_ucp", "rhsusf_ach_helmet_headset_ess_ucp"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["rhsusf_iotv_ucp_Grenadier", "rhsusf_iotv_ucp_Medic", "rhsusf_iotv_ucp_Repair", "rhsusf_iotv_ucp_SAW", "rhsusf_iotv_ucp_Squadleader", "rhsusf_iotv_ucp_Teamleader"];
_mediumRig = ["rhsusf_iotv_ucp_Grenadier", "rhsusf_iotv_ucp_Medic", "rhsusf_iotv_ucp_Repair", "rhsusf_iotv_ucp_SAW", "rhsusf_iotv_ucp_Squadleader", "rhsusf_iotv_ucp_Teamleader"];
_heavyRig = ["rhsusf_iotv_ucp_Grenadier", "rhsusf_iotv_ucp_Medic", "rhsusf_iotv_ucp_Repair", "rhsusf_iotv_ucp_SAW", "rhsusf_iotv_ucp_Squadleader", "rhsusf_iotv_ucp_Teamleader"];

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

// Załoga pojazdu
_crewUniform = ["rhs_uniform_cu_ucp"];
_crewHelmet = ["rhsusf_cvc_green_helmet"];
_crewRig = ["rhsusf_spc"];
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

	// Przedmioty uniwersalne dla klas
	// Dodanie przedmiotów do każdej jednstki (gracza)
	
	call Medical;
	
  };
  
// ====================================================================================

//WYWOŁANIE BUILDERA
	call Builder;

};
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//US ARMY OCP
	case 2:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {			// Każda jednostka otrzyma ten zestaw dodatków
	_attachments = [_attach1,_scope1];		//NOC
} else {
	_attachments = [_attach3,_scope1];		//DZIEŃ 			
};

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_m4a1_carryhandle_pmag";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_m4_carryhandle";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhsusf_weap_MP7A1_base_f";
_smgmag = "rhsusf_mag_40Rnd_46x30_FMJ";
_smgmag_tr = "rhsusf_mag_40Rnd_46x30_FMJ";

// Siły specjalne
_diverWep = "rhs_weap_m4a1_blockII_grip2_KAC";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_m4a1_carryhandle_m203";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

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

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_M136";
//_RATmag = "";

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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki
_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tf_rt1523g_big_rhs";					// Plecak dla dowódcy (radio)
_bagPP = "tf_rt1523g_big_rhs";                  // Plecak dla pilota (radio)

_bagTL = "B_rhsusf_B_BACKPACK";					//Plecak dowódcy drużyny

_bagMs = "rhsusf_assault_eagleaiii_coy";		// Plecak dla medyka (mały)
_bagMm = "rhsusf_assault_eagleaiii_coy";		// Plecak dla medyka (średni)
_bagMb = "rhsusf_assault_eagleaiii_coy";		// Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_mcamo";				// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_mcamo";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_mcamo";                   // Plecak dla RKM (duży)

_bagENG = "rhsusf_assault_eagleaiii_ocp";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_mcamo";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_mcamo";					// Plecak dla MAT

_bagmedium = "B_TacticalPack_mcamo";			// carries 200, weighs 30
_baglarge =  "B_Carryall_mcamo"; 				// carries 320, weighs 40

_bagmediumdiver =  "rhsusf_assault_eagleaiii_ocp";	// Plecaki SF

_baguav = "tf_rt1523g_big_rhs";					// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";					// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";				// used by Heavy SAM assistant gunner

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
_baseUniform = ["rhs_uniform_cu_ocp"];
_baseHelmet = ["rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_ESS_ocp"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["rhsusf_iotv_ocp_Grenadier", "rhsusf_iotv_ocp_Medic", "rhsusf_iotv_ocp_Repair", "rhsusf_iotv_ocp_Rifleman", "rhsusf_iotv_ocp_Squadleader", "rhsusf_iotv_ocp_Teamleader"];
_mediumRig = ["rhsusf_iotv_ocp_Grenadier", "rhsusf_iotv_ocp_Medic", "rhsusf_iotv_ocp_Repair",
"rhsusf_iotv_ocp_Rifleman", "rhsusf_iotv_ocp_Squadleader", "rhsusf_iotv_ocp_Teamleader"];
_heavyRig = ["rhsusf_iotv_ocp_Grenadier", "rhsusf_iotv_ocp_Medic", "rhsusf_iotv_ocp_Repair", "rhsusf_iotv_ocp_Rifleman", "rhsusf_iotv_ocp_Squadleader", "rhsusf_iotv_ocp_Teamleader"];

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

// Załoga pojazdu
_crewUniform = ["rhs_uniform_cu_ocp"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["rhsusf_spc"];
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

};	
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//USMC Desert
	case 3:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = [_attach3,_scope2]; 			// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

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
_diverWep = "rhs_weap_m4a1_blockII_grip2_KAC";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_m16a4_carryhandle_M203";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "rhs_weap_m249_pip_L";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Strzelec MMG
_MMG = "hlc_lmg_M60E4";
_MMGmag = "hlc_100Rnd_762x51_M_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_M_M60E4";

// Strzelec wyborowy
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki
_bagsmall = "B_Parachute";						// Spadochron

_bagFTL = "tfw_ilbe_blade_d";					// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_blade_d";                  	// Plecak dla pilota (radio)

_bagTL = "B_Kitbag_cbr";						//Plecak dowódcy drużyny

_bagMs = "rhsusf_assault_eagleaiii_coy";		// Plecak dla medyka (mały)
_bagMm = "B_Kitbag_cbr";						// Plecak dla medyka (średni)
_bagMb = "B_Kitbag_cbr";               			// Plecak dla medyka (duży)

_bagARs = "rhsusf_assault_eagleaiii_coy";		// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_cbr";						// Plecak dla RKM (średni)
_bagARb = "B_Carryall_cbr";                     // Plecak dla RKM (duży)

_bagENG = "rhsusf_assault_eagleaiii_coy";		// Plecak dla Mechanika

_bagR = "B_AssaultPack_cbr";					// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_cbr";						// Plecak dla MAT

_bagmedium = "B_Kitbag_cbr";					// carries 200, weighs 30
_baglarge =  "B_Carryall_cbr"; 					// carries 320, weighs 40

_bagmediumdiver =  "rhsusf_assault_eagleaiii_coy";	// Plecaki SF

_baguav = "tfw_ilbe_d";							// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";					// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";			// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";					// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";				// used by Heavy SAM assistant gunner

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
_baseUniform = ["rhs_uniform_FROG01_d"];
_baseHelmet = ["rhsusf_mich_helmet_marpatd","rhsusf_lwh_helmet_marpatd"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_rifleman","rhsusf_spc_squadleader","rhsusf_spc_teamleader"];
_mediumRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_rifleman","rhsusf_spc_squadleader","rhsusf_spc_teamleader"];
_heavyRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_rifleman","rhsusf_spc_squadleader","rhsusf_spc_teamleader"];

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

// Załoga pojazdu
_crewUniform = ["rhs_uniform_FROG01_d"];
_crewHelmet = ["rhsusf_cvc_helmet"];
_crewRig = ["rhsusf_spc","rhsusf_spc_crewman"];
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

};
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//USMC Woodland
	case 4:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = [_attach3,_scope2]; 			// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= []; 

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
_diverWep = "rhs_weap_m4a1_blockII_grip2_KAC";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń z granatnikiem (dla dowóców)
_glrifle = "rhs_weap_m16a4_carryhandle_M203";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "rhs_weap_m249_pip_L";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Strzelec MMG
_MMG = "hlc_lmg_M60E4";
_MMGmag = "hlc_100Rnd_762x51_M_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_M_M60E4";

// Strzelec wyborowy
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "";

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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";							// Spadochron
	
_bagFTL = "tfw_ilbe_blade_coy";      				// Plecak dla dowódcy (radio)
_bagPP = "tfw_ilbe_blade_coy";           		 	// Plecak dla pilota (radio)

_bagTL = "rhsusf_assault_eagleaiii_coy";			//Plecak dowódcy drużyny

_bagMs = "rhsusf_assault_eagleaiii_coy";			// Plecak dla medyka (mały)
_bagMm = "rhsusf_assault_eagleaiii_coy";			// Plecak dla medyka (średni)
_bagMb = "B_Carryall_khk";               			// Plecak dla medyka (duży)

_bagARs = "rhsusf_assault_eagleaiii_coy";			// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";							// Plecak dla RKM (średni)
_bagARb = "B_Carryall_khk";                  	 	// Plecak dla RKM (duży)

_bagENG = "B_TacticalPack_blk";                		// Plecak dla Mechanika

_bagR = "B_AssaultPack_rgr";						// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_cbr";							// Plecak dla MAT

_bagmediumdiver = "rhsusf_assault_eagleaiii_coy";	// used by divers

_baguav = "tfw_ilbe_coy";							// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";						// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";						// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";					// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";					// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";				// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";						// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";					// used by Heavy SAM assistant gunner

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
_baseUniform = ["rhs_uniform_FROG01_wd"];
_baseHelmet = ["rhsusf_lwh_helmet_marpatwd","rhsusf_lwh_helmet_marpatwd_ess","rhsusf_lwh_helmet_marpatwd_headset","rhsusf_mich_bare_norotos","rhsusf_mich_helmet_marpatwd","rhsusf_mich_helmet_marpatwd_alt","rhsusf_mich_helmet_marpatwd_norotos"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_rifleman","rhsusf_spc_squadleader","rhsusf_spc_teamleader"];
_mediumRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_rifleman","rhsusf_spc_squadleader","rhsusf_spc_teamleader"];
_heavyRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_mg","rhsusf_spc_rifleman","rhsusf_spc_squadleader","rhsusf_spc_teamleader"];

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

// Załoga pojazdu
_crewUniform = ["rhs_uniform_FROG01_wd"];
_crewHelmet = ["rhsusf_cvc_helmet"];
_crewRig = ["rhsusf_spc","rhsusf_spc_crewman"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"]; //DLC alternatives: ["U_B_FullGhillie_lsh","U_B_FullGhillie_ard","U_B_FullGhillie_sard"];
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

};
	
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//Polska Desert
	case 5:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_M952V";				// Latarka (RHS)
_attach3 = "acc_pointer_IR";				// czerwony laser (ARMA)

//_silencer1 = "muzzle_snds_M";				// Tłumik 5.56 (długi)
//_silencer2 = "BWA3_muzzle_snds_G36";		// Tłumik 5.56 (krótki)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x (RHS)

_bipod1 = "";								// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = [_attach2,_scope1]; 			// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_silencer2 = "muzzle_snds_L";	// SF pistol suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "PSZ_Beryl04";
_riflemag = "PSZ_556x45_Beryl_30";
_riflemag_tr = "PSZ_556x45_Beryl_30_T_G";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "PSZ_BerylMini04";
_carbinemag = "PSZ_556x45_Beryl_30";
_carbinemag_tr = "PSZ_556x45_Beryl_30_T_G";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_aks74u";
_smgmag = "rhs_30Rnd_545x39_AK";
_smgmag_tr = "rhs_30Rnd_545x39_AK_green";

// Siły specjalne
_diverWepCaS = "PSZ_Radon_HG";
_diverMagCaS = "PSZ_556x45_STANAG_30";
_diverWepM = "PSZ_Radon_HG";
_diverMagM = "PSZ_556x45_STANAG_30";
_diverWepR = "PSZ_Radon";
_diverMagR = "PSZ_556x45_STANAG_30";
_secendWep = "PSZ_P99";
_secendMag = "PSZ_9x19_P99_16";

// Broń z granatnikiem (dla dowóców)
_glrifle = "PSZ_Beryl96_Pallad";
_glriflemag = "PSZ_556x45_Beryl_30";
_glriflemag_tr = "PSZ_556x45_Beryl_30_T_G";
_glmag = "PSZ_40x47_NGO74_HE";

// Pistolet (dla wszystkich klas)
_pistol = "PSZ_P99";
_pistolmag = "PSZ_9x19_P99_16";

//Granatnik ręczny
_pistol_GL= "rhs_weap_M320";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_RPK12";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_rpg26";
_RATmag = "rhs_rpg26_mag";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";

// Strzelec AA
_SAM = "PSZ_Grom";
_SAMmag = "PSZ_Grom_AA";

// Strzelec HAT
_HAT = "PSZ_Spike_LR";
_HATmag1 = "PSZ_Spike_THEAT";
_HATmag2 = "PSZ_Spike_THEAT";

// Snajper
_SNrifle = "srifle_LRR_F";
_SNrifleMag = "7Rnd_408_Mag";

// ====================================================================================

// Plecaki

_bagsmall = "DEGA_T10_Parachute_backpack";		// Spadochron

_bagFTL = "tf_rt1523g_big";						// Plecak dla dowódcy (radio)
_bagPP = "tf_rt1523g_big";                  	// Plecak dla pilota (radio)

_bagTL = "PSZ_B_wz93_DES";						//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";					// Plecak dla medyka (mały)
_bagMm = "B_TacticalPack_oli";					// Plecak dla medyka (średni)
_bagMb = "PSZ_B_wz93_Medical_DES";              // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_rgr";					// Plecak dla RKM (mały)
_bagARm = "PSZ_B_wz93_DES";						// Plecak dla RKM (średni)
_bagARb = "PSZ_B_wz97_DES";						// Plecak dla RKM (duży)

_bagENG = "B_AssaultPack_rgr";					// Plecak dla Mechanika

_bagR = "PSZ_B_wz93_WDL";						// Plecak dla strzelca, strzelca AT

_bagMAT = "PSZ_B_wz97_DES";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_oli";				// carries 200, weighs 30
_baglarge =  "PSZ_B_wz97_DES"; 					// carries 320, weighs 40

_bagmediumdiver =  "PSZ_B_wz93_DES";			// Plecaki SF

_baguav = "tf_rt1523g_big";						// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";						// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";					// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";				// used by Heavy SAM assistant gunner

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
_baseUniform = ["PSZ_U_PL_DES_wz2010_Crye","PSZ_U_PL_DES_wz2010_Crye_Folded","PSZ_U_PL_DES_wz2010_Polar","PSZ_U_PL_WDL_wz2010_Crye_Folded","PSZ_U_PL_WDL_wz2010_Polar"];
_baseHelmet = ["PSZ_H_wz2005_DES","PSZ_H_wz2005_DES_ESS","PSZ_H_wz2005_OLIVE","PSZ_H_wz2005_OLIVE_ESS","PSZ_H_wz2005_WDL","PSZ_H_wz2005_WDL_ESS"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["PSZ_V_UKO_L_DES_CO_Headset","PSZ_V_UKO_L_DES_GL_Headset","PSZ_V_UKO_L_DES_MG_Headset","PSZ_V_UKO_L_DES_M_Headset","PSZ_V_UKO_L_DES_R_Headset","PSZ_V_UKO_L_WDL_CO_Headset","PSZ_V_UKO_L_WDL_GL_Headset","PSZ_V_UKO_L_WDL_R_Headset"];
_mediumRig = ["PSZ_V_UKO_L_DES_CO_Headset","PSZ_V_UKO_L_DES_GL_Headset","PSZ_V_UKO_L_DES_MG_Headset","PSZ_V_UKO_L_DES_M_Headset","PSZ_V_UKO_L_DES_R_Headset","PSZ_V_UKO_L_WDL_CO_Headset","PSZ_V_UKO_L_WDL_GL_Headset","PSZ_V_UKO_L_WDL_R_Headset"]; 	
_heavyRig = ["PSZ_V_UKO_L_DES_CO_Headset","PSZ_V_UKO_L_DES_GL_Headset","PSZ_V_UKO_L_DES_MG_Headset","PSZ_V_UKO_L_DES_M_Headset","PSZ_V_UKO_L_DES_R_Headset","PSZ_V_UKO_L_WDL_CO_Headset","PSZ_V_UKO_L_WDL_GL_Headset","PSZ_V_UKO_L_WDL_R_Headset"];

// Siły specjalne
_diverUniform =  ["PSZ_U_PL_DES_wz2010_Crye_Folded","PSZ_U_PL_DES_wz2010_Polar"];
_diverHelmet = ["PSZ_H_wz2005_OLIVE_ESS","PSZ_H_wz2005_DES_ESS", "PSZ_H_wz2005_DES"];
_diverRig = ["PSZ_V_UKO_L_DES_M_Headset","PSZ_V_UKO_L_DES_R_Headset", "PSZ_V_UKO_L_WDL_R_Headset"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["PSZ_U_PL_Pilot_Coverall"];
_pilotHelmet = ["PSZ_H_THL5"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

// Załoga pojazdu
_crewUniform = ["PSZ_U_PL_WDL_wz2010_Crye"];
_crewHelmet = ["usm_helmet_cvc"];
_crewRig = ["PSZ_V_Kontraktor_DES"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"]; //DLC alternatives: ["U_B_FullGhillie_lsh","U_B_FullGhillie_ard","U_B_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
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

};	
		
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//Polska Woodland
	case 6:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_M952V";				// Latarka (RHS)
_attach3 = "acc_pointer_IR";				// czerwony laser (ARMA)

//_silencer1 = "muzzle_snds_M";				// Tłumik 5.56 (długi)
//_silencer2 = "BWA3_muzzle_snds_G36";		// Tłumik 5.56 (krótki)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x (RHS)

_bipod1 = "";								// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = [_attach2,_scope1]; 			// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_silencer2 = "muzzle_snds_L";	// SF pistol suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= []; 

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "PSZ_Beryl04_G";
_riflemag = "PSZ_556x45_Beryl_30";
_riflemag_tr = "PSZ_556x45_Beryl_30_T_R";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "PSZ_BerylMini04_G";
_carbinemag = "PSZ_556x45_Beryl_30";
_carbinemag_tr = "PSZ_556x45_Beryl_30_T_R";

// Broń PDW (dla przykładowo: Pilot, Co-pilot,Dowódca pojazdu)
_smg = "rhs_weap_aks74u";
_smgmag = "rhs_30Rnd_545x39_AK";
_smgmag_tr = "rhs_30Rnd_545x39_AK_green";

// Siły specjalne
_diverWepCaS = "PSZ_Radon_HG";
_diverMagCaS = "PSZ_556x45_STANAG_30";
_diverWepM = "PSZ_Radon_HG";
_diverMagM = "PSZ_556x45_STANAG_30";
_diverWepR = "PSZ_Radon";
_diverMagR = "PSZ_556x45_STANAG_30";
_secendWep = "PSZ_P99";
_secendMag = "PSZ_9x19_P99_16";

// Broń z granatnikiem (dla dowóców)
_glrifle = "PSZ_Beryl96_Pallad_G";
_glriflemag = "PSZ_556x45_Beryl_30";
_glriflemag_tr = "PSZ_556x45_Beryl_30_T_R";
_glmag = "PSZ_40x47_NGO74_HE";

// Pistolet (dla wszystkich klas)
_pistol = "PSZ_P99";
_pistolmag = "PSZ_9x19_P99_16";

//Granatnik ręczny
_pistol_GL= "rhs_weap_M320";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "hlc_rifle_RPK12";
_ARmag = "hlc_60Rnd_545x39_t_rpk";
_ARmag_tr = "hlc_60Rnd_545x39_t_rpk";

// Strzelec MMG
_MMG = "rhs_weap_pkm";
_MMGmag = "rhs_100Rnd_762x54mmR";
_MMGmag_tr = "rhs_100Rnd_762x54mmR_green";

// Strzelec wyborowy (broń DLC)
_DMrifle = "srifle_DMR_06_camo_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Strzelec AT
_RAT = "rhs_weap_rpg26";
_RATmag = "rhs_rpg26_mag";

// Strzelec MAT
_MAT = "rhs_weap_rpg7";
_MATmag1 = "rhs_rpg7_PG7VL_mag";
_MATmag2 = "rhs_rpg7_PG7VR_mag";

// Strzelec AA
_SAM = "PSZ_Grom";
_SAMmag = "PSZ_Grom_AA";

// Strzelec HAT
_HAT = "PSZ_Spike_LR";
_HATmag1 = "PSZ_Spike_THEAT";
_HATmag2 = "PSZ_Spike_THEAT";

// Snajper
_SNrifle = "srifle_LRR_F";
_SNrifleMag = "7Rnd_408_Mag";

// ====================================================================================

// Plecaki

_bagsmall = "DEGA_T10_Parachute_backpack";		// Spadochron

_bagFTL = "tf_rt1523g_big_bwmod";				// Plecak dla dowódcy (radio)
_bagPP = "tf_rt1523g_big_bwmod";                // Plecak dla pilota (radio)

_bagTL = "PSZ_B_wz93_WDL";						//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";					// Plecak dla medyka (mały)
_bagMm = "PSZ_B_wz93_Medical_WDL";				// Plecak dla medyka (średni)
_bagMb = "PSZ_B_wz93_Medical_WDL";              // Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_rgr";					// Plecak dla RKM (mały)
_bagARm = "PSZ_B_wz97_WDL";						// Plecak dla RKM (średni)
_bagARb = "PSZ_B_wz97_WDL";						// Plecak dla RKM (duży)

_bagENG = "B_AssaultPack_rgr";					// Plecak dla Mechanika

_bagR = "PSZ_B_wz93_WDL";						// Plecak dla strzelca, strzelca AT

_bagMAT = "PSZ_B_wz97_WDL";						// Plecak dla MAT

_bagmedium = "B_TacticalPack_oli";				// carries 200, weighs 30
_baglarge =  "PSZ_B_wz97_DES"; 					// carries 320, weighs 40

_bagmediumdiver =  "PSZ_B_wz93_WDL";			// Plecaki SF

_baguav = "tf_rt1523g_big_bwmod";				// Plecak RTO

_baghmgg = "RHS_M2_Gun_Bag";						// used by Heavy MG gunner
_baghmgag = "RHS_M2_MiniTripod_Bag";				// used by Heavy MG assistant gunner

_baghatg = "B_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag = "B_HMG_01_support_F";				// used by Heavy AT assistant gunner
_bagmtrg = "B_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag = "B_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg = "B_AA_01_weapon_F";					// used by Heavy SAM gunner
_baghsamag = "B_HMG_01_support_F";				// used by Heavy SAM assistant gunner

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
_baseUniform = ["PSZ_U_PL_WDL_wz2010_Crye","PSZ_U_PL_WDL_wz2010_Polar","PSZ_U_PL_WDL_wz2010_Crye_Folded"];
_baseHelmet = ["PSZ_H_wz2005_OLIVE_ESS","PSZ_H_wz2005_WDL","PSZ_H_wz2005_WDL_ESS"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["PSZ_V_UKO_L_WDL_CO_Headset","PSZ_V_UKO_L_WDL_GL_Headset","PSZ_V_UKO_L_WDL_R_Headset","PSZ_V_UKO_H_WDL_M","PSZ_V_UKO_L_WDL_R","PSZ_V_UKO_L_WDL_R_Headset"];
_mediumRig = ["PSZ_V_UKO_L_WDL_CO_Headset","PSZ_V_UKO_L_WDL_GL_Headset","PSZ_V_UKO_L_WDL_R_Headset","PSZ_V_UKO_H_WDL_M","PSZ_V_UKO_L_WDL_R","PSZ_V_UKO_L_WDL_R_Headset"]; 	// default for all infantry classes
_heavyRig = ["PSZ_V_UKO_L_WDL_CO_Headset","PSZ_V_UKO_L_WDL_GL_Headset","PSZ_V_UKO_L_WDL_R_Headset","PSZ_V_UKO_H_WDL_M","PSZ_V_UKO_L_WDL_R","PSZ_V_UKO_L_WDL_R_Headset"];

// Siły specjalne
_diverUniform =  ["PSZ_U_PL_WDL_wz2010_Polar","PSZ_U_PL_DES_wz2010_Polar"];
_diverHelmet = ["PSZ_H_wz2005_WDL_ESS","PSZ_H_wz2005_OLIVE_ESS"];
_diverRig = ["PSZ_V_UKO_L_WDL_M_Headset","PSZ_V_UKO_L_WDL_R_Headset"];
_diverGlasses = [];

// Pilot
_pilotUniform = ["PSZ_U_PL_Pilot_Coverall"];
_pilotHelmet = ["PSZ_H_THL5"];
_pilotRig = ["V_TacVest_blk"];
_pilotGlasses = [];

// JET Pilot
_sfuniform = ["U_B_PilotCoveralls"];
_sfhelmet = ["H_PilotHelmetFighter_B"];
_sfRig = ["V_Rangemaster_belt"];
_sfGlasses = [];

// Załoga pojazdu
_crewUniform = ["PSZ_U_PL_DES_wz2010_Polar"];
_crewHelmet = ["usm_helmet_cvc"];
_crewRig = ["PSZ_V_Kontraktor_WDL"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_B_GhillieSuit"]; //DLC alternatives: ["U_B_FullGhillie_lsh","U_B_FullGhillie_ard","U_B_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_rgr"];
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

};
		
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//US Desert [CW]
	case 7:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = [_attach3]; 			// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= [];

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
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

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
_lightRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_light","rhsusf_spc_mg","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_squadleader"];
_mediumRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_light","rhsusf_spc_mg","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_squadleader"];
_heavyRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_light","rhsusf_spc_mg","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_squadleader"];

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

};	
		
//*****************************************************************************************************
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//*****************************************************************************************************

	//US Woodland [CW]
	case 8:
	{
_attach1 = "rhsusf_acc_anpeq15side_bk";		// Laser (RHS)
_attach2 = "rhsusf_acc_anpeq15_bk_light";	// Laser i latarka (można przełączyć) (RHS)
_attach3 = "rhsusf_acc_M952V";				// Latarka (RHS)

_silencer1 = "rhsusf_acc_nt4_black";		// Tłumik 5.56 (długi) (RHS)
_silencer2 = "rhsusf_acc_rotex5_tan";		// Tłumik 5.56 (krótki) (RHS)

_scope1 = "PSZ_AccO_EOT552";				// Eotech (Czarny PSZ)
_scope2 = "rhsusf_acc_compm4";				// Aimpoint (RHS)
_scope3 = "rhsusf_acc_LEUPOLDMK4_2";		// Celownik snajperski 6.5-20x

_bipod1 = "rhsusf_acc_harris_bipod";		// 
_bipod2 = "bipod_02_F_blk";					// 

// Jakie dodatki mają być dodane
_attachments = [_attach2]; 			// Każda jednostka otrzyma ten zestaw dodatków

// ====================================================================================

// Dodatki do pistoletu
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor
_hg_scope1 = "optic_MRD";			// MRD
_hg_attachments= []; 

// ====================================================================================

// Bronie

// Podstawowa broń (dla przykładowo: Amunicyjny MMG, Amunicyjny RKM, Amunicyjny MAT,Strzelec)
_rifle = "rhs_weap_m16a4_carryhandle_grip_pmag";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

// Broń wersja "krótka" (dla przykładowo: Medyk, Strzelec (AT), Strzelec MAT)
_carbine = "rhs_weap_m4_carryhandle";
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

// Pistolet (dla wszystkich klas)
_pistol = "rhsusf_weap_m9";
_pistolmag = "rhsusf_mag_15Rnd_9x19_FMJ";

// ====================================================================================

// Sprzęt dla klas funkcyjnych

// Strzelec RKM
_AR = "rhs_weap_m249_pip_L_para";
_ARmag = "rhsusf_100Rnd_556x45_soft_pouch";
_ARmag_tr = "rhsusf_100Rnd_556x45_soft_pouch";

// Strzelec MMG
_MMG = "hlc_lmg_m60";
_MMGmag = "hlc_100Rnd_762x51_M_M60E4";
_MMGmag_tr = "hlc_100Rnd_762x51_M_M60E4";

// Strzelec wyborowy
_DMrifle = "rhs_weap_m14ebrri";
_DMriflemag = "rhsusf_20Rnd_762x51_m118_special_Mag";

// Strzelec AT
_RAT = "rhs_weap_m72a7";
//_RATmag = "rhs_m72a7_mag";

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
_SNrifle = "rhs_weap_M107";
_SNrifleMag = "rhsusf_mag_10Rnd_STD_50BMG_M33";

// ====================================================================================

// Plecaki

_bagsmall = "B_Parachute";					// Spadochron

_bagFTL = "tf_rt1523g_sage";				// Plecak dla dowódcy (radio)
_bagPP = "tf_rt1523g_sage";             	// Plecak dla pilota (radio)

_bagTL = "B_Kitbag_rgr";					//Plecak dowódcy drużyny

_bagMs = "B_AssaultPack_rgr";				// Plecak dla medyka (mały)
_bagMm = "B_TacticalPack_oli";				// Plecak dla medyka (średni)
_bagMb = "B_Kitbag_rgr";               		// Plecak dla medyka (duży)

_bagARs = "B_AssaultPack_rgr";				// Plecak dla RKM (mały)
_bagARm = "B_Kitbag_rgr";					// Plecak dla RKM (średni)
_bagARb = "B_Carryall_khk";                 // Plecak dla RKM (duży)

_bagENG = "B_AssaultPack_rgr";				// Plecak dla Mechanika

_bagR = "B_Kitbag_rgr";						// Plecak dla strzelca, strzelca AT

_bagMAT = "B_Carryall_khk";					// Plecak dla MAT

_bagmedium = "B_TacticalPack_oli";			// carries 200, weighs 30
_baglarge =  "B_Carryall_khk"; 				// carries 320, weighs 40

_bagmediumdiver =  "B_AssaultPack_rgr";		// Plecaki SF

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
_baseUniform = ["rhsgref_uniform_woodland"];
_baseHelmet = ["rhsusf_ach_helmet_M81"];
_baseGlasses = [];

// Kamizelki
_lightRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_light","rhsusf_spc_mg","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_squadleader"];
_mediumRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_light","rhsusf_spc_mg","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_squadleader"];
_heavyRig = ["rhsusf_spc_corpsman","rhsusf_spc_iar","rhsusf_spc_light","rhsusf_spc_mg","rhsusf_spc_patchless_radio","rhsusf_spc_rifleman","rhsusf_spc_squadleader"];

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
_crewHelmet = ["rhsusf_cvc_green_helmet"];
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

};

// ====================================================================================
// ====================================================================================
//EMD CASE STATEMENT		

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