// ====================================================================================
// S.D.S Assign Gear Script - [V-2.0 beta | 15.12.2019]
// ====================================================================================

//	SPIS TRESCI
/*

	1. NATO 

*/
// ====================================================================================
	_loadout_faction_player = f_param_player_faction_Blufor;
// ====================================================================================

//*************************************************************************************
// Universal items definitions
//*************************************************************************************

// ====================================================================================
// Medical items

// Default Arma3 stuff - not used
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Basic medical equipment
_personalAidKit = "ACE_personalAidKit";		// personal Aid Kit
_surgicalKit = "ACE_surgicalKit";			// surgical Kit
_AED = "kat_AED";
_AEDX = "kat_X_AED";
_Pulseoximeter = "kat_Pulseoximeter";
_transfuseKit = "KAT_Empty_bloodIV_500";
_iv16 = "kat_IV_16";
_ioFast = "kat_IO_FAST";
_splint = "ACE_splint";						// splint

// Bandages
_bandage = "ACE_fieldDressing";				// field Dressing
_bandage_elastic = "ACE_elasticBandage";	// elastic Bandage
_bandage_packing = "ACE_packingBandage";	// packing Bandage
_bandage_quikclot = "ACE_quikclot";			// quikclot
_tourniquet ="ACE_tourniquet";				// tourniquet

// Airway
_AATKit = "kat_aatKit";						// needle decompresion and fluid draining
_ncdKit = "kat_ncdKit";						// needle decompresion
_chestSeal ="kat_chestSeal";				// dressing used to treat pneumophorax
_guedel = "kat_guedel";						// prevents obstrucions (no occlusions)
_larynx = "kat_larynx";						// prevents obstrucions and occlusions
_accuvac = "kat_accuvac";					// removes occlusions
_stethoscope = "kat_stethoscope";			// used for diagnosis

// Surgery eq
_lorazepam = "kat_lorazepam";				// sedates patient, decrase blood presure, 33% to cause bradycardia
_etomidate = "kat_etomidate";				// pain suppers ? decrase hear rate (t45s/10)
_scalpel = "kat_scalpel";
_retractor = "kat_retractor";
_clamp = "kat_clamp";
_boneplate = "kat_plate";
_flumazenil = "kat_flumazenil";				// remove sedatation (t1/3)
_Carbonate = "kat_Carbonate";				// increase hear rate, wake up patient (t30s/10)
_vacuum = "kat_vacuum";						// PAK for body part (used in surgery)

// Drugs
// Painkillers
_morphine = "ACE_morphine";					// pain suppers 0.8 decrease heart rate, decrease blood presure (t30/4)
_fentanyl = "kat_fentanyl";					// pain suppers 1.0 decrease heart rate, decrease blood presure (t15/2)
_nalbuphine = "kat_nalbuphine";				// pain suppers 0.6 decrease heart rate, decrease blood presure (t15/4)
_ketamine = "kat_ketamine";					// pain suppers 0.8 increase heart rate, increase blood presure (t15/4)
_painkiller = "kat_Painkiller";				// pain suppers 0.3 increase heart rate, decrease blood presure (t10/10)

// Cardiac arrest
_amiodarone = "kat_amiodarone";				//used to fight cardiac arrest
_lidocaine = "kat_lidocaine";				//used to fight cardiac arrest

_epinephrine = "ACE_epinephrine";			// boost wake up chance, increase hear rate, increase blood presure (t2/10)
_adenosine = "ACE_adenosine";				// decrease hear rate, decrease blood presure (t2/6)
//_atropine = "ACE_atropine";				// increase hear rate, treat bradycardia (t2/4)
_atropine = "kat_atropine";					// increase hear rate, treat bradycardia (t2/4)
_naloxone = "kat_naloxone";					// fight opium overdose 1-1 ratio
_nitroglycerin = "kat_nitroglycerin";		// speed up transfuion and bleeding, increase hear rate, decrase blood presure (t6/12)
_norepinephrine = "kat_norepinephrine";		// slows down transfuion and bleeding, increase hear rate, increase blood presure (t6/12)
_phenylephrine = "kat_phenylephrine";		// slows down transfuion and bleeding++, decrease hear rate, increase blood presure (t6/12)
_TXA = "kat_TXA";							// improve cloth quality (cloths happen on its own)
_EACA = "kat_EACA";							// stiches wound eatch 6sec

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

// Oher
_worek = "ACE_bodyBag";						// body Bag
_hstrecher = "Attachable_Helistretcher";

// ====================================================================================
// Radios - ACRE2

// Radios
_radioSR = "ACRE_PRC343";
_radioMR = "ACRE_PRC152";
_radioLR = "ACRE_PRC117F";
//_radioLR = "ACRE_PRC77"; // early Cold War/WW2

// Antenas - dont have any usage in current ACRE 2 version
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
_IRgrenade = "B_IR_Grenade";

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
// Mortar Ammo

// Basic ammo
_mtrHE = "ACE_1Rnd_82mm_Mo_HE";
_mtrSmoke = "ACE_1Rnd_82mm_Mo_Smoke";
_mtrFlare = "ACE_1Rnd_82mm_Mo_Illum";

// Adv ammo - not used
_mtrHEg = "ACE_1Rnd_82mm_Mo_HE_Guided";
_mtrHElg = "ACE_1Rnd_82mm_Mo_HE_LaserGuided";

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
_lornetka = "Binocular";
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
_MRE2 = "ACE_MRE_ChickenTikkaMasala";
_MRE3 = "ACE_MRE_ChickenHerbDumplings";
_MRE4 = "ACE_MRE_CreamChickenSoup";
_MRE5 = "ACE_MRE_CreamTomatoSoup";
_MRE6 = "ACE_MRE_LambCurry";
_MRE7 = "ACE_MRE_MeatballsPasta";
_MRE8 = "ACE_MRE_SteakVegetables";
_MRER = ["ACE_MRE_BeefStew", "ACE_MRE_ChickenTikkaMasala", "ACE_MRE_ChickenHerbDumplings", "ACE_MRE_CreamChickenSoup", 
"ACE_MRE_CreamTomatoSoup", "ACE_MRE_LambCurry", "ACE_MRE_MeatballsPasta", "ACE_MRE_SteakVegetables"];

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
			#include "f_assignGear_nato_b.sqf";
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
		#include "f_assignGear_nato_builder.sqf";
};	

// ====================================================================================
// Add basic stuff for players	
Medical = {
	for "_p" from 1 to 4 do {_unit addItem _bandage;};		// Add 4 pieces of bandages
	for "_p" from 1 to 2 do {_unit addItem _tourniquet;};	// Add 2 pieces of bandages
	_unit addItem _painkiller;								// Add painkillers
	_unit addItem _epinephrine;								// Add Epi
	_unit linkItem "ItemMap";								// Add map - comment this out if You dont want units to have it
	_unit linkItem "ItemCompass";							// Add compas - comment this out if You dont want units to have it
	_unit addItem _radioSR;									// Add radio - comment this out if You dont want units to have it
	_unit linkItem "ItemWatch";								// Add watch - comment this out if You dont want units to have it
	_unit addItem _earplugs;								// Add earplugs
	_unit addItem _Canteen;									// Add canteen
	for "_p" from 1 to 2 do 
        {
        _pmrer = _MRER select floor (random (count _MRER)); 
        _MRER = _MRER - [_pmrer];
        _unit addItem _pmrer;
        };													// Add 2 pieces of MRE [change between 1-8]
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
			(unitBackpack _unit) addItemCargoGlobal [_chemblue,2];
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
			_unit addItem _IRstrobe;		// Adding IR strobe
			_unit addItem _IRstrobe;		// Adding IR strobe
			_unit addItem _latarka;			// Adding map flashlight
			(unitBackpack _unit) addItemCargoGlobal [_chemblue,2];
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

	//NATO
	case 1: 
	{
// Main weapond attachments

_attachIR = "acc_pointer_IR";	// Laser
_attachFl = "acc_flashlight";	// Flashlight
//_attachUni = "";				// Laser + Flashlight

_muzzle = "muzzle_snds_H";			// Silencer for basic weapon
_silencer = "muzzle_snds_65_TI_blk_F";		// Silencer for additional weapon (for SF etc.)
_silencerAlt = "muzzle_snds_338_black";

_scopeHolo = "optic_Holosight_blk_F";			// Basic scope
_scope4x = "optic_Hamr";			// Additional scope (for SF etc.)
_scopeDM = "optic_AMS";					// Sniper scope
_scopeSN = "optic_LRPS";

_grip = "bipod_01_F_blk";				// Bipod for basic weapon
_bipodAR = "bipod_01_F_blk";				// Bipod for additional weapon (for SF etc.)
_bipodDM = "bipod_01_F_blk";
_bipodSN = "bipod_01_F_blk";

// What addons should be added to eatch unit

_loadout_night_day = f_param_night_day_wyp;
if (_loadout_night_day == 0) then {					// Eatch unit will recive (if possible) one ot his sets of attachments
	_attachments = [_attachIR,_scopeHolo];		//For night
} 
else {
	_attachments = [_scopeHolo];		//For day
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

_rifle = "arifle_SPAR_02_blk_F"; 										// Basic weapon (its for most of basic units, like rifleman etc.)
_riflemag = "30Rnd_556x45_Stanag_red";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_glrifle = "arifle_SPAR_01_GL_blk_F";									// GL version (mostly for commanders but also for grenadiers)
_glriflemag = "30Rnd_556x45_Stanag_red";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";
_glmag = "1Rnd_HE_Grenade_shell";

_DMrifle = "arifle_SPAR_03_blk_F";											// Semi-auto rifle, for marksman
_DMriflemag = "20Rnd_762x51_Mag";
_DMriflemag_tr = "ACE_20Rnd_762x51_Mag_Tracer";

_carbine = "arifle_SPAR_01_blk_F";									// Light/short version (its for units with additional equipment, like medic etc.)
_carbinemag = "30Rnd_556x45_Stanag_red";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_smg = "SMG_05_F";												// PDW (its for crews, pilots - units that are not supposed to be fighting)
_smgmag = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";
_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";

_pistol = "hgun_P07_blk_F";												// Pistol (for everyone YAY!)
_pistolmag = "16Rnd_9x21_Mag";

_AR = "LMG_03_F";										// Light machinegun
_ARmag = "200Rnd_556x45_Box_Red_F";
_ARmag_tr = "200Rnd_556x45_Box_Tracer_Red_F";

_MMG = "MMG_02_black_F";											// Medium machinegun
_MMGmag = "130Rnd_338_Mag";
_MMGmag_tr = "130Rnd_338_Mag";

_HMGg = "ace_csw_staticM2ShieldCarry";											// Medium machinegun
_HMGag = "ace_csw_m3CarryTripod";
_HMGmag = "ace_csw_100Rnd_127x99_mag_red";

_RAT = "launch_NLAW_F";												// Light AT
_RATmag = "NLAW_F";													// comment out if AT is one use only

_MAT = "launch_MRAWS_sand_F";										// Medium anti tank launcher
_MATmag1 = "MRAWS_HEAT_F";											// Anit-tank round
_MATmag2 = "MRAWS_HE_F";											// HE or DP round
//_MAT_sight = "";
//_MATsptr = "";

_HAT = "launch_B_Titan_short_F";									// Heavy anti tank launcher	
_HATmag1 = "Titan_AT";												// Anit-tank round
_HATmag2 = "Titan_AP";												// HE or DP round
_HAT_Mobile = true;		//true = HAT have launher and normal backpacks /false = HAT have static launcher they need to deploy

//This is for ACE version of static weapons where parts of weapnon are in leuncher slot instead of backpack
_HATg = "ace_csw_staticATCarry";									// used by Heavy AT gunner
_HATag = "ace_csw_m3CarryTripod";									// used by Heavy AT assistant gunner, comment out if not used
_HATaltMag1 = "Titan_AT";											// Anit-tank round
_HATaltMag2 = "Titan_AP";											// HE or DP round

_SAM = "launch_B_Titan_F";											// Surface-air launcher
_SAMmag = "Titan_AA";												// comment out if AA is one use only

_MRTg = "ace_csw_staticMortarCarry";								// Mortar tube
_MRTag = "ace_csw_carryMortarBaseplate";							// Mortar stand

_GMGg = "ace_csw_staticGMGCarry";									// GMG gun
_GMGag = "ace_csw_m3CarryTripodLow";								// GMG tripod
_GMGammo = "ace_csw_20Rnd_20mm_G_belt";

// ====================================================================================
// Special forces

_glrifleSF = "arifle_MX_GL_Black_F";								// SF GL rifle
_glriflemagSF = "30Rnd_65x39_caseless_black_mag";
_glriflemag_trSF = "30Rnd_65x39_caseless_black_mag_Tracer";

_ARSF = "arifle_MX_SW_Black_F";										// SF automatic rifle
_ARmagSF = "100Rnd_65x39_caseless_black_mag";
_ARmag_trSF = "100Rnd_65x39_caseless_black_mag_tracer";

_rifleSF = "arifle_MX_Black_F";									// SF rifle
_riflemagSF = "30Rnd_65x39_caseless_black_mag";
_riflemag_trSF = "30Rnd_65x39_caseless_black_mag_Tracer";

_specialSF = "arifle_MXM_Black_F";								// SF special rigle - can be marksman, CQB whatever is needed
_specialmagSF = "30Rnd_65x39_caseless_black_mag";
_specialmag_trSF = "30Rnd_65x39_caseless_black_mag_Tracer";

_SNrifle = "srifle_LRR_F";											// Sniper
_SNrifleMag = "7Rnd_408_Mag";

_SFpistol = "hgun_Pistol_heavy_01_green_F";								// SF pistol
_SFpistolmag = "11Rnd_45ACP_Mag";

// ====================================================================================
// Bagbacks

_parachute = "B_Parachute";
_bagmediumdiver =  "B_SCBA_01_F";				// Contact DLC

_bagsmall = "B_AssaultPack_mcamo";
_bagmedium = "B_Kitbag_mcamo";
_baglarge =  "B_Carryall_mcamo";
_bagextralarge = "B_Bergen_mcamo_F";			//APEX DLC

_bagMed = "B_AssaultPack_Kerry";						//For dedicated medical bagpacks

_bagRadio = "B_RadioBag_01_mtp_F";				//Contact DLC

_bagTL = "B_Kitbag_rgr";
_bagTLalt = "B_AssaultPack_khk";

_bagENG = "B_TacticalPack_mcamo";
_bagEODuav = "B_UGV_02_Demining_backpack_F";	//Contact DLC

_bagMAT = "B_Bergen_mcamo_F";					// Contact DLC, for dedicated AT bagpacks

_bagSF = "B_Kitbag_sgg";

_baguav = "B_UAV_01_backpack_F"; 
_bagSOFLAM = "B_Static_Designator_01_weapon_F";

// ====================================================================================
// Clothes etc.

// Basic uniform, helmet and glasses - random picked
_baseUniform = ["U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_vest"];
_baseHelmet = ["H_HelmetB", "H_HelmetB_camo", "H_HelmetB_sand"];
_baseGlasses = [];

// Vests
_leaderRig = ["V_PlateCarrierGL_rgr"]; // vest for Team Leaders and Squad Leaders, shoud have GL/radio
_lightRig = ["V_Chestrig_rgr"];	// vest given to heavy units - meaning they carry some heavy stuff on them
_mediumRig = ["V_PlateCarrier1_rgr"];	// general used vest for most inf
_mgRig = ["V_PlateCarrier2_rgr"];	// vest given to MG
_dmRig = ["V_Chestrig_rgr"];	// vest given to marksman
_glRig = ["V_Chestrig_rgr"];	// vest given to grenadier

// Some definitions

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
_specOp = ["sftl","sfm","sfat","sfs","sn","sp"];
_ghillie = [];

// Officer
_hqUniform = ["U_B_CombatUniform_mcam_vest"];
_hqHelmet = ["H_Beret_02"];
_hqRig = ["V_BandollierB_rgr"];
_hqGlasses = [];

// Medic
_medUniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_vest"];
_medHelmet = ["H_HelmetB", "H_HelmetB_camo", "H_HelmetB_sand"];
_medRig = ["V_PlateCarrier1_rgr"];
_medGlasses = [];

// Enginer/Logi
_engUniform = ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_vest"];
_engHelmet = ["H_HelmetB", "H_HelmetB_camo", "H_HelmetB_sand"];
_engRig = ["V_PlateCarrier1_rgr"];
_engGlasses = [];

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
_SFRig = ["V_PlateCarrier1_blk", "V_PlateCarrier2_blk"];
_SFGlasses = ["G_Balaclava_TI_G_blk_F"];

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