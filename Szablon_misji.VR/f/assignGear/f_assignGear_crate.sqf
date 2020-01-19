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
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_grenade, 3];
		_unit addMagazineCargoGlobal [_smokegrenade, 3];
		_unit addWeaponCargoGlobal [_RAT, 1];
		_unit addItemCargoGlobal [_bandage, 5];
		_unit addItemCargoGlobal [_morphine, 2];
        _unit addItemCargoGlobal [_epinephrine, 2];
		_unit addItemCargoGlobal [_personalAidKit, 2];
		_unit addItemCargoGlobal [_wirecutter, 1];
	};

// CARGO: TRUCK - Przykład inicjalizacji: ["v_tr",this,"blu_f"] call f_fnc_assignGear
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 10];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_glriflemag, 10];
		_unit addMagazineCargoGlobal [_glmag, 10];
		_unit addMagazineCargoGlobal [_grenade, 5];
		_unit addMagazineCargoGlobal [_smokegrenade, 5];
		_unit addWeaponCargoGlobal [_RAT, 2];
		_unit addItemCargoGlobal [_bandage, 15];
		_unit addItemCargoGlobal [_morphine, 5];
        _unit addItemCargoGlobal [_epinephrine, 5];
		_unit addItemCargoGlobal [_personalAidKit, 3];
		_unit addItemCargoGlobal [_wirecutter, 1];
	};

// CARGO: IFV - Przykład inicjalizacji: ["v_ifv",this,"blu_f"] call f_fnc_assignGear
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 15];
		_unit addMagazineCargoGlobal [_glriflemag, 15];
		_unit addMagazineCargoGlobal [_glmag, 15];
		_unit addMagazineCargoGlobal [_grenade, 10];
		_unit addMagazineCargoGlobal [_smokegrenade, 10];
		_unit addWeaponCargoGlobal [_RAT, 3];
		_unit addItemCargoGlobal [_bandage, 20];
		_unit addItemCargoGlobal [_morphine, 10];
        _unit addItemCargoGlobal [_epinephrine, 10];
		_unit addItemCargoGlobal [_personalAidKit, 5];
		_unit addItemCargoGlobal [_wirecutter, 1];	
	};
	
// CARGO: LOGISTYKa - Przykład inicjalizacji: ["v_log",this,"blu_f"] call f_fnc_assignGear
	case "v_log":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_toolkit, 2];
		_unit addItemCargoGlobal [_wirecutter, 2];
		_unit addItemCargoGlobal [_saperka, 2];	
		_unit addMagazineCargoGlobal [_satche_small, 10];
		_unit addMagazineCargoGlobal [_satche_big, 8];
		_unit addMagazineCargoGlobal [_satche_extra_big, 8];
		_unit addMagazineCargoGlobal [_ATmine, 10];
		_unit addMagazineCargoGlobal [_APmine1, 10];
		_unit addItemCargoGlobal [_zapalnik_b, 2];
		_unit addItemCargoGlobal [_n_rozbraja, 2];
		_unit addWeaponCargoGlobal [_mineDetector, 2];
	};

// CARGO: LOGISTYKa - Przykład inicjalizacji: ["v_med",this,"blu_f"] call f_fnc_assignGear
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
        _unit addItemCargoGlobal [_epinephrine, 100];
		_unit addItemCargoGlobal [_adenosine, 100];
        _unit addItemCargoGlobal [_blood_m, 50];
		_unit addItemCargoGlobal [_splint, 30];
		_unit addItemCargoGlobal [_tourniquet, 30];
		_unit addItemCargoGlobal [_worek, 25];
		_unit addItemCargoGlobal [_personalAidKit, 25];
		_unit addItemCargoGlobal [_surgicalKit, 2];
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
		_unit addMagazineCargoGlobal [_riflemag, 5];
		_unit addMagazineCargoGlobal [_glriflemag, 5];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_carbinemag, 5];
		_unit addMagazineCargoGlobal [_glmag, 5];
		_unit addMagazineCargoGlobal [_smgmag, 5];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
		_unit addWeaponCargoGlobal [_RAT, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 2];
		_unit addItemCargoGlobal [_bandage, 25];
		_unit addItemCargoGlobal [_IRstrobe, 30];
	};

// CRATE: Medium ammo crate = should be enough for one squad
	case "crate_med":

	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_armag, 15];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_glmag, 20];
		_unit addMagazineCargoGlobal [_smgmag, 20];
		_unit addMagazineCargoGlobal [_glsmokewhite,15];
		_unit addWeaponCargoGlobal [_RAT, 6];
		_unit addMagazineCargoGlobal [_grenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenade, 25];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 6];
		_unit addItemCargoGlobal [_bandage, 50];
	};

// CRATE: Big ammo crate = should be enoug for platoon to rearm
	case "crate_large":
	
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_riflemag, 45];
		_unit addMagazineCargoGlobal [_glriflemag, 60];
		_unit addMagazineCargoGlobal [_armag, 45];
		_unit addMagazineCargoGlobal [_carbinemag, 60];
		_unit addMagazineCargoGlobal [_glmag, 60];
		_unit addMagazineCargoGlobal [_smgmag, 45];
		_unit addMagazineCargoGlobal [_glsmokewhite,50];
		_unit addWeaponCargoGlobal [_RAT, 20];
		_unit addMagazineCargoGlobal [_grenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenade, 75];
		_unit addMagazineCargoGlobal [_smokegrenadeblue, 20];
		_unit addItemCargoGlobal [_bandage, 150];
	};

// CRATE: Mała skrzynka, zasoby medyczne
	case "crate_smallmedical":

	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
        _unit addItemCargoGlobal [_bandage, 50];
		_unit addItemCargoGlobal [_bandage_elastic, 50];
		_unit addItemCargoGlobal [_bandage_packing, 50];
		_unit addItemCargoGlobal [_bandage_quikclot, 50];
        _unit addItemCargoGlobal [_morphine, 20];
        _unit addItemCargoGlobal [_epinephrine, 20];
		_unit addItemCargoGlobal [_adenosine, 20];
        _unit addItemCargoGlobal [_blood_m, 10];
		_unit addItemCargoGlobal [_splint, 15];
		_unit addItemCargoGlobal [_tourniquet, 15];
		_unit addItemCargoGlobal [_personalAidKit, 8];
	};

// CRATE: Duża skrzynka, zasoby medyczne
	case "crate_bigmedical":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
        _unit addItemCargoGlobal [_bandage, 400];
		_unit addItemCargoGlobal [_bandage_elastic, 400];
		_unit addItemCargoGlobal [_bandage_packing, 400];
		_unit addItemCargoGlobal [_bandage_quikclot, 400];
        _unit addItemCargoGlobal [_morphine, 200];
        _unit addItemCargoGlobal [_epinephrine, 200];
		_unit addItemCargoGlobal [_adenosine, 200];
        _unit addItemCargoGlobal [_blood_m, 100];
		_unit addItemCargoGlobal [_splint, 60];
		_unit addItemCargoGlobal [_tourniquet, 60];
		_unit addItemCargoGlobal [_worek, 50];
		_unit addItemCargoGlobal [_personalAidKit, 50];
};


//SKRZYNIE FUNKCYJNE [MMG, MAT, SAM, HAT]

// CRATE: Skrzynka, zasoby MMG
	case "crate_mmg":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_MMGmag, 10];
		_unit addMagazineCargoGlobal [_MMGmag_tr, 10];
	};

// CRATE: Skrzynka, zasoby MAT
	case "crate_mat":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_MATmag1, 8];
	};	

// CRATE: Skrzynka, zasoby SAM
	case "crate_sam":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_SAMmag, 8];
		
	};
	
// CRATE: Skrzynka, zasoby HAT
	case "crate_hat":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_HATmag1, 5];
		
	};
	
// CRATE: Skrzynka, zasoby NOCNE
	case "crate_night_small":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_glflarewhite,20];
		_unit addMagazineCargoGlobal [_glflarered,20];
		_unit addMagazineCargoGlobal [_glflareyellow,20];
		_unit addMagazineCargoGlobal [_glflaregreen,20];		
		_unit addMagazineCargoGlobal [_flarewhite,20];
		_unit addMagazineCargoGlobal [_flarered,20];
		_unit addMagazineCargoGlobal [_flareyellow,20];
		_unit addMagazineCargoGlobal [_flaregreen,20];		
		_unit addMagazineCargoGlobal [_chemgreen,20];
		_unit addMagazineCargoGlobal [_chemred,20];
		_unit addMagazineCargoGlobal [_chemyellow,20];
		_unit addMagazineCargoGlobal [_chemblue,20];		
		_unit addItemCargoGlobal [_IRstrobe,20];	
				
	};
	
// CRATE: Skrzynka, zasoby NOCNE
	case "crate_night_big":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_glflarewhite,40];
		_unit addMagazineCargoGlobal [_glflarered,40];
		_unit addMagazineCargoGlobal [_glflareyellow,40];
		_unit addMagazineCargoGlobal [_glflaregreen,40];		
		_unit addMagazineCargoGlobal [_flarewhite,40];
		_unit addMagazineCargoGlobal [_flarered,40];
		_unit addMagazineCargoGlobal [_flareyellow,40];
		_unit addMagazineCargoGlobal [_flaregreen,40];		
		_unit addMagazineCargoGlobal [_chemgreen,40];
		_unit addMagazineCargoGlobal [_chemred,40];
		_unit addMagazineCargoGlobal [_chemyellow,40];
		_unit addMagazineCargoGlobal [_chemblue,40];		
		_unit addItemCargoGlobal [_IRstrobe,40];
				
	};
	
// CRATE: Skrzynka mała, ładunki
	case "crate_small_explo":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_satche_small,10];		
		_unit addMagazineCargoGlobal [_satche_big,6];		
		_unit addMagazineCargoGlobal [_satche_extra_big,4];		
		_unit addItemCargoGlobal [_zapalnik_b,3];
		_unit addItemCargoGlobal [_n_rozbraja,3];
				
	};	
	
// CRATE: Skrzynka duża, ładunki
	case "crate_large_explo":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addMagazineCargoGlobal [_satche_small,30];		
		_unit addMagazineCargoGlobal [_satche_big,20];		
		_unit addMagazineCargoGlobal [_satche_extra_big,10];		
		_unit addItemCargoGlobal [_zapalnik_b,6];
		_unit addItemCargoGlobal [_n_rozbraja,6];
		_unit addWeaponCargoGlobal [_mineDetector,1];
		_unit addItemCargoGlobal [_toolkit,1];
				
	};

// CRATE: Radios
	case "crate_radio":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		_unit addItemCargoGlobal [_radioSR,15];
		_unit addItemCargoGlobal [_radioMR,5];
		_unit addItemCargoGlobal [_radioLR,3];
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
		_unit addMagazineCargoGlobal [_mtrHE,15];
		_unit addMagazineCargoGlobal [_mtrSmoke,15];
		_unit addMagazineCargoGlobal [_mtrFlare,15];
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
		_unit addItemCargoGlobal [_huntIR_tab,15];
		_unit addItemCargoGlobal [_Chemlight_Shield,15];
		_unit addItemCargoGlobal [_spray,15];
		_unit addItemCargoGlobal [_UAVbattery,15];
		_unit addItemCargoGlobal [_maptools,15];
		_unit addItemCargoGlobal [_tableMTR,15];
		_unit addItemCargoGlobal [_tableART,15];
		_unit addItemCargoGlobal [_RangeCard,15];
		_unit addItemCargoGlobal [_cell,15];
		_unit addItemCargoGlobal [_Dswitch,15];
		_unit addMagazineCargoGlobal [_mgrenade,15];
		_unit addMagazineCargoGlobal [_mgrenade9,15];
		_unit addMagazineCargoGlobal [_igrenade,15];
		_unit addMagazineCargoGlobal [_huntIR,15];
	};