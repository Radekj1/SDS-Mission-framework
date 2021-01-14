//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];


/*
/////////////////////////////////////////////
///////////////SPIS TRESCI///////////////////
/////////////////////////////////////////////
// [MD] - frakcje współczesne "modern"
// [CW] - frokcje Cold War
// [U] - frakcje uniwersalne

//////////CYWILE//////////
	0 - Altis civilians [MD]

//////////BLUFOR//////////
	1 - NATO [MD]

//////////OPFOR///////////
	2 - 

//////////INDFOR//////////
	3 - 

*////////////////////////////////////////////
/////////////////////////////////////////////

switch (_TypNumber) do
{

//////////////////////////////////////////////////////////////////
//////////////////////CIVILIANS///////////////////////////////////
//////////////////////////////////////////////////////////////////

// Altis civilians
  case 0:
  {
    _Unit_Pool_S = ["C_Man_UtilityWorker_01_F","C_man_pilot_F","C_Man_Fisherman_01_F","C_man_1_2_F","C_man_polo_5_F","C_man_polo_2_F","C_man_sport_1_F","C_Man_casual_2_F","C_Man_casual_5_F"]; //Jednostki w kolejności - kierowca, pilot, dowódca, reszta
    _Unit_Pool_V = ["C_Offroad_02_unarmed_F","C_Van_01_transport_F","C_SUV_01_F","C_Offroad_01_F","C_Van_02_transport_F"]; // Pojazdy lekkie, wszystko co jest lekko opancerzone i uzbrojone (głównie kołowe)
    _Unit_Pool_T = []; //Pojazdy ciężkie, czołgi, bmpki itp. wszystko co ma moc i pancerz
    _Unit_Pool_A = ["C_Heli_Light_01_civil_F"]; //Helki, dobrze jak są uzbrojone jakoś, ale unikać bojowych (chodzi o namierzane rakiety, bo są IMBA)
  };
//-------------------------------------------------------------------------------------------------


//////////////////////////////////////////////////////////////////
//////////////////////BLUFOR//////////////////////////////////////
//////////////////////////////////////////////////////////////////

// NATO
  case 1:
  {
    _Unit_Pool_S = ["B_crew_F","B_Helipilot_F","B_Soldier_TL_F","B_medic_F","B_soldier_AR_F","B_soldier_AAR_F","B_Sharpshooter_F","B_soldier_LAT_F","B_Soldier_GL_F","B_HeavyGunner_F","B_soldier_LAT2_F","B_soldier_AA_F","B_soldier_AAA_F"];
    _Unit_Pool_V = ["B_LSV_01_armed_F","B_LSV_01_AT_F","B_MRAP_01_hmg_F","B_APC_Wheeled_01_cannon_F","B_AFV_Wheeled_01_up_cannon_F"];
    _Unit_Pool_T = ["B_MBT_01_cannon_F","B_MBT_01_TUSK_F","B_APC_Tracked_01_AA_F"];
    _Unit_Pool_A = ["B_Heli_Light_01_dynamicLoadout_F"];
  };
//-------------------------------------------------------------------------------------------------

//////////////////////////////////////////////////////////////////
//////////////////////OPFOR///////////////////////////////////////
//////////////////////////////////////////////////////////////////

// CSAT
	case 2:
	{
    _Unit_Pool_S = ["O_crew_F","O_helipilot_F","O_Soldier_TL_F","O_medic_F","O_Soldier_AR_F","O_Soldier_AAR_F","O_soldier_M_F","O_Soldier_LAT_F","O_Soldier_GL_F","O_HeavyGunner_F", "O_Soldier_AA_F", "O_Soldier_AAA_F"];
    _Unit_Pool_V = ["O_LSV_02_armed_F","O_LSV_02_AT_F","O_MRAP_02_hmg_F"];
    _Unit_Pool_T = ["O_APC_Tracked_02_cannon_F", "O_MBT_02_cannon_F", "O_MBT_04_command_F", "O_APC_Tracked_02_AA_F"];
    _Unit_Pool_A = ["O_Heli_Light_02_dynamicLoadout_F"];
  };
  
//-------------------------------------------------------------------------------------------------
 
//////////////////////////////////////////////////////////////////
//////////////////////INDFOR//////////////////////////////////////
//////////////////////////////////////////////////////////////////

// AAF
  case 3:
  {
    _Unit_Pool_S = ["I_Story_Crew_F","I_helipilot_F","I_Soldier_TL_F","I_medic_F","I_Soldier_AR_F","I_Soldier_AAR_F","I_Soldier_M_F","I_Soldier_LAT_F","I_Soldier_GL_F","I_Soldier_LAT2_F","I_Soldier_AA_F","I_Soldier_AAA_F"];
    _Unit_Pool_V = ["I_MRAP_03_hmg_F","I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_LT_01_cannon_F","I_LT_01_AT_F"];
    _Unit_Pool_T = ["I_LT_01_AA_F","I_MBT_03_cannon_F"];
    _Unit_Pool_A = ["I_Heli_light_03_dynamicLoadout_F"];
  }; 
//-------------------------------------------------------------------------------------------------

// XX
  case 100:
  {
    _Unit_Pool_S = [];
    _Unit_Pool_V = [];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  }; 

//-------------------------------------------------------------------------------------------------


Default
  {
    if(DAC_Basic_Value != 5) then
    {
      DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
      hintc "Error: DAC_Config_Units > No valid config number";
    };
    if(true) exitwith {};
  };
};

if(count _this == 2) then
{
  _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
  _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray
