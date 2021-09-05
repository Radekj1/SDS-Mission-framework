// ====================================================================================
// S.D.S Assign Gear Builder Script - [V-1.8 beta | 26.10.2017]
// ====================================================================================

// Avaliable class list
// Defined loadouts(not in order):
//		co			- COY HQ / PLT HQ
//		m 			- MEDIC
//		rto			- RTO/FAC
//		uav			- UAV
//		engm		- ENGINEER (HQ)

//		dc 			- SQUAD LEADER

//		doc 		- DOCTOR

//		ftl			- FIRE TEAM LEADER

//		ar 			- AUTOMATIC RIFLEMAN
//		aar			- ASSISTANT AUTOMATIC RIFLEMAN
//		dm			- DESIGNATED MARKSMAN

//		rat			- RIFLEMAN (AT)
//		gren		- GRENADIER

//		r 			- RIFLEMAN
//		car			- CARABINEER
//		smg			- SUBMACHINEGUNNER

//		mmgg		- MEDIUM MG GUNNER
//		mmgag		- MEDIUM MG ASSISTANT GUNNER
//		mmgab		- MEDIUM MG AMMO BEARER

//		matg		- MEDIUM AT GUNNER
//		matag		- MEDIUM AT ASSISTANT GUNNER
//		matab		- MEDIUM AT AMMO BEARER

//		hmgg		- HEAVY MG GUNNER
//		hmgag		- HEAVY MG ASSISTANT GUNNER
//		hmgab		- HEAVY MG AMMO BEARER

//		hatg		- HEAVY AT GUNNER
//		hatag		- HEAVY AT ASSISTANT GUNNER
//		hatab		- HEAVY AT AMMO BEARER

//		mtrg		- MORTAR GUNNER
//		mtrag		- MORTAR ASSISTANT GUNNER
//		mtrab		- MORTAR AMMO BEARER

//		msamg		- MEDIUM SAM GUNNER
//		msamag		- MEDIUM SAM ASSISTANT GUNNER
//		msamab		- MEDIUM SAM AMMO BEARER

//		gmgg		- GMG GUNNER
//		gmgag		- GMG ASSISTANT GUNNER
//		gmgab		- GMG AMMO BEARER

//		sn			- SNIPER
//		sp			- SPOTTER

//		vc			- VEHICLE COMMANDER
//		vg			- VEHICLE GUNNER
//		vd			- VEHICLE DRIVER

//		pp			- HELICOPTER PILOTS
//		pcc			- HELICOPTER CO-PILOT
//		pc			- HELICOPTER CREW - [NOT USED]

//		eng			- ENGINEER (LOGI)
//		enguav		- ENGINEER (UAV)

//		sftl    	- SF TEAMLEADER
//		sfm    		- SF MEDIC
//		sfat    	- SF OPERATOR (AT)
//		sfs    		- SF OPERATOR (SAPPER)

// ====================================================================================
// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COY HQ/PLT HQ
	case "co":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,2];;
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_smokegrenadered,2];
		_unit addweapon _rifle;
		_attachments = [_attach1,_scope2];
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaFTL;
		_unit addItem _cTAB;
		["HQ"] call _backpack;
	};

// LOADOUT: SQUAD LEADER
	case "dc":
	{
		_unit addmagazines [_riflemag,3];
		_unit addmagazines [_riflemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addmagazines [_smokegrenadered,2];
		_unit addweapon _rifle;
		_attachments = [_attach1,_scope2];
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaFTL;
		_unit addItem _cTAB;
		["HQ"] call _backpack;
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
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _glrifle;					//_FTLrifle
		_attachments = [_attach1,_scope2];
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaFTL;
		_unit addItem _cPhone;
		["TL"] call _backpack;
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addItem _GPS;
		["m"] call _backpack;
	};

	// LOADOUT: DOCTOR
	case "doc":
	{
		_unit addmagazines [_smgmag,3];
		_unit addmagazines [_smgmag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addweapon _pistol;
		_unit addItem _GPS;
		["doc"] call _backpack;
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
		["ar"] call _backpack;
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		_unit addItem _saperka;
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
		_unit addmagazines [_DMriflemag,5];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _DMrifle;
		_attachments = [_attach1,_scope2,_bipod2];
		_unit addweapon _pistol;
		["dm"] call _backpack;
	};

	// LOADOUT: CARABINEER
	case "car":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["car"] call _backpack;
	};

	// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		_unit addmagazines [_smgmag,7];
		_unit addweapon _smg;
		_attachments = [];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["smg"] call _backpack;
	};

	// LOADOUT: GRENADIER
	case "gren":
	{
		_unit addmagazines [_glriflemag,5];
		_unit addmagazines [_glriflemag_tr,2];
		_unit addweapon _glrifle;
		_unit addmagazines [_glmag,6];
		_unit addmagazines [_glsmokewhite,2];
		_unit addmagazines [_grenade,3];
		_unit addmagazines [_pistolmag,2];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["g"] call _backpack;
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
		["mmg"] call _backpack;
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		_unit addmagazines [_carbinemag,3];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;				
		["mmgag"] call _backpack;
	};

// LOADOUT: MEDIUM MG AMMO BEARER
	case "mmgab":
	{
		_unit addmagazines [_smgmag,3];
		_unit addmagazines [_smgmag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addweapon _pistol;
		_unit addItem _saperka;
		["mmgab"] call _backpack;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addmagazines [_smgmag_tr,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["hmgg"] call _backpack;
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		_unit addmagazines [_smgmag,5];
		_unit addmagazines [_smgmag_tr,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addWeapon _lornetkaAM;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["hmgag"] call _backpack;
	};

	// LOADOUT: HEAVY MG AMMO BEARER
	case "hmgab":
	{
		_unit addmagazines [_smgmag,5];
		_unit addmagazines [_smgmag_tr,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem _saperka;
		["hmgab"] call _backpack;
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
		_unit addSecondaryWeaponItem _MAT_sight;
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

// LOADOUT: MEDIUM AT AMMO BEARER
	case "matab":
	{
		_unit addmagazines [_smgmag,3];
		_unit addmagazines [_smgmag_tr,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _smg;
		_attachments = [];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["matab"] call _backpack;
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
		_attachments = [];
		_unit addweapon _pistol;
		["hatg"] call _backpack;
		//Add this to another factions if needed
		if(_HAT_Mobile) then {			
		    _unit addWeapon _HAT;
		}
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
		_attachments = [];
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		["hatag"] call _backpack;
	};

// LOADOUT: HEAVY AT AMMO BEARER
	case "hatab":
	{
		_unit addmagazines [_smgmag,3];
		_unit addmagazines [_smgmag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addweapon _pistol;
		_unit addItem _saperka;
		["hatab"] call _backpack;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		_unit addmagazines [_smgmag,5];
		_unit addmagazines [_smgmag_tr,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem "ACE_MapTools";
		_unit addItem "ACE_RangeTable_82mm";
		["mtrg"] call _backpack;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		_unit addmagazines [_smgmag,5];
		_unit addmagazines [_smgmag_tr,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon _lornetkaAM;
		_unit addItem "ACE_MapTools";
		_unit addItem "ACE_RangeTable_82mm";
		["mtrag"] call _backpack;
	};

// LOADOUT: MORTAR AMMO BEARER
	case "mtrab":
	{
		_unit addmagazines [_smgmag,5];
		_unit addmagazines [_smgmag_tr,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem _saperka;
		["mtrab"] call _backpack;
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
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _carbine;
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		["msamag"] call _backpack;
	};

	// LOADOUT: MEDIUM SAM AMMO BEARER
	case "msamab":
	{
		_unit addmagazines [_smgmag,3];
		_unit addmagazines [_smgmag_tr,2];
		_unit addmagazines [_pistolmag,3];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_smokegrenade,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addweapon _pistol;
		["msamab"] call _backpack;
	};

// LOADOUT: GMG GUNNER
	case "gmgg":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["gmgg"] call _backpack;
	};

// LOADOUT: GMG ASSISTANT GUNNER
	case "gmgag":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addWeapon _lornetkaAM;
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["gmgag"] call _backpack;
	};

	// LOADOUT: GMG AMMO BEARER
	case "gmgab":
	{
		_unit addmagazines [_smgmag,3];
		_unit addmagazines [_smgmag_tr,2];
		_unit addweapon _smg;
		_attachments = [];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		["gmgab"] call _backpack;
	};

// LOADOUT: SNIPER
	case "sn":
	{
		_unit addmagazines [_SNrifleMag,9];
		_unit addweapon _SNrifle;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addWeapon _lornetkaAM;
		_unit addmagazines [_smokegrenade,2];
		_attachments = [_attach1,_scope3,_bipod1];
		_unit addItem _cPhone;
		_unit addItem _RangeCard;
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		_unit addmagazines [_carbinemag,5];
		_unit addmagazines [_carbinemag_tr,2];
		_unit addweapon _carbine;
		_unit addmagazines [_smokegrenade,2];
		_unit addWeapon _lornetkaAM;
		_attachments = [_attach1,_scope1];
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addItem _cPhone;
		_unit addItem _kestrel;
		_unit addItem _ATrag;
		_unit addItem _RangeCard;
	};

// LOADOUT: VEHICLE COMMANDER
	case "vc":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem _cPhone;
		_unit addWeapon _lornetkaFTL;
		_unit addItem _radioMR;
		_attachments = [];
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
		_unit addItem _GPS;
		_attachments = [];
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
		_unit addItem _GPS;
		_attachments = [];
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "pp":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem _radioMR;
		_unit addItem _cPhone;
		_attachments = [];
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
		_unit addItem _GPS;
		_attachments = [];
		["cc"] call _backpack;
	};
	
// LOADOUT: JET PILOTS
	case "ps":
	{
		_unit addmagazines [_pistolmag,3];
		_unit addweapon _pistol;
		_unit addmagazines [_smokegrenade,2];
		_unit addItem _cTAB;
		_unit addItem _radioMR;
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
		_unit addItem _GPS;
		_attachments = [];
	};

// LOADOUT: ENGINEER (LOGI)
	case "eng":
{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addweapon _mineDetector;
		_unit linkItem _uavterminal;
		_unit addItem _cTAB; 
		_unit addWeapon _lornetkaRTO;
		_unit addItem _radioMR;
        _unit addMagazines ["Laserbatteries",2];
		_attachments = [];
		["eng"] call _backpack;
	};

// LOADOUT: ENGINEER (HQ)
	case "engm":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addweapon _mineDetector;
		_unit addItem _cPhone; 
		_unit addWeapon _lornetkaRTO;
        _unit addMagazines ["Laserbatteries",2];
		_attachments = [];
		["engm"] call _backpack;
	};

	// LOADOUT: EOD (UAV)
	case "enguav":
	{
		_unit addmagazines [_smgmag,5];
		_unit addweapon _smg;
		_unit addmagazines [_smokegrenade,2];
		_unit addmagazines [_grenade,2];
		_unit addweapon _mineDetector;
		_unit linkItem _uavterminal;
		_unit addItem _GPS; 
		_unit addWeapon _lornetkaRTO;
        _unit addMagazines ["Laserbatteries",2];
		_attachments = [];
		["enguav"] call _backpack;
	};

// LOADOUT: FAC/RTO
	case "rto":
	{
        _unit addmagazines [_glriflemag,5];
        _unit addmagazines [_glriflemag_tr,4];
        _unit addmagazines [_glmag,7];
        _unit addmagazines [_glsmokewhite,2];
        _unit addweapon _glrifle;        
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,2];
        _unit addmagazines [_pistolmag,3];
        _unit addweapon _pistol;
		_unit addItem _cTAB; 
        _unit addWeapon _lornetkaRTO;
        ["RTO"] call _backpack;
        _unit addMagazines ["Laserbatteries",2];
	};

// LOADOUT: UAV
	case "uav":
	{
        _unit addmagazines [_smgmag,5];
        _unit addmagazines [_smgmag_tr,2];
        _unit addweapon _smg;
		_attachments = [];     
        _unit addmagazines [_smokegrenade,2];
        _unit addmagazines [_grenade,2];
        _unit addmagazines [_pistolmag,3];
        _unit addweapon _pistol;
		_unit linkItem _uavterminal;
		_unit addItem _cTAB; 
        _unit addWeapon _lornetkaRTO;
		_unit addItem _radioMR;
        ["uav"] call _backpack;
        _unit addMagazines ["Laserbatteries",2];
	};
			
 // LOADOUT: Dowódca sil specjalnych
	case "sftl":
	{
		_unit addmagazines [_glriflemagSF,5];
		_unit addmagazines [_glriflemag_trSF,2];
        _unit addmagazines [_glmag,6];
        _unit addmagazines [_huntIR,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_SFpistolmag,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _glrifleSF;
		_attachments = [_attach1,_silencer2,_scope2];
		_unit addweapon _SFpistol;
		_hg_attachments= [_hg_silencer1,_hg_attach1];
		_unit addItem _cTAB;
		_unit addWeapon _lornetkaRTO;
		_unit addItem _radioMR;
		_unit addItem _huntIR_tab;
		_unit addMagazines ["Laserbatteries",2];
		for "_p" from 1 to 2 do {_unit addItem _handcuffs;};
		["sftl"] call _backpack;
	};

// LOADOUT: Medyk sil specjalnych
	case "sfm":
	{	
		_unit addmagazines [_specialmagSF,4];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_SFpistolmag,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _specialSF;
		_attachments = [_attach1,_silencer2,_scope2,_bipod1];
		_unit addweapon _SFpistol;
		_hg_attachments= [_hg_silencer1,_hg_attah1];
		_unit addItem _cPhone;
		_unit addWeapon _lornetkaAM;
		for "_p" from 1 to 2 do {_unit addItem _handcuffs;};
		["sfm"] call _backpack;
	};

// LOADOUT: Strzelec AT sil specjalnych
	case "sfat":
	{
		_unit addmagazines [_ARmagSF,2];
		_unit addmagazines [_ARmag_trSF,1];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_SFpistolmag,2];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _ARSF;
		_attachments = [_attach1,_silencer2,_scope2,_bipod1];
		_unit addweapon _SFpistol;
		_hg_attachments= [_hg_silencer1,_hg_attah1];
		_unit addweapon _RAT;
		_unit addItem _cPhone;
		_unit addWeapon _lornetkaAM;
		for "_p" from 1 to 2 do {_unit addItem _handcuffs;};
		["sfat"] call _backpack;
	};

// LOADOUT: Saper sil specjalnych
	case "sfs":
	{
		_unit addmagazines [_riflemagSF,5];
		_unit addmagazines [_riflemag_trSF,2];
		_unit addmagazines [_grenade,2];
		_unit addmagazines [_SFpistolmag,3];
		_unit addmagazines [_smokegrenadeblue,2];
		_unit addweapon _rifleSF;
		_attachments = [_attach1,_silencer1,_scope2];
		_unit addweapon _SFpistol;
		_hg_attachments= [_hg_silencer1,_hg_attah1];
		_unit addItem _cPhone;
		_unit addWeapon _lornetkaAM;
		for "_p" from 1 to 2 do {_unit addItem _handcuffs;};
		["sfs"] call _backpack;
	};

//////////////////////////////////////////////////////
//////////////////////////////////////////////////////	
		
	
// CARGO: CAR - Przykład inicjalizacji: ["v_car",this,"blu_f"] call f_fnc_assignGear
	case "v_car":
	{
		["v_car"] call _crate;
	};

// CARGO: TRUCK - Przykład inicjalizacji: ["tr",this,"blu_f"] call f_fnc_assignGear
	case "v_tr":
	{
		["v_tr"] call _crate;
	};

// CARGO: IFV - Przykład inicjalizacji: ["ifv",this,"blu_f"] call f_fnc_assignGear
	case "v_ifv":
	{
		["v_ifv"] call _crate;
	};
	
// CARGO: LOGISTYKI - Przykład inicjalizacji: ["v_log",this,"blu_f"] call f_fnc_assignGear
	case "v_log":
	{
		["v_log"] call _crate;	
	};

// CARGO: Med - Przykład inicjalizacji: ["v_med",this,"blu_f"] call f_fnc_assignGear
	case "v_med":
	{
		["v_med"] call _crate;	
	};

// CARGO: Med - Przykład inicjalizacji: ["v_med",this,"blu_f"] call f_fnc_assignGear
	case "v_ammo":
	{
		["v_ammo"] call _crate;	
	};

// CARGO: Med - Przykład inicjalizacji: ["v_heli",this,"blu_f"] call f_fnc_assignGear
	case "v_heli":
	{
		["v_heli"] call _crate;	
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

// CRATE: Skrzynka, zasoby HMG
	case "crate_hmg":
	{
		["crate_hmg"] call _crate;
	};

// CRATE: Skrzynka, zasoby MAT
	case "crate_mat":
	{
		["crate_mat"] call _crate;
	};	

// CRATE: Skrzynka, zasoby HAT
	case "crate_hat":
	{
		["crate_hat"] call _crate;
	};

// CRATE: Skrzynka, zasoby HAT (STATYCZNY)
	case "crate_hat_alt":
	{
		["crate_hat_alt"] call _crate;
	};

// CRATE: Skrzynka, zasoby SAM
	case "crate_sam":
	{
		["crate_sam"] call _crate;
	};

// CRATE: Skrzynka, zasoby GMG
	case "crate_gmg":
	{
		["crate_gmg"] call _crate;
	};

// CRATE: Skrzynka, zasoby SF
	case "crate_spec":
	{
		["crate_spec"] call _crate;
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

// CRATE: Skrzynka, ładunki
	case "crate_explo":
	{
		["crate_explo"] call _crate;
	};

// CRATE: Skrzynka, miny
	case "crate_mines":
	{
		["crate_mines"] call _crate;
	};

// CRATE: Radios
	case "crate_radio":
	{
		["crate_radio"] call _crate;
	};

// CRATE: Mortar
	case "crate_mtr":
	{
		["crate_mtr"] call _crate;
	};

// CRATE: Others
	case "crate_misc":
	{
		["crate_misc"] call _crate;
	};

// ====================================================================================
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