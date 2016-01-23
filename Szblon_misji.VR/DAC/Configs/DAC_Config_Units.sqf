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

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// REDFOR CSAT (A3)
  case 0:
  {
    _Unit_Pool_S = ["O_crew_F","O_Helipilot_F","O_Soldier_SL_F","O_soldier_AR_F","O_soldier_AR_F","O_soldier_exp_F","O_soldier_GL_F","O_soldier_GL_F","O_soldier_M_F","O_medic_F","O_soldier_AA_F","O_soldier_repair_F","O_Soldier_F","O_Soldier_F","O_soldier_LAT_F","O_soldier_LAT_F","O_soldier_lite_F","O_soldier_TL_F","O_soldier_TL_F"];
    _Unit_Pool_V = ["O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F"];
    _Unit_Pool_T = ["O_MBT_02_arty_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_cannon_F","O_APC_Tracked_02_AA_F"];
	_Unit_Pool_A = ["O_Heli_Attack_02_F","O_Heli_Light_02_F","O_Heli_Light_02_armed_F"];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR NATO (A3)
  case 1:
  {
    _Unit_Pool_S = ["B_crew_F","B_Helipilot_F","B_Soldier_SL_F","B_soldier_AR_F","B_soldier_AR_F","B_soldier_exp_F","B_soldier_GL_F","B_soldier_GL_F","B_soldier_AA_F","B_soldier_M_F","B_medic_F","B_soldier_repair_F","B_Soldier_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT_F","B_soldier_lite_F","B_soldier_TL_F","B_soldier_TL_F"];
    _Unit_Pool_V = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
    _Unit_Pool_T = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
    _Unit_Pool_A = ["B_Heli_Light_01_armed_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_F"];
  };
//-------------------------------------------------------------------------------------------------
// Independent FIA (A3)
  case 2:
  {
    _Unit_Pool_S = ["I_crew_F","I_helipilot_F","I_officer_F","I_Soldier_AT_F","I_Soldier_AA_F","I_Soldier_M_F","I_Soldier_GL_F","I_Soldier_exp_F","I_engineer_F","I_medic_F","I_Soldier_AR_F","I_Soldier_A_F"];
    _Unit_Pool_V = ["I_Truck_02_covered_F","I_Truck_02_transport_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_MRAP_03_F"];
    _Unit_Pool_T = ["I_MBT_03_cannon_F","I_APC_tracked_03_cannon_F"];
    _Unit_Pool_A = ["I_Heli_light_03_F"];
  };
//-------------------------------------------------------------------------------------------------
// Civilians (A3)
  case 3:
  {
    _Unit_Pool_S = ["C_man_1","C_man_1","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F"];
    _Unit_Pool_V = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_T = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// Russians (OPFOR)
  case 4:
  {
    _Unit_Pool_S = ["min_rf_crew", "min_rf_helipilot", "min_rf_soldier_TL", "min_rf_soldier_GL", "min_rf_medic","min_rf_soldier_A","min_rf_soldier_AR","min_rf_soldier","min_rf_soldier_M","min_rf_soldier_LAT"];
    _Unit_Pool_V = ["CUP_O_UAZ_MG_RU", "CUP_O_UAZ_SPG9_RU", "CUP_O_Ural_RU", "CUP_O_Ural_ZU23_RU" , "CUP_O_BTR90_RU"];
    _Unit_Pool_T = ["CUP_O_BMP2_RU", "CUP_O_T72_RU"];
    _Unit_Pool_A = ["CUP_O_Mi8_RU"];
  };
 
//-------------------------------------------------------------------------------------------------

// US ARMY "WD"(BLUFOR)
  case 5:
  {
    _Unit_Pool_S = ["usm_soldier_90s_w_l_rm1", "usm_soldier_90s_w_l_rm1", "usm_soldier_90s_w_h_ftl", "usm_soldier_90s_w_h_gr", "usm_soldier_90s_w_h_medic", "usm_soldier_90s_w_h_ar", "usm_soldier_90s_w_h_rm1", "usm_soldier_90s_w_h_rto", "usm_soldier_90s_w_h_at4", "usm_soldier_90s_w_h_aa"];
    _Unit_Pool_V = ["CUP_B_HMMWV_Unarmed_USMC", "CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M1114_USMC"];
    _Unit_Pool_T = ["CUP_B_M113_USA","CUP_B_M1A1_Woodland_US_Army","CUP_B_LAV25_USMC"];
    _Unit_Pool_A = ["MELB_AH6M_L","MELB_AH6M_M","CUP_B_UH60M_US","CUP_B_CH47F_USA"];
  };
  
//-------------------------------------------------------------------------------------------------

// US ARMY "D"(BLUFOR)
  case 6:
  {
    _Unit_Pool_S = ["usm_soldier_90s_d_h_crew1", "usm_soldier_90s_d_l_rm1", "usm_soldier_90s_d_h_ftl", "usm_soldier_90s_d_h_gr", "usm_soldier_90s_d_h_medic", "usm_soldier_90s_d_h_ar", "usm_soldier_90s_d_h_rm1", "usm_soldier_90s_d_h_rto", "usm_soldier_90s_d_h_at4", "usm_soldier_90s_d_h_aa"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USA", "CUP_B_HMMWV_SOV_USA", "CUP_B_HMMWV_Unarmed_USA"];
    _Unit_Pool_T = ["CUP_B_M113_USA","CUP_B_M1A1_DES_US_Army","CUP_B_M2Bradley_USA_D"];
    _Unit_Pool_A = ["MELB_AH6M_L","MELB_AH6M_M","CUP_B_C130J_USMC","CUP_B_CH47F_USA" ,"CUP_B_MH60S_USMC"];
  };
  
//-------------------------------------------------------------------------------------------------

// Bundeswehra "WD"(BLUFOR)
  case 7:
  {
    _Unit_Pool_S = ["BWA3_Crew_Fleck", "BWA3_Helipilot", "BWA3_SL_Fleck", "BWA3_CombatLifeSaver_Fleck", "BWA3_Grenadier_Fleck", "BWA3_Autorifleman_Fleck", "BWA3_Marksman_Fleck", "BWA3_RiflemanG27_Fleck", "BWA3_RiflemanAT_Pzf3_Fleck", "BWA3_RiflemanAA_Fliegerfaust_Fleck"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_Unarmed_USMC", "CUP_B_HMMWV_M1114_USMC"];
    _Unit_Pool_T = ["BWA3_Puma_Fleck", "BWA3_Leopard2A6M_Fleck"];
    _Unit_Pool_A = ["MELB_AH6M_M","MELB_AH6M_L"];
  };
  
//-------------------------------------------------------------------------------------------------

// Bundeswehra "D"(BLUFOR)
  case 8:
  {
    _Unit_Pool_S = ["BWA3_Crew_Tropen", "BWA3_Helipilot", "BWA3_SL_Tropen", "BWA3_CombatLifeSaver_Tropen", "BWA3_Grenadier_Tropen", "BWA3_Autorifleman_Tropen", "BWA3_Marksman_Tropen", "BWA3_RiflemanG27_Tropen", "BWA3_RiflemanAT_Pzf3_Tropen", "BWA3_RiflemanAA_Fliegerfaust_Tropen"];
    _Unit_Pool_V = ["CUP_B_HMMWV_Unarmed_USA", "CUP_B_HMMWV_M2_USA"];
    _Unit_Pool_T = ["BWA3_Puma_Tropen", "BWA3_Leopard2A6M_Tropen"];
    _Unit_Pool_A = ["MELB_AH6M_M","MELB_AH6M_L"];
  };
 
//-------------------------------------------------------------------------------------------------

// Takistan Army (OPFOR)
  case 9:
  {
    _Unit_Pool_S = ["CUP_O_TK_Crew", "CUP_O_TK_Pilot", "CUP_O_TK_Soldier_SL", "CUP_O_TK_Soldier", "CUP_O_TK_Soldier_LAT", "CUP_O_TK_Soldier_AT", "CUP_O_TK_Medic", "CUP_O_TK_Soldier_MG", "CUP_O_TK_Soldier_GL", "CUP_O_TK_Soldier_AR", "CUP_O_TK_Soldier_HAT", "CUP_O_TK_Soldier_AMG", "CUP_O_TK_Soldier_AAT", "CUP_O_TK_Soldier_AA"];
    _Unit_Pool_V = ["CUP_O_UAZ_MG_TKA", "CUP_O_UAZ_SPG9_TKA", "CUP_O_Ural_ZU23_TKA", "CUP_O_UAZ_Open_TKA", "CUP_O_BRDM2_TKA", "CUP_O_BTR60_TK"];
    _Unit_Pool_T = ["pook_ZSU57_TAK", "pook_SA2_tracked_TAK", "CUP_O_T55_TK", "CUP_O_T72_TKA", "CUP_O_M113_TKA", "CUP_O_BMP2_TKA"];
    _Unit_Pool_A = ["CUP_O_Mi17_TK"];
  };
 
//-------------------------------------------------------------------------------------------------

// Polskie Siły Zbrojne - Las (BLUFOR)
  case 10:
  {
    _Unit_Pool_S = ["PSZ_PL_WDL10_Soldier_Driver", "PSZ_PL_WDL10_Soldier_Pilot", "PSZ_PL_WDL10_Soldier_TL", "PSZ_PL_WDL10_Soldier_Ammo_PKM", "PSZ_PL_WDL10_Soldier_MG", "PSZ_PL_WDL10_Soldier_Grenadier_RPG7", "PSZ_PL_WDL10_Soldier_AA", "PSZ_PL_WDL10_Soldier_Ammo_RPG7", "PSZ_PL_WDL10_Soldier_Rifleman", "PSZ_PL_WDL10_Soldier_Medic"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_W", "PSZ_PL_Zbik_M97_W"];
    _Unit_Pool_T = ["BWA3_Leopard2A6M_Fleck"];
    _Unit_Pool_A = ["MELB_AH6M_L","CUP_B_UH60L_FFV_US"];
  };
 
//-------------------------------------------------------------------------------------------------

// Polskie Siły Zbrojne - Pustynia (BLUFOR)
  case 11:
  {
    _Unit_Pool_S = ["PSZ_PL_DES10_Soldier_Driver", "PSZ_PL_DES10_Soldier_Pilot", "PSZ_PL_DES10_Soldier_TL", "PSZ_PL_DES10_Soldier_Ammo_PKM", "PSZ_PL_DES10_Soldier_MG", "PSZ_PL_DES10_Soldier_Grenadier_RPG7", "PSZ_PL_DES10_Soldier_Medic", "PSZ_PL_DES10_Soldier_AA", "PSZ_PL_DES10_Soldier_Ammo_RPG7", "PSZ_PL_DES10_Soldier_Rifleman"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_D", "PSZ_PL_Zbik_M97_D"];
    _Unit_Pool_T = ["BWA3_Leopard2A6M_Tropen"];
    _Unit_Pool_A = ["CUP_B_UH60L_FFV_US", "CUP_B_CH47F_USA", "MELB_AH6M_L"];
  };
 
//-------------------------------------------------------------------------------------------------

// USMC 2000 (BLUFOR)
  case 12:
  {
    _Unit_Pool_S = ["CUP_B_USMC_Crew", "CUP_B_USMC_Pilot", "CUP_B_USMC_Soldier_TL", "CUP_B_USMC_Soldier_AR", "CUP_B_USMC_Medic", "CUP_B_USMC_Soldier_Marksman", "CUP_B_USMC_Engineer", "CUP_B_USMC_Soldier_GL", "CUP_B_USMC_Soldier_MG", "CUP_B_USMC_Soldier", "CUP_B_USMC_Soldier_LAT", "CUP_B_USMC_SpecOps"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_TOW_USMC", "pook_CRAM", "CUP_B_LAV25M240_USMC"];
    _Unit_Pool_T = ["CUP_B_M1A1_Woodland_USMC", "CUP_B_M1A2_TUSK_MG_USMC","CUP_B_AAV_USMC"];
    _Unit_Pool_A = ["CUP_B_MH60S_FFV_USMC", "CUP_B_UH1Y_UNA_USMC", "CUP_B_UH1Y_GUNSHIP_USMC", "MELB_AH6M_L"];
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
