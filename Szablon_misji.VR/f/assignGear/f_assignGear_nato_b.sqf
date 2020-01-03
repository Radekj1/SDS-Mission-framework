// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.
	

// BACKPACK: MEDIC
case "m":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {

	_unit addBackpack _bagMs;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag, 1];
		(unitBackpack _unit) addItemCargoGlobal [_blood_m, 3];
		(unitBackpack _unit) addItemCargoGlobal [_bandage,15];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_elastic,15];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_packing,10];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_quikclot,10];
		(unitBackpack _unit) addItemCargoGlobal [_tourniquet,3];
		(unitBackpack _unit) addItemCargoGlobal [_morphine,6];
		(unitBackpack _unit) addItemCargoGlobal [_epinephrine,6];
		(unitBackpack _unit) addItemCargoGlobal [_adenosine,6];
		(unitBackpack _unit) addItemCargoGlobal [_splint,6];
		(unitBackpack _unit) addItemCargoGlobal [_surgicalKit, 1];
		(unitBackpack _unit) addItemCargoGlobal [_personalAidKit, 3];
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
	_unit addBackpack _bagMm;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag, 1];
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag_tr, 1];
		(unitBackpack _unit) addItemCargoGlobal [_blood_m, 6];
		(unitBackpack _unit) addItemCargoGlobal [_bandage,15];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_elastic,15];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_packing,10];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_quikclot,10];
		(unitBackpack _unit) addItemCargoGlobal [_tourniquet,6];
		(unitBackpack _unit) addItemCargoGlobal [_morphine,10];
		(unitBackpack _unit) addItemCargoGlobal [_epinephrine,10];
		(unitBackpack _unit) addItemCargoGlobal [_adenosine,10];
		(unitBackpack _unit) addItemCargoGlobal [_splint,10];
		(unitBackpack _unit) addItemCargoGlobal [_surgicalKit, 1];
		(unitBackpack _unit) addItemCargoGlobal [_personalAidKit, 5];
			
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _bagMl;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addItemCargoGlobal [_carbinemag_tr, 1];
		(unitBackpack _unit) addItemCargoGlobal [_blood_m, 8];
		(unitBackpack _unit) addItemCargoGlobal [_bandage,20];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_elastic,20];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_packing,15];
		(unitBackpack _unit) addItemCargoGlobal [_bandage_quikclot,15];
		(unitBackpack _unit) addItemCargoGlobal [_tourniquet,8];
		(unitBackpack _unit) addItemCargoGlobal [_morphine,15];
		(unitBackpack _unit) addItemCargoGlobal [_epinephrine,15];
		(unitBackpack _unit) addItemCargoGlobal [_adenosine,15];
		(unitBackpack _unit) addItemCargoGlobal [_splint,15];
		(unitBackpack _unit) addItemCargoGlobal [_surgicalKit, 1];
		(unitBackpack _unit) addItemCargoGlobal [_personalAidKit, 8];
	
	};
};

// BACKPACK: Radio (CO/DC/SL)
case "ftl":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	
		_unit addBackpack _bagRadio;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	};

	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagRadio;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,3];
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag,6];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];		
		
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _bagRadio;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag,8];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade,1];
		
	};
};


// BACKPACK: Vehicle Comander
case "vc":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	
		_unit addBackpack _bagTL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagTL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];	
		
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _bagTL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag,3];
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag_tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,3];
	};
};



// BACKPACK: AR
case "ar":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr,2];;
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
};

// BACKPACK: AAR
case "aar":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	
		_unit addBackpack _bagSupSmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];

	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagSupMedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag,3];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];		
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _bagSupLarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_Tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
};

// BACKPACK: RIFLEMAN AT (RAT)
case "rat":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_RATmag,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
};

// BACKPACK: Team Leader
case "g":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	
		_unit addBackpack _bagTL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
				
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagTL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag,6];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
		
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _bagTL;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag,4];
		(unitBackpack _unit) addMagazineCargoGlobal [_glmag,8];
		(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		
	};
};

// BACKPACK: RIFLEMAN (R)
case "r":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
	
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];	
		
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];		
		
	};
};

// BACKPACK: CARABINEER (CAR)
case "car":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 6];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];		
		
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
		
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
	
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];	
		
	};
};

// BACKPACK: MMG GUNNER (MMG)
case "mmg":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];		

	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];		
		
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
};

// BACKPACK: MMG ASSISTANT GUNNER (MMGAG)
case "mmgag":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagSupSmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag,2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
		
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagSupMedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];		
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];		
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagSupLarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];		
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];		
		
	};
};

// LOADOUT: HEAVY MG GUNNER (HMGG)
case "hmgg":
{
	_unit addBackpack _baghmgg;
};

// LOADOUT: HEAVY MG ASSISTANT GUNNER (HMGAG)
case "hmgag":
{
	_unit addBackpack _baghmgag;
};

// BACKPACK: MAT GUNNER (MATG)
case "matg":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		//(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
		
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		//(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
		
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 3];
		//(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
		
	};
};

// BACKPACK: MAT ASSISTANT (MATAG)
case "matag":
    {
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagSupSmall;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
		
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagSupMedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];	
		
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagSupLarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_MATsptr, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 3];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];		
	};
};

// LOADOUT: HEAVY AT GUNNER (HATG)
case "hatg":
{
	clearMagazineCargoGlobal (unitBackpack _unit);
	
	if(_HAT_Mobile) then{
		_unit addBackpack _bagSupMedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	}else{
		_unit addBackpack _baghatg;
		clearMagazineCargoGlobal (unitBackpack _unit);
	};		

};

// LOADOUT: HEAVY AT ASSISTANT GUNNER (HATAG)
case "hatag":
{	
	if(_HAT_Mobile) then{
		_unit addBackpack _bagSupLarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_HATmag1, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	}else{
		_unit addBackpack _baghatag;
		clearMagazineCargoGlobal (unitBackpack _unit);
	};
	
};

// BACKPACK: MORTAR GUNNER (MTRG)
case "mtrg":
{
	_unit addBackpack _bagmtrg;
};

// BACKPACK: MORTAR ASSISTANT GUNNER (MTRAG)
case "mtrag":
{
	_unit addBackpack _bagmtrag;
};

// BACKPACK: MEDIUM SAM GUNNER (MSAMG)
case "msamg":
{
		_unit addBackpack _bagSupMedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
};

// BACKPACK: MEDIUM SAM ASSISTANT GUNNER (MSAMAG)
case "msamag":
{
		_unit addBackpack _bagSupLarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SAMmag, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
};

// LOADOUT: HEAVY SAM GUNNER (HSAMG)
case "hgmgg":
{
	_unit addBackpack _baggmgg;
};

// LOADOUT: HEAVY SAM ASSISTANT GUNNER (HSAMAG)
case "hgmgag":
{
	_unit addBackpack _baggmgag;
};

// BACKPACK: ENGINEER (LOGI)
case "eng":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagENGs;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_smgmag,3];
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
		(unitBackpack _unit) addItemCargoGlobal [_mlotek,1];
		(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
		(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
		(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagENGm;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_smgmag,5];
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
		(unitBackpack _unit) addItemCargoGlobal [_mlotek,1];
		(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
		(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
		(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _bagENGl;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal [_smgmag,7];	
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
		(unitBackpack _unit) addItemCargoGlobal [_mlotek,1];
		(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
		(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
		(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	
	};
};

// BACKPACK: ENGINEER (HQ)
case "engm":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagENGs;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
		(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
		(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
		(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
		(unitBackpack _unit) addItemCargoGlobal [_satche_small,1];
		(unitBackpack _unit) addItemCargoGlobal [_satche_big,1];
		
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
	
		_unit addBackpack _bagENGm;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
		(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
		(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
		(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
		(unitBackpack _unit) addItemCargoGlobal [_satche_small,2];
		(unitBackpack _unit) addItemCargoGlobal [_satche_big,1];
		(unitBackpack _unit) addItemCargoGlobal [_satche_extra_big,1];
		
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {

		_unit addBackpack _bagENGl;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
		(unitBackpack _unit) addItemCargoGlobal [_wirecutter,1];
		(unitBackpack _unit) addItemCargoGlobal [_saperka,1];
		(unitBackpack _unit) addItemCargoGlobal [_n_rozbraja,1];
		(unitBackpack _unit) addItemCargoGlobal [_zapalnik_b,1];
		(unitBackpack _unit) addItemCargoGlobal [_satche_small,3];
		(unitBackpack _unit) addItemCargoGlobal [_satche_big,2];
		(unitBackpack _unit) addItemCargoGlobal [_satche_extra_big,1];
		
	};
};

// BACKPACK: SUBMACHINEGUNNER (SMG)
case "smg":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagsmall;
		_unit addmagazines [_smgmag,2];
		_unit addmagazines [_grenade,1];
		_unit addmagazines [_smokegrenadeblue,2];
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
		_unit addBackpack _bagmedium;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
		_unit addBackpack _baglarge;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 8];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 4];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	};
};

// BACKPACK: SF Team Leader
case "divc":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
		_unit addBackpack _bagRadio;
		clearMagazineCargoGlobal (unitBackpack _unit);
		(unitBackpack _unit) addMagazineCargoGlobal [_SFMagTL, 2];
		(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
		(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 1];
		
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
			_unit addBackpack _bagRadio;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_SFMagTL, 4];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
			_unit addBackpack _bagRadio;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_SFMagTL, 6];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenadeblue, 2];
	};
};

// BACKPACK: SF Medic
case "divm":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
			_unit addBackpack _bagMs;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot",20];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine",5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine",5];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 4];
		
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
			_unit addBackpack _bagMm;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addItemCargoGlobal	["ACE_blood_mIV_500", 4];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot", 25];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 7];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 7];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 4];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
			_unit addBackpack _bagMl;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addItemCargoGlobal	["ACE_blood_mIV_500", 8];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot", 30];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 10];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 10];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_personalAidKit", 6];
	};
};


// BACKPACK: SF light AT
case "divr":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
			_unit addBackpack _bagsmall;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
			(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 2];
	};
	
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
			_unit addBackpack _bagmedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 3];
	};
	
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 4];
	};
	
};


// BACKPACK: Saper Sil Specjalnych
case "divs":
{
	// LOADOUT: LIGHT
	if (_loadout == 0) then {
			_unit addBackpack _bagSupSmall;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 1];
			(unitBackpack _unit) addItemCargoGlobal ["DemoCharge_Remote_Mag",2];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_DefusalKit",1];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_Clacker",1];
			(unitBackpack _unit) addMagazineCargoGlobal [_SFMagTL, 2];
		
	};
	// LOADOUT: MEDIUM
	if (_loadout == 1) then {
			_unit addBackpack _bagSupMedium;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_DefusalKit",1];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_Clacker",1];
			(unitBackpack _unit) addItemCargoGlobal ["SatchelCharge_Remote_Mag",1];
			(unitBackpack _unit) addItemCargoGlobal ["DemoCharge_Remote_Mag",2];
			(unitBackpack _unit) addMagazineCargoGlobal [_SFMagTL, 2];
	};
	// LOADOUT: HEAVY
	if (_loadout == 2) then {
			_unit addBackpack _bagSupLarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_mgrenade, 2];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_DefusalKit",1];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_Clacker",1];
			(unitBackpack _unit) addItemCargoGlobal ["SatchelCharge_Remote_Mag",1];
			(unitBackpack _unit) addItemCargoGlobal ["DemoCharge_Remote_Mag",2];
			(unitBackpack _unit) addMagazineCargoGlobal [_SFMagTL, 2];
	};
};

// BACKPACK: UAV
case "uav":
{
	_unit addBackpack _baguav;
};

// BACKPACK: CREW CHIEFS & VEHICLE DRIVERS
case "cc":
{
	_unit addBackpack _bagENGs;
	clearMagazineCargoGlobal (unitBackpack _unit);
	(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
	(unitBackpack _unit) addMagazineCargoGlobal [_flaregreen, 8];
};


// Plecak Pilota
case "pp":
{
	_unit addBackpack _bagTL;
	(unitBackpack _unit) addMagazineCargoGlobal [_flaregreen, 8];
};

// Plecak Pilota Samolotu		
case "ps":		
{		
	_unit addBackpack _parachute;		
};
