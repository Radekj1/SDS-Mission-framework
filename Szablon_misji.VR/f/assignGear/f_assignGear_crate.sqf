// ====================================================================================
// S.D.S Assign Crate Script - [V-2.0 beta | 19.01.2020]
// ====================================================================================

// CARGO: CAR - Przykład inicjalizacji: ["v_car",this,"blu_f"] call f_fnc_assignGear
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 10];
		_unit addMagazineCargoGlobal [_riflemag_tr, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 5];
		_unit addMagazineCargoGlobal [_smgmag, 10];
		_unit addMagazineCargoGlobal [_smgmag_tr, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 10];
		_unit addMagazineCargoGlobal [_glriflemag_tr, 5];
		_unit addMagazineCargoGlobal [_DMriflemag, 10];
		_unit addMagazineCargoGlobal [_glmag, 30];
		_unit addMagazineCargoGlobal [_glsmokewhite, 15];
		_unit addMagazineCargoGlobal [_glsmokegreen, 15];
		_unit addMagazineCargoGlobal [_glsmokered, 15];
		_unit addMagazineCargoGlobal [_glsmokeblue, 15];
		_unit addMagazineCargoGlobal [_grenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 10];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 10];
		_unit addMagazineCargoGlobal [_smokegrenadered, 10];
		_unit addWeaponCargoGlobal [_RAT, 2];
		_unit addItemCargoGlobal [_bandage, 30];
		_unit addItemCargoGlobal [_personalAidKit, 2];
		_unit addItemCargoGlobal [_wirecutter, 1];
		_unit addItemCargoGlobal [_towRope, 1];
	};

// CARGO: TRUCK - Przykład inicjalizacji: ["v_tr",this,"blu_f"] call f_fnc_assignGear
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 15];
		_unit addMagazineCargoGlobal [_riflemag_tr, 10];
		_unit addMagazineCargoGlobal [_carbinemag, 15];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 10];
		_unit addMagazineCargoGlobal [_smgmag, 15];
		_unit addMagazineCargoGlobal [_smgmag_tr, 10];
		_unit addMagazineCargoGlobal [_glriflemag, 15];
		_unit addMagazineCargoGlobal [_glriflemag_tr, 10];
		_unit addMagazineCargoGlobal [_DMriflemag, 15];
		_unit addMagazineCargoGlobal [_glmag, 30];
		_unit addMagazineCargoGlobal [_glsmokewhite, 15];
		_unit addMagazineCargoGlobal [_glsmokegreen, 15];
		_unit addMagazineCargoGlobal [_glsmokered, 15];
		_unit addMagazineCargoGlobal [_glsmokeblue, 15];
		_unit addMagazineCargoGlobal [_grenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 10];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 10];
		_unit addMagazineCargoGlobal [_smokegrenadered, 10];
		_unit addWeaponCargoGlobal [_RAT, 5];
		_unit addItemCargoGlobal [_bandage, 50];
		_unit addItemCargoGlobal [_personalAidKit, 10];
		_unit addItemCargoGlobal [_wirecutter, 1];
		_unit addItemCargoGlobal [_towRope, 1];
	};

// CARGO: IFV - Przykład inicjalizacji: ["v_ifv",this,"blu_f"] call f_fnc_assignGear
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 10];
		_unit addMagazineCargoGlobal [_riflemag_tr, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 5];
		_unit addMagazineCargoGlobal [_smgmag, 10];
		_unit addMagazineCargoGlobal [_smgmag_tr, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 10];
		_unit addMagazineCargoGlobal [_glriflemag_tr, 5];
		_unit addMagazineCargoGlobal [_DMriflemag, 10];
		_unit addMagazineCargoGlobal [_glmag, 30];
		_unit addMagazineCargoGlobal [_glsmokewhite, 15];
		_unit addMagazineCargoGlobal [_glsmokegreen, 15];
		_unit addMagazineCargoGlobal [_glsmokered, 15];
		_unit addMagazineCargoGlobal [_glsmokeblue, 15];
		_unit addMagazineCargoGlobal [_grenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 10];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 10];
		_unit addMagazineCargoGlobal [_smokegrenadered, 10];
		_unit addWeaponCargoGlobal [_RAT, 2];
		_unit addItemCargoGlobal [_bandage, 30];
		_unit addItemCargoGlobal [_personalAidKit, 2];
		_unit addItemCargoGlobal [_wirecutter, 1];
		_unit addItemCargoGlobal [_toolkit, 1];
		_unit addItemCargoGlobal [_towRope, 1];
	};
	
// CARGO: LOGISTYKA - Przykład inicjalizacji: ["v_log",this,"blu_f"] call f_fnc_assignGear
	case "v_log":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_toolkit, 2];
		_unit addWeaponCargoGlobal [_mineDetector, 2];
		_unit addItemCargoGlobal [_wirecutter, 2];
		_unit addItemCargoGlobal [_saperka, 2];
		_unit addItemCargoGlobal [_mlotek, 2];
		_unit addMagazineCargoGlobal [_satche_small, 15];
		_unit addMagazineCargoGlobal [_satche_big, 10];
		_unit addMagazineCargoGlobal [_satche_extra_big, 5];
		_unit addMagazineCargoGlobal [_ATmine, 10];
		_unit addMagazineCargoGlobal [_APmine1, 10];
		_unit addItemCargoGlobal [_zapalnik_b, 2];
		_unit addItemCargoGlobal [_n_rozbraja, 2];
		_unit addItemCargoGlobal [_UAVbattery, 2];
		_unit addItemCargoGlobal [_AntenaAndMast, 1];
		_unit addItemCargoGlobal [_towRope, 2];
	};

// CARGO: LOGISTYKA - Przykład inicjalizacji: ["v_med",this,"blu_f"] call f_fnc_assignGear
	case "v_med":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_bandage, 200];
		_unit addItemCargoGlobal [_bandage_elastic, 200];
		_unit addItemCargoGlobal [_bandage_packing, 200];
		_unit addItemCargoGlobal [_bandage_quikclot, 200];
		_unit addItemCargoGlobal [_morphine, 100];
		_unit addItemCargoGlobal [_painkiller, 100];
		_unit addItemCargoGlobal [_epinephrine, 100];
		_unit addItemCargoGlobal [_adenosine, 100];
		_unit addItemCargoGlobal [_plasma_m, 50];
		_unit addItemCargoGlobal [_splint, 30];
		_unit addItemCargoGlobal [_tourniquet, 30];
		//_unit addItemCargoGlobal [_larynx, 50];
		//_unit addItemCargoGlobal [_chestSeal, 25];
		_unit addItemCargoGlobal [_personalAidKit, 25];
		_unit addItemCargoGlobal [_surgicalKit, 2];
		_unit addItemCargoGlobal [_AEDX, 2];
		//_unit addItemCargoGlobal [_accuvac, 2];
		//_unit addItemCargoGlobal [_Pulseoximeter, 2];
		_unit addItemCargoGlobal [_worek, 25];
		_unit addItemCargoGlobal [_towRope, 1];
	};

// CARGO: LOGISTYKA - Przykład inicjalizacji: ["v_ammo",this,"blu_f"] call f_fnc_assignGear
	case "v_ammo":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 100];
		_unit addMagazineCargoGlobal [_riflemag_tr, 50];
		_unit addMagazineCargoGlobal [_glriflemag, 100];
		_unit addMagazineCargoGlobal [_glriflemag_tr, 50];
		_unit addMagazineCargoGlobal [_armag, 50];
		_unit addMagazineCargoGlobal [_ARmag_tr, 25];
		_unit addMagazineCargoGlobal [_carbinemag, 100];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 50];
		_unit addMagazineCargoGlobal [_smgmag, 50];
		_unit addMagazineCargoGlobal [_smgmag_tr, 20];
		_unit addMagazineCargoGlobal [_DMriflemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 100];
		_unit addMagazineCargoGlobal [_glsmokewhite,20];
		_unit addMagazineCargoGlobal [_glsmokegreen,20];
		_unit addMagazineCargoGlobal [_glsmokered,20];
		_unit addMagazineCargoGlobal [_glsmokeblue,20];
		_unit addWeaponCargoGlobal [_RAT, 20];
		_unit addMagazineCargoGlobal [_grenade, 50];
		_unit addMagazineCargoGlobal [_smokegrenade, 20];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addMagazineCargoGlobal [_smokegrenadered, 20];
		_unit addItemCargoGlobal [_bandage, 150];
		_unit addItemCargoGlobal [_towRope, 1];
	};

// CARGO: Heli - Przykład inicjalizacji: ["v_heli",this,"blu_f"] call f_fnc_assignGear
	case "v_heli":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
        _unit addItemCargoGlobal [_heliRope, 6];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 5];
		_unit addMagazineCargoGlobal [_flaregreen, 5];
	};

// CRATE: Small ammo crate - should be enough for one fireteam
	case "crate_small":

	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 30];
		_unit addMagazineCargoGlobal [_riflemag_tr, 15];
		_unit addMagazineCargoGlobal [_glriflemag, 30];
		_unit addMagazineCargoGlobal [_glriflemag_tr, 15];
		_unit addMagazineCargoGlobal [_armag, 15];
		_unit addMagazineCargoGlobal [_ARmag_tr, 10];
		_unit addMagazineCargoGlobal [_carbinemag, 30];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 15];
		_unit addMagazineCargoGlobal [_smgmag, 20];
		_unit addMagazineCargoGlobal [_smgmag_tr, 10];
		_unit addMagazineCargoGlobal [_DMriflemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 30];
		_unit addMagazineCargoGlobal [_glsmokewhite,10];
		_unit addMagazineCargoGlobal [_glsmokegreen,10];
		_unit addMagazineCargoGlobal [_glsmokered,10];
		_unit addMagazineCargoGlobal [_glsmokeblue,10];
		_unit addWeaponCargoGlobal [_RAT, 10];
		_unit addMagazineCargoGlobal [_grenade, 15];
		_unit addMagazineCargoGlobal [_smokegrenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 10];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 10];
		_unit addMagazineCargoGlobal [_smokegrenadered, 10];
		_unit addItemCargoGlobal [_bandage, 50];
		_unit addItemCargoGlobal [_armorPlate, 10];
		_unit addItemCargoGlobal [_sBarrel, 10];
	};

// CRATE: Medium ammo crate = should be enough for one squad
	case "crate_med":

	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 60];
		_unit addMagazineCargoGlobal [_riflemag_tr, 30];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_glriflemag_tr, 30];
		_unit addMagazineCargoGlobal [_armag, 30];
		_unit addMagazineCargoGlobal [_ARmag_tr, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 30];
		_unit addMagazineCargoGlobal [_smgmag, 30];
		_unit addMagazineCargoGlobal [_smgmag_tr, 15];
		_unit addMagazineCargoGlobal [_DMriflemag, 30];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_glsmokewhite,15];
		_unit addMagazineCargoGlobal [_glsmokegreen,15];
		_unit addMagazineCargoGlobal [_glsmokered,15];
		_unit addMagazineCargoGlobal [_glsmokeblue,15];
		_unit addWeaponCargoGlobal [_RAT, 15];
		_unit addMagazineCargoGlobal [_grenade, 30];
		_unit addMagazineCargoGlobal [_smokegrenade, 15];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 15];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 15];
		_unit addMagazineCargoGlobal [_smokegrenadered, 15];
		_unit addItemCargoGlobal [_bandage, 100];
		_unit addItemCargoGlobal [_armorPlate, 25];
		_unit addItemCargoGlobal [_sBarrel, 25];
	};

// CRATE: Big ammo crate = should be enoug for platoon to rearm
	case "crate_large":
	
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 100];
		_unit addMagazineCargoGlobal [_riflemag_tr, 50];
		_unit addMagazineCargoGlobal [_glriflemag, 100];
		_unit addMagazineCargoGlobal [_glriflemag_tr, 50];
		_unit addMagazineCargoGlobal [_armag, 50];
		_unit addMagazineCargoGlobal [_ARmag_tr, 25];
		_unit addMagazineCargoGlobal [_carbinemag, 100];
		_unit addMagazineCargoGlobal [_carbinemag_tr, 50];
		_unit addMagazineCargoGlobal [_smgmag, 50];
		_unit addMagazineCargoGlobal [_smgmag_tr, 20];
		_unit addMagazineCargoGlobal [_DMriflemag, 50];
		_unit addMagazineCargoGlobal [_glmag, 100];
		_unit addMagazineCargoGlobal [_glsmokewhite,20];
		_unit addMagazineCargoGlobal [_glsmokegreen,20];
		_unit addMagazineCargoGlobal [_glsmokered,20];
		_unit addMagazineCargoGlobal [_glsmokeblue,20];
		_unit addWeaponCargoGlobal [_RAT, 20];
		_unit addMagazineCargoGlobal [_grenade, 50];
		_unit addMagazineCargoGlobal [_smokegrenade, 20];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 20];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addMagazineCargoGlobal [_smokegrenadered, 20];
		_unit addItemCargoGlobal [_bandage, 150];
		_unit addItemCargoGlobal [_armorPlate, 80];
		_unit addItemCargoGlobal [_sBarrel, 80];
	};

// CRATE: Mała skrzynka, zasoby medyczne
	case "crate_smallmedical":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_bandage, 100];
		_unit addItemCargoGlobal [_bandage_elastic, 100];
		_unit addItemCargoGlobal [_bandage_packing, 100];
		_unit addItemCargoGlobal [_bandage_quikclot, 100];
		_unit addItemCargoGlobal [_morphine, 50];
		_unit addItemCargoGlobal [_painkiller, 50];
		_unit addItemCargoGlobal [_epinephrine, 50];
		_unit addItemCargoGlobal [_adenosine, 50];
		_unit addItemCargoGlobal [_plasma_m, 25];
		_unit addItemCargoGlobal [_splint, 15];
		_unit addItemCargoGlobal [_tourniquet, 15];
		//_unit addItemCargoGlobal [_larynx, 20];
		//_unit addItemCargoGlobal [_chestSeal, 15];
		_unit addItemCargoGlobal [_personalAidKit, 15];
	};

// CRATE: Duża skrzynka, zasoby medyczne
	case "crate_bigmedical":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_bandage, 200];
		_unit addItemCargoGlobal [_bandage_elastic, 200];
		_unit addItemCargoGlobal [_bandage_packing, 200];
		_unit addItemCargoGlobal [_bandage_quikclot, 200];
		_unit addItemCargoGlobal [_morphine, 100];
		_unit addItemCargoGlobal [_painkiller, 100];
		_unit addItemCargoGlobal [_epinephrine, 100];
		_unit addItemCargoGlobal [_adenosine, 100];
		_unit addItemCargoGlobal [_plasma_m, 50];
		_unit addItemCargoGlobal [_splint, 30];
		_unit addItemCargoGlobal [_tourniquet, 30];
		//_unit addItemCargoGlobal [_larynx, 50];
		//_unit addItemCargoGlobal [_chestSeal, 25];
		_unit addItemCargoGlobal [_personalAidKit, 25];
	};

//SKRZYNIE FUNKCYJNE [MMG, MAT, SAM, HAT]

// CRATE: Skrzynka, zasoby MMG
	case "crate_mmg":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_MMGmag, 30];
		_unit addMagazineCargoGlobal [_MMGmag_tr, 15];
	};

// CRATE: Skrzynka, zasoby MAT
	case "crate_mat":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_MATmag1, 15];
		_unit addMagazineCargoGlobal [_MATmag1, 15];
	};	

// CRATE: Skrzynka, zasoby SAM
	case "crate_sam":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_SAMmag, 15];
		//_unit addWeaponCargoGlobal [_SAMmag, 15];	// If AA is one use only, use this in stead of above
	};
	
// CRATE: Skrzynka, zasoby HAT
	case "crate_hat":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_HATmag1, 15];
	};

// CRATE: Skrzynka, zasoby HAT statyczny
	case "crate_hat_alt":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_spgOG9,15];
		_unit addItemCargoGlobal [_spgPG9,15];
		_unit addItemCargoGlobal [_towTube,15];
		_unit addItemCargoGlobal [_tow2Tube,15];
	};

// CRATE: Skrzynka, zasoby HMG
	case "crate_hmg":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_HmagRed,15];
		_unit addItemCargoGlobal [_Hmag,15];
	};

// CRATE: Skrzynka, zasoby HMG
	case "crate_gmg":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_20mmGMG,15];
		_unit addItemCargoGlobal [_mk19GMG,15];
		_unit addItemCargoGlobal [_AGS30GMG,15];
	};
	
// CRATE: Skrzynka, zasoby SF
	case "crate_spec":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemagSF, 15];
		_unit addMagazineCargoGlobal [_riflemag_trSF, 10];
		_unit addMagazineCargoGlobal [_glriflemagSF, 15];
		_unit addMagazineCargoGlobal [_glriflemag_trSF, 10];
		_unit addMagazineCargoGlobal [_ARmagSF, 10];
		_unit addMagazineCargoGlobal [_ARmag_trSF, 5];
		_unit addMagazineCargoGlobal [_specialmagSF, 15];
		_unit addMagazineCargoGlobal [_specialmag_trSF, 10];
		_unit addMagazineCargoGlobal [_SFpistolmag, 10];
		_unit addMagazineCargoGlobal [_glmag, 15];
		_unit addMagazineCargoGlobal [_glsmokewhite,10];
		_unit addMagazineCargoGlobal [_glsmokegreen,10];
		_unit addMagazineCargoGlobal [_glsmokered,10];
		_unit addMagazineCargoGlobal [_glsmokeblue,10];
		_unit addWeaponCargoGlobal [_RAT, 5];
		_unit addMagazineCargoGlobal [_grenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 10];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 10];
		_unit addMagazineCargoGlobal [_smokegrenadered, 10];
		_unit addMagazineCargoGlobal [_flashbang, 10];
		_unit addMagazineCargoGlobal [_igrenade, 10];
		_unit addItemCargoGlobal [_handcuffs, 10];
		_unit addItemCargoGlobal [_huntIR_tab, 2];
		_unit addItemCargoGlobal [_spottingScope, 2];
		_unit addItemCargoGlobal [_bandage, 50];
		_unit addItemCargoGlobal [_bandage_elastic, 50];
		_unit addItemCargoGlobal [_bandage_packing, 50];
		_unit addItemCargoGlobal [_bandage_quikclot, 50];
		_unit addItemCargoGlobal [_morphine, 20];
		_unit addItemCargoGlobal [_painkiller, 20];
		_unit addItemCargoGlobal [_epinephrine, 20];
		_unit addItemCargoGlobal [_adenosine, 20];
		_unit addItemCargoGlobal [_plasma_m, 15];
		_unit addItemCargoGlobal [_splint, 10];
		_unit addItemCargoGlobal [_tourniquet, 10];
		//_unit addItemCargoGlobal [_larynx, 15];
		//_unit addItemCargoGlobal [_chestSeal, 10];
		_unit addItemCargoGlobal [_personalAidKit, 10];
		_unit addMagazineCargoGlobal [_satche_small, 15];		
		_unit addMagazineCargoGlobal [_satche_big, 10];		
		_unit addMagazineCargoGlobal [_satche_extra_big, 5];
		_unit addItemCargoGlobal [_armorPlate, 10];		
	};

// CRATE: Skrzynka, zasoby NOCNE
	case "crate_night_small":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_glflarewhite,25];
		_unit addMagazineCargoGlobal [_glflarered,25];
		_unit addMagazineCargoGlobal [_glflareyellow,25];
		_unit addMagazineCargoGlobal [_glflaregreen,25];		
		_unit addMagazineCargoGlobal [_flarewhite,25];
		_unit addMagazineCargoGlobal [_flarered,25];
		_unit addMagazineCargoGlobal [_flareyellow,25];
		_unit addMagazineCargoGlobal [_flaregreen,25];		
		_unit addMagazineCargoGlobal [_chemgreen,25];
		_unit addMagazineCargoGlobal [_chemred,25];
		_unit addMagazineCargoGlobal [_chemyellow,25];
		_unit addMagazineCargoGlobal [_chemblue,25];
		_unit addMagazineCargoGlobal [_IRgrenade,25];
		_unit addItemCargoGlobal [_IRstrobe,25];		
	};
	
// CRATE: Skrzynka, zasoby NOCNE
	case "crate_night_big":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_glflarewhite,80];
		_unit addMagazineCargoGlobal [_glflarered,80];
		_unit addMagazineCargoGlobal [_glflareyellow,80];
		_unit addMagazineCargoGlobal [_glflaregreen,80];		
		_unit addMagazineCargoGlobal [_flarewhite,80];
		_unit addMagazineCargoGlobal [_flarered,80];
		_unit addMagazineCargoGlobal [_flareyellow,80];
		_unit addMagazineCargoGlobal [_flaregreen,80];		
		_unit addMagazineCargoGlobal [_chemgreen,80];
		_unit addMagazineCargoGlobal [_chemred,80];
		_unit addMagazineCargoGlobal [_chemyellow,80];
		_unit addMagazineCargoGlobal [_chemblue,80];
		_unit addMagazineCargoGlobal [_IRgrenade,80];		
		_unit addItemCargoGlobal [_IRstrobe,80];		
	};
	
// CRATE: Skrzynka ładunki
	case "crate_explo":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_satche_small,30];		
		_unit addMagazineCargoGlobal [_satche_big,20];		
		_unit addMagazineCargoGlobal [_satche_extra_big,10];		
		_unit addItemCargoGlobal [_zapalnik_b,2];
		_unit addItemCargoGlobal [_n_rozbraja,2];
		_unit addWeaponCargoGlobal [_mineDetector,2];
		_unit addItemCargoGlobal [_toolkit,2];
	};	
	
// CRATE: Skrzynka miny
	case "crate_mines":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_ATmine,30];		
		_unit addMagazineCargoGlobal [_APmine1,20];		
		_unit addMagazineCargoGlobal [_APmine2,10];		
		_unit addItemCargoGlobal [_zapalnik_b,2];
		_unit addItemCargoGlobal [_n_rozbraja,2];
		_unit addWeaponCargoGlobal [_mineDetector,2];
		_unit addItemCargoGlobal [_toolkit,2];
	};

// CRATE: Radios
	case "crate_radio":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_radioSR,15];
		_unit addItemCargoGlobal [_radioMR,10];
		_unit addItemCargoGlobal [_radioLR,5];
		_unit addItemCargoGlobal [_antena,3];
		_unit addItemCargoGlobal [_mast,3];
	};

// CRATE: Mortar
	case "crate_mtr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_mtrHE,20];
		_unit addMagazineCargoGlobal [_mtrSmoke,10];
		_unit addMagazineCargoGlobal [_mtrFlare,10];
		_unit addItemCargoGlobal [_maptools,1];
		_unit addItemCargoGlobal [_tableMTR,1];
	};

// CRATE: Others
	case "crate_misc":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_earplugs,15];
		_unit addItemCargoGlobal [_handcuffs,15];
		_unit addItemCargoGlobal [_sprayRED,15];
		_unit addItemCargoGlobal [_sprayBLUE,15];
		_unit addItemCargoGlobal [_sprayGREEN,15];
		_unit addItemCargoGlobal [_sprayBLACK,15];
		_unit addItemCargoGlobal [_UAVbattery,15];
		_unit addItemCargoGlobal [_maptools,5];
		_unit addItemCargoGlobal [_tableMTR,5];
		_unit addItemCargoGlobal [_tableART,5];
	};