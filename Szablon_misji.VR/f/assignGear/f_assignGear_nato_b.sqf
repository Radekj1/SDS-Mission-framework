// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.
	

// BACKPACK: MEDIC
case "m":
{
	_unit addBackpack _bagMed;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_plasma_m, 4];
	(unitBackpack _unit) addItemCargoGlobal [_bandage, 15];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_elastic, 15];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_packing, 10];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_quikclot, 10];
	(unitBackpack _unit) addItemCargoGlobal [_tourniquet, 6];
	(unitBackpack _unit) addItemCargoGlobal [_nalbuphine, 10];
	(unitBackpack _unit) addItemCargoGlobal [_epinephrine, 10];
	(unitBackpack _unit) addItemCargoGlobal [_amiodarone, 5];
	(unitBackpack _unit) addItemCargoGlobal [_lidocaine, 10];
	(unitBackpack _unit) addItemCargoGlobal [_atropine, 5];
	(unitBackpack _unit) addItemCargoGlobal [_naloxone, 2];
	(unitBackpack _unit) addItemCargoGlobal [_splint, 6];
	(unitBackpack _unit) addItemCargoGlobal [_iv16, 10];
	(unitBackpack _unit) addItemCargoGlobal [_larynx, 4];
	(unitBackpack _unit) addItemCargoGlobal [_ioFast, 2];
	(unitBackpack _unit) addItemCargoGlobal [_TXA, 4];
	(unitBackpack _unit) addItemCargoGlobal [_Carbonate, 4];
	(unitBackpack _unit) addItemCargoGlobal [_AATKit, 4];
	(unitBackpack _unit) addItemCargoGlobal [_chestSeal, 4];
	(unitBackpack _unit) addItemCargoGlobal [_surgicalKit, 1];
	(unitBackpack _unit) addItemCargoGlobal [_personalAidKit, 2];
	(unitBackpack _unit) addItemCargoGlobal [_stethoscope, 1];
	(unitBackpack _unit) addItemCargoGlobal [_AED, 1];
};

// BACKPACK: DOCTOR
case "doc":
{
	_unit addBackpack _bagMed;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_plasma_m, 2];
	(unitBackpack _unit) addItemCargoGlobal [_saline_s, 4];
	(unitBackpack _unit) addItemCargoGlobal [_bandage, 5];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_elastic, 5];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_packing, 5];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_quikclot, 5];
	(unitBackpack _unit) addItemCargoGlobal [_tourniquet, 2];
	(unitBackpack _unit) addItemCargoGlobal [_fentanyl, 5];
	(unitBackpack _unit) addItemCargoGlobal [_epinephrine, 5];
	(unitBackpack _unit) addItemCargoGlobal [_amiodarone, 5];
	(unitBackpack _unit) addItemCargoGlobal [_lidocaine, 5];
	(unitBackpack _unit) addItemCargoGlobal [_etomidate, 10];
	(unitBackpack _unit) addItemCargoGlobal [_Carbonate, 5];
	(unitBackpack _unit) addItemCargoGlobal [_flumazenil, 5];
	(unitBackpack _unit) addItemCargoGlobal [_lorazepam, 5];
	(unitBackpack _unit) addItemCargoGlobal [_atropine, 5];
	(unitBackpack _unit) addItemCargoGlobal [_ioFast, 5];
	(unitBackpack _unit) addItemCargoGlobal [_naloxone, 2];
	(unitBackpack _unit) addItemCargoGlobal [_AATKit, 2];
	(unitBackpack _unit) addItemCargoGlobal [_chestSeal, 2];
	(unitBackpack _unit) addItemCargoGlobal [_larynx, 2];
	(unitBackpack _unit) addItemCargoGlobal [_scalpel, 10];
	(unitBackpack _unit) addItemCargoGlobal [_iv16, 10];
	(unitBackpack _unit) addItemCargoGlobal [_EACA, 2];
	(unitBackpack _unit) addItemCargoGlobal [_retractor, 1];
	(unitBackpack _unit) addItemCargoGlobal [_clamp, 1];
	(unitBackpack _unit) addItemCargoGlobal [_vacuum, 1];
	(unitBackpack _unit) addItemCargoGlobal [_surgicalKit, 1];
	(unitBackpack _unit) addItemCargoGlobal [_stethoscope, 1];
	(unitBackpack _unit) addItemCargoGlobal [_accuvac, 1];
	(unitBackpack _unit) addItemCargoGlobal [_AEDX, 1];
};

// BACKPACK: Radio HQ (CO/DC/SL)
case "HQ":
{
	_unit addBackpack _bagRadio;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_radioLR, 1];
	(unitBackpack _unit) addMagazineCargoGlobal [_riflemag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr,1];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: TeamLeader (TL)
case "TL":
{
	_unit addBackpack _bagTL;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr,1];
	(unitBackpack _unit) addMagazineCargoGlobal [_glmag,8];
	(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,4];
	(unitBackpack _unit) addMagazineCargoGlobal [_glsmokeblue,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: RTO
case "RTO":
{
	_unit addBackpack _bagRadio;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_radioLR, 1];
	(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr,1];
	(unitBackpack _unit) addMagazineCargoGlobal [_glmag,8];
	(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,4];
	(unitBackpack _unit) addMagazineCargoGlobal [_glsmokeblue,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: Vehicle Comander
case "vc":
{
	_unit addBackpack _bagTLalt;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr,1];
};

// BACKPACK: AR
case "ar":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
};

// BACKPACK: AAR
case "aar":
{
	_unit addBackpack _baglarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_ARmag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr,1];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
};

// BACKPACK: RIFLEMAN AT (RAT)
case "rat":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
//	(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
	(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
};

// BACKPACK: GRENADIER
case "g":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr,1];
	(unitBackpack _unit) addMagazineCargoGlobal [_glmag,8];
	(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,4];
	(unitBackpack _unit) addMagazineCargoGlobal [_glsmokeblue,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: RIFLEMAN (R)
case "r":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
};

// BACKPACK: MARKSMAN (DM)
case "dm":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_DMriflemag, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_DMriflemag_tr, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: CARABINEER (CAR)
case "car":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MMG GUNNER (MMG)
case "mmg":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];	
};

// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
case "mmgag":
{
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MMG AMMO BEARER (MMGAB)
case "mmgab":
{
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
};

// LOADOUT: HEAVY MG GUNNER (HMGG)
case "hmgg":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_HMGmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// LOADOUT: HEAVY MG ASSISTANT GUNNER (HMGAG)
case "hmgag":
{
	_unit addBackpack _baglarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_HMGmag, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// LOADOUT: HEAVY MG AMMO BEARER (HMGAB)
case "hmgab":
{
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_HMGmag, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
};

// BACKPACK: MAT GUNNER (MATG)
case "matg":
{
	_unit addBackpack _bagmedium;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
//	(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MAT ASSISTANT (MATAG)
case "matag":
 {
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
//	(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MAT AMMO BEARER (MATAB)
case "matab":
 {
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
//	(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
};

// LOADOUT: HEAVY AT GUNNER (HATG)
case "hatg":
{
	if(_HAT_Mobile) then{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	}else{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATaltMag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	};		

};

// LOADOUT: HEAVY AT ASSISTANT GUNNER (HATAG)
case "hatag":
{	
	if(_HAT_Mobile) then{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	}else{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATaltMag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_HATaltMag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	};
};

// LOADOUT: HEAVY AT AMMO BEARER (HATAB)
case "hatab":
{	
	if(_HAT_Mobile) then{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
		(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
	}else{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATaltMag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_HATaltMag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
		(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
	};
};

// BACKPACK: MORTAR GUNNER (MTRG)
case "mtrg":
{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_mtrHE, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MORTAR ASSISTANT GUNNER (MTRAG)
case "mtrag":
{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_mtrHE, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MORTAR AMMO BEARER (MTRAB)
case "mtrab":
{
		_unit addBackpack _bagextralarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_mtrHE, 10];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
		(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
};

// BACKPACK: MEDIUM SAM GUNNER (MSAMG)
case "msamg":
{
	_unit addBackpack _baglarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MEDIUM SAM ASSISTANT GUNNER (MSAMAG)
case "msamag":
{
	_unit addBackpack _baglarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// BACKPACK: MEDIUM SAM AMMO BEARER (MSAMAB)
case "msamab":
{
	_unit addBackpack _baglarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
};

// LOADOUT: GMG GUNNER (HSAMG)
case "gmgg":
{
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_GMGammo, 3];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// LOADOUT: GMG ASSISTANT GUNNER (HSAMAG)
case "gmgag":
{
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_GMGammo, 5];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
};

// LOADOUT: GMG AMMO BEARER (HSAMAB)
case "gmgab":
{
	_unit addBackpack _bagextralarge;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_GMGammo, 8];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade,2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	(unitBackpack _unit) addItemCargoGlobal [_saperka, 1];
};

// BACKPACK: ENGINEER (LOGI)
case "eng":
{
	_unit addBackpack _bagENG;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_smgmag,5];
	(unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
	(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
	(unitBackpack _unit) addItemCargoGlobal [_mlotek,1];
	(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
	(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
	(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
};

// BACKPACK: ENGINEER (UAV)
case "enguav":
{
	_unit addBackpack _bagEODuav;
};

// BACKPACK: ENGINEER (HQ)
case "engm":
{
	_unit addBackpack _bagENG;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
	(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
	(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
	(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
	(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
	(unitBackpack _unit) addItemCargoGlobal [_satche_small,2];
	(unitBackpack _unit) addItemCargoGlobal [_satche_big,1];
	(unitBackpack _unit) addItemCargoGlobal [_satche_extra_big,1];
};

// BACKPACK: SUBMACHINEGUNNER (SMG)
case "smg":
{
	_unit addBackpack _bagsmall;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
	(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
	(unitBackpack _unit) addMagazineCargoGlobal [_flashbang, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
};

// BACKPACK: SF Team Leader
case "sftl":
{
	_unit addBackpack _bagSF;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_glriflemagSF, 4];
	(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_flashbang, 2];
};

// BACKPACK: SF Medic
case "sfm":
{
	_unit addBackpack _bagSF;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_plasma_m, 4];
	(unitBackpack _unit) addItemCargoGlobal [_bandage,10];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_elastic,10];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_packing,10];
	(unitBackpack _unit) addItemCargoGlobal [_bandage_quikclot,10];
	(unitBackpack _unit) addItemCargoGlobal [_tourniquet,4];
	(unitBackpack _unit) addItemCargoGlobal [_morphine,5];
	(unitBackpack _unit) addItemCargoGlobal [_epinephrine,5];
	(unitBackpack _unit) addItemCargoGlobal [_splint,5];
	(unitBackpack _unit) addItemCargoGlobal [_surgicalKit, 1];
	(unitBackpack _unit) addItemCargoGlobal [_personalAidKit, 4];
	(unitBackpack _unit) addItemCargoGlobal [_AEDX, 1];
};

// BACKPACK: SF AT
case "sfat":
{
	_unit addBackpack _bagSF;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addMagazineCargoGlobal [_flashbang, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_ARmagSF, 2];
	(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_trSF, 1];
};

// BACKPACK: Saper Sil Specjalnych
case "sfs":
{
	_unit addBackpack _bagSF;
	clearMagazineCargoGlobal (unitBackpack _unit);
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_toolkit,1];
	(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
	(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
	(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
	(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
	(unitBackpack _unit) addItemCargoGlobal [_satche_small,2];
	(unitBackpack _unit) addItemCargoGlobal [_satche_big,1];
	(unitBackpack _unit) addItemCargoGlobal [_satche_extra_big,1];
};

// BACKPACK: UAV
case "uav":
{
	_unit addBackpack _baguav;
};

// BACKPACK: CREW CHIEFS & VEHICLE DRIVERS
case "cc":
{
	_unit addBackpack _bagENG;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal [_toolkit, 1];
	(unitBackpack _unit) addMagazineCargoGlobal [_flaregreen, 4];
};


// Plecak Pilota
case "pp":
{
	_unit addBackpack _bagTLalt;
	(unitBackpack _unit) addMagazineCargoGlobal [_flaregreen, 4];
};

// Plecak Pilota Samolotu		
case "ps":		
{		
	_unit addBackpack _parachute;		
};
