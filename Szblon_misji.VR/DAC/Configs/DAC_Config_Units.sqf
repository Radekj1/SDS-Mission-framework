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

// Russians Cyfra 2035 (OPFOR)
  case 4:
  {
    _Unit_Pool_S = ["min_rf_crew", "min_rf_helipilot", "min_rf_soldier_TL", "min_rf_soldier_GL", "min_rf_medic","min_rf_soldier_A","min_rf_soldier_AR","min_rf_soldier","min_rf_soldier_M","min_rf_soldier_LAT"];
    _Unit_Pool_V = ["CUP_O_UAZ_MG_RU", "CUP_O_UAZ_SPG9_RU", "CUP_O_Ural_RU", "CUP_O_Ural_ZU23_RU" , "CUP_O_BTR90_RU"];
    _Unit_Pool_T = ["CUP_O_BMP2_RU", "CUP_O_T72_RU"];
    _Unit_Pool_A = ["CUP_O_Mi8_RU"];
  };
 
//-------------------------------------------------------------------------------------------------

// US ARMY "WD" 80/90 (BLUFOR)
  case 5:
  {
    _Unit_Pool_S = ["usm_soldier_90s_w_h_rm1", "CUP_B_USMC_Pilot", "usm_soldier_90s_w_h_ftl", "usm_soldier_90s_w_h_gr", "usm_soldier_90s_w_h_medic", "usm_soldier_90s_w_h_ar", "usm_soldier_90s_w_h_rm1", "usm_soldier_90s_w_h_rto", "usm_soldier_90s_w_h_at4"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_TOW_USMC", "CUP_B_LAV25_USMC"];
    _Unit_Pool_T = ["CUP_B_M113_USA", "CUP_B_M1A1_Woodland_US_Army", "CUP_B_M2Bradley_USA_W"];
    _Unit_Pool_A = ["CUP_B_UH60M_US", "CUP_B_CH47F_USA"];
  };
  
//-------------------------------------------------------------------------------------------------

// US ARMY "D" 80/90 (BLUFOR)
  case 6:
  {
    _Unit_Pool_S = ["usm_soldier_90s_d_h_rm1", "CUP_B_USMC_Pilot", "usm_soldier_90s_d_h_ftl", "usm_soldier_90s_d_h_gr", "usm_soldier_90s_d_h_medic", "usm_soldier_90s_d_h_ar", "usm_soldier_90s_d_h_rm1", "usm_soldier_90s_d_h_rto", "usm_soldier_90s_d_h_at4"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USA", "CUP_B_HMMWV_SOV_USA", "CUP_B_HMMWV_TOW_USA"];
    _Unit_Pool_T = ["CUP_B_M113_USA", "CUP_B_M1A1_DES_US_Army", "CUP_B_M2Bradley_USA_D"];
    _Unit_Pool_A = ["CUP_B_C130J_USMC", "CUP_B_CH47F_USA" ,"CUP_B_MH60S_USMC"];
  };
  
//-------------------------------------------------------------------------------------------------

// Bundeswehra "WD"(BLUFOR)
  case 7:
  {
    _Unit_Pool_S = ["BWA3_Crew_Fleck", "BWA3_Helipilot", "BWA3_SL_Fleck", "BWA3_CombatLifeSaver_Fleck", "BWA3_Grenadier_Fleck", "BWA3_Autorifleman_Fleck", "BWA3_Marksman_Fleck", "BWA3_RiflemanG27_Fleck", "BWA3_RiflemanAT_Pzf3_Fleck"];
    _Unit_Pool_V = ["CUP_B_Dingo_GER_Wdl"];
    _Unit_Pool_T = ["BWA3_Puma_Fleck", "BWA3_Leopard2A6M_Fleck"];
    _Unit_Pool_A = ["CUP_B_UH1D_GER_KSK"];
  };
  
//-------------------------------------------------------------------------------------------------

// Bundeswehra "D"(BLUFOR)
  case 8:
  {
    _Unit_Pool_S = ["BWA3_Crew_Tropen", "BWA3_Helipilot", "BWA3_SL_Tropen", "BWA3_CombatLifeSaver_Tropen", "BWA3_Grenadier_Tropen", "BWA3_Autorifleman_Tropen", "BWA3_Marksman_Tropen", "BWA3_RiflemanG27_Tropen", "BWA3_RiflemanAT_Pzf3_Tropen"];
    _Unit_Pool_V = ["CUP_B_Dingo_GER_Des"];
    _Unit_Pool_T = ["BWA3_Puma_Tropen", "BWA3_Leopard2A6M_Tropen"];
    _Unit_Pool_A = ["CUP_B_UH1D_GER_KSK"];
  };
 
//-------------------------------------------------------------------------------------------------

// Takistan Army (OPFOR)
  case 9:
  {
    _Unit_Pool_S = ["CUP_O_TK_Crew", "CUP_O_TK_Pilot", "CUP_O_TK_Soldier_SL", "CUP_O_TK_Soldier", "CUP_O_TK_Soldier_LAT", "CUP_O_TK_Soldier_AT", "CUP_O_TK_Medic", "CUP_O_TK_Soldier_MG", "CUP_O_TK_Soldier_GL", "CUP_O_TK_Soldier_AR", "CUP_O_TK_Soldier_AMG", "CUP_O_TK_Soldier_AAT"];
    _Unit_Pool_V = ["CUP_O_UAZ_MG_TKA", "CUP_O_UAZ_SPG9_TKA", "CUP_O_Ural_ZU23_TKA", "CUP_O_UAZ_Open_TKA", "CUP_O_BRDM2_TKA", "CUP_O_BTR60_TK"];
    _Unit_Pool_T = ["CUP_O_T55_TK", "CUP_O_T72_TKA", "CUP_O_M113_TKA", "CUP_O_BMP2_TKA", "CUP_O_T34_TKA"];
    _Unit_Pool_A = ["CUP_O_Mi17_TK", "CUP_O_UH1H_TKA"];
  };
 
//-------------------------------------------------------------------------------------------------

// Polskie Siły Zbrojne - Las (BLUFOR)
  case 10:
  {
    _Unit_Pool_S = ["PSZ_PL_WDL10_Soldier_Driver", "PSZ_PL_WDL10_Soldier_Pilot", "PSZ_PL_WDL10_Soldier_TL", "PSZ_PL_WDL10_Soldier_Ammo_PKM", "PSZ_PL_WDL10_Soldier_MG", "PSZ_PL_WDL10_Soldier_Grenadier_RPG7", "PSZ_PL_WDL10_Soldier_Ammo_RPG7", "PSZ_PL_WDL10_Soldier_Rifleman", "PSZ_PL_WDL10_Soldier_Medic"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_W", "PSZ_PL_Zbik_M97_W"];
    _Unit_Pool_T = ["BWA3_Leopard2A6M_Fleck"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// Polskie Siły Zbrojne - Pustynia (BLUFOR)
  case 11:
  {
    _Unit_Pool_S = ["PSZ_PL_DES10_Soldier_Driver", "PSZ_PL_DES10_Soldier_Pilot", "PSZ_PL_DES10_Soldier_TL", "PSZ_PL_DES10_Soldier_Ammo_PKM", "PSZ_PL_DES10_Soldier_MG", "PSZ_PL_DES10_Soldier_Grenadier_RPG7", "PSZ_PL_DES10_Soldier_Medic", "PSZ_PL_DES10_Soldier_Ammo_RPG7", "PSZ_PL_DES10_Soldier_Rifleman"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_D", "PSZ_PL_Zbik_M97_D"];
    _Unit_Pool_T = ["BWA3_Leopard2A6M_Tropen"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// USMC 2000 CUP (BLUFOR)
  case 12:
  {
    _Unit_Pool_S = ["CUP_B_USMC_Crew", "CUP_B_USMC_Pilot", "CUP_B_USMC_Soldier_TL", "CUP_B_USMC_Soldier_AR", "CUP_B_USMC_Medic", "CUP_B_USMC_Soldier_Marksman", "CUP_B_USMC_Engineer", "CUP_B_USMC_Soldier_GL", "CUP_B_USMC_Soldier_MG", "CUP_B_USMC_Soldier", "CUP_B_USMC_Soldier_LAT", "CUP_B_USMC_SpecOps"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_TOW_USMC", "pook_CRAM", "CUP_B_LAV25M240_USMC", "CUP_B_M1126_ICV_M2_Woodland", "CUP_B_M1128_MGS_Woodland"];
    _Unit_Pool_T = ["CUP_B_M1A1_Woodland_USMC", "CUP_B_M1A2_TUSK_MG_USMC", "CUP_B_AAV_USMC"];
    _Unit_Pool_A = ["CUP_B_MH60S_FFV_USMC", "CUP_B_UH1Y_UNA_USMC", "CUP_B_UH1Y_GUNSHIP_USMC"];
  };
 
//-------------------------------------------------------------------------------------------------

// RACS (INDFOR)
  case 13:
  {
    _Unit_Pool_S = ["CUP_I_RACS_Crew", "CUP_I_RACS_Pilot", "CUP_I_RACS_SL", "CUP_I_RACS_MMG", "CUP_I_RACS_Medic", "CUP_I_RACS_GL", "CUP_I_RACS_Soldier", "CUP_I_RACS_Engineer", "CUP_I_RACS_Soldier_MAT", "CUP_I_RACS_Soldier_HAT", "CUP_I_RACS_Sniper"];
    _Unit_Pool_V = ["CUP_I_LR_MG_RACS", "CUP_I_LR_Transport_RACS"];
    _Unit_Pool_T = ["CUP_I_T72_RACS", "CUP_I_M113_RACS", "CUP_I_M163_RACS"];
    _Unit_Pool_A = ["CUP_I_UH60L_RACS"];
  };
 
//-------------------------------------------------------------------------------------------------

// NAPA (INDFOR)
  case 14:
  {
    _Unit_Pool_S = ["CUP_I_GUE_Crew", "CUP_I_GUE_Pilot", "CUP_I_GUE_Commander", "CUP_I_GUE_Soldier_AR", "CUP_I_GUE_Ammobearer", "CUP_I_GUE_Officer", "CUP_I_GUE_Soldier_GL", "CUP_I_GUE_Sniper", "CUP_I_GUE_Soldier_MG", "CUP_I_GUE_Engineer", "CUP_I_GUE_Medic", "CUP_I_GUE_Soldier_AKS74", "CUP_I_GUE_Soldier_AKM", "CUP_I_GUE_Soldier_AKSU", "CUP_I_GUE_Soldier_AT", "CUP_I_GUE_Saboteur", "CUP_I_GUE_Soldier_Scout"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK_Random", "CUP_I_Ural_ZU23_NAPA", "CUP_I_BRDM2_NAPA"];
    _Unit_Pool_T = ["CUP_I_T34_NAPA", "CUP_I_T72_NAPA", "CUP_I_BMP2_NAPA"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// ARMED CIVILIANS - NAPA (INDFOR)
  case 15:
  {
    _Unit_Pool_S = ["CUP_I_GUE_Crew", "CUP_I_GUE_Pilot", "CUP_I_GUE_Forester", "CUP_I_GUE_Local", "CUP_I_GUE_Villager", "CUP_I_GUE_Woodman"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK_Random", "CUP_I_Ural_ZU23_NAPA"];
    _Unit_Pool_T = ["CUP_I_T34_NAPA"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// TAKISTANI LOKALS (INDFOR)
  case 16:
  {
    _Unit_Pool_S = ["CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Sniper" , "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Soldier_AAT" , "CUP_I_TK_GUE_Soldier_M16A2", "CUP_I_TK_GUE_Soldier_GL" , "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_HAT", "CUP_I_TK_GUE_Soldier_AK_47S", "CUP_I_TK_GUE_Soldier", "CUP_I_TK_GUE_Demo", "CUP_I_TK_GUE_Guerilla_Medic", "CUP_I_TK_GUE_Soldier_AR"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK_TK_Random", "CUP_I_Ural_ZU23_TK_Gue", "CUP_I_BRDM2_TK_Gue","rhs_ural_work_open_chdkz"];
    _Unit_Pool_T = ["CUP_I_BMP1_TK_GUE", "CUP_I_T34_TK_GUE", "CUP_I_T55_TK_GUE"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// TAKISTAN REBELS (OPFOR)
  case 17:
  {
    _Unit_Pool_S = ["CUP_O_TK_INS_Mechanic", "CUP_O_TK_INS_Mechanic", "CUP_O_TK_INS_Commander", "CUP_O_TK_INS_Soldier_TL", "CUP_O_TK_INS_Sniper", "CUP_O_TK_INS_Soldier_AT", "CUP_O_TK_INS_Soldier_AAT" , "CUP_O_TK_INS_Soldier_Enfield", "CUP_O_TK_INS_Soldier_FNFAL" , "CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_GL" , "CUP_O_TK_INS_Mechanic", "CUP_O_TK_INS_Bomber", "CUP_O_TK_INS_Soldier_MG", "CUP_O_TK_INS_Guerilla_Medic", "CUP_O_TK_INS_Guerilla_Medic"];
    _Unit_Pool_V = ["CUP_O_LR_MG_TKM", "CUP_O_Ural_ZU23_TKM", "CUP_O_LR_SPG9_TKM"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// SLA (OPFOR)
  case 18:
  {
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_sla_Officer", "CUP_O_sla_Soldier_SL", "CUP_O_SLA_Spotter", "CUP_O_sla_Sniper", "CUP_O_sla_Soldier_AT", "CUP_O_sla_Soldier_LAT", "CUP_O_SLA_Soldier_Backpack", "CUP_O_sla_Soldier", "CUP_O_sla_Medic", "CUP_O_sla_Soldier_MG", "CUP_O_sla_Soldier_GL", "CUP_O_sla_Engineer", "CUP_O_sla_Soldier_AR", "CUP_O_sla_Soldier_AMG", "CUP_O_sla_Soldier_AAT"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_SLA", "CUP_O_BRDM2_SLA"];
    _Unit_Pool_T = ["CUP_O_BMP2_SLA", "CUP_O_T72_SLA"];
    _Unit_Pool_A = ["CUP_O_Mi8_SLA_2", "CUP_O_Mi8_SLA_1"];
  };
 
//-------------------------------------------------------------------------------------------------

// SLA - SPECIAL FORCES (OPFOR)
  case 19:
  {
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_sla_SpecOps_TL", "CUP_O_sla_SpecOps_MG", "CUP_O_sla_SpecOps_LAT", "CUP_O_sla_SpecOps_Demo", "CUP_O_sla_SpecOps"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_SLA", "CUP_O_BRDM2_SLA"];
    _Unit_Pool_T = ["CUP_O_BMP2_SLA"];
    _Unit_Pool_A = ["CUP_O_Mi8_SLA_2", "CUP_O_Mi8_SLA_1"];
  };
 
//-------------------------------------------------------------------------------------------------

// SLA - REBELS (OPFOR)
  case 20:
  {
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_Partisans_soldier_SL", "CUP_O_Partisans_Engineer", "CUP_O_Partisans_Soldier_AT", "CUP_O_Partisans_soldier_TTsKO", "CUP_O_Partisans_Medic", "CUP_O_Partisans_Soldier_MG", "CUP_O_sla_Miltia"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_SLA", "CUP_O_BRDM2_SLA"];
    _Unit_Pool_T = ["CUP_O_BMP2_SLA", "CUP_O_T72_SLA"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// Takistan Army - Special Forces (OPFOR)
  case 21:
  {
    _Unit_Pool_S = ["CUP_O_TK_Crew", "CUP_O_TK_Pilot", "CUP_O_TK_SpecOps_TL", "CUP_O_TK_SpecOps_TL", "CUP_O_TK_SpecOps", "CUP_O_TK_SpecOps"];
    _Unit_Pool_V = ["CUP_O_LR_MG_TKA", "CUP_O_LR_SPG9_TKA", "CUP_O_LR_Transport_TKA", "CUP_O_BRDM2_TKA", "CUP_O_BTR60_TK"];
    _Unit_Pool_T = ["CUP_O_T72_TKA", "CUP_O_M113_TKA", "CUP_O_BMP2_TKA"];
    _Unit_Pool_A = ["CUP_O_UH1H_TKA"];
  };
 
//-------------------------------------------------------------------------------------------------

// US Army OCP 2010 RHS (BLUFOR)
	case 22:
	{
    _Unit_Pool_S = ["rhsusf_army_ocp_crewman","rhsusf_army_ocp_helipilot","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_medic","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_rifleman_m4","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_machinegunnera","rhsusf_army_ocp_machinegunner"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_TOW_USMC", "CUP_B_LAV25_USMC"];
    _Unit_Pool_T = ["CUP_B_M113_USA", "CUP_B_M1A1_Woodland_US_Army", "CUP_B_M2Bradley_USA_W"];
    _Unit_Pool_A = ["CUP_B_UH60M_US", "CUP_B_CH47F_USA"];
  };
  
//-------------------------------------------------------------------------------------------------
// USMC Pustynia 2010 RHS (BLUFOR)
	case 23:
	{
    _Unit_Pool_S = ["rhsusf_usmc_marpat_d_crewman","rhsusf_usmc_marpat_d_helipilot","rhsusf_usmc_marpat_d_teamleader","rhsusf_usmc_marpat_d_machinegunner_ass","rhsusf_usmc_marpat_d_machinegunner","rhsusf_usmc_marpat_d_engineer","rhsusf_usmc_marpat_d_gunner","rhsusf_usmc_lar_marpat_d_riflemanat","rhsusf_usmc_marpat_d_autorifleman_m249","rhsusf_usmc_marpat_d_rifleman_m4","rhsusf_usmc_marpat_d_rifleman"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_TOW_USMC", "pook_CRAM", "CUP_B_LAV25M240_USMC"];
    _Unit_Pool_T = ["CUP_B_M1A1_Woodland_USMC", "CUP_B_M1A2_TUSK_MG_USMC", "CUP_B_AAV_USMC"];
    _Unit_Pool_A = ["CUP_B_MH60S_FFV_USMC", "CUP_B_UH1Y_UNA_USMC", "CUP_B_UH1Y_GUNSHIP_USMC"];
  };

//-------------------------------------------------------------------------------------------------
// Russians RHS - MSV (OPFOR)
  case 24:
  {
    _Unit_Pool_S = ["rhs_msv_emr_combatcrew","rhs_pilot_combat_heli","rhs_msv_emr_junior_sergeant","rhs_msv_emr_medic","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_arifleman","rhs_msv_machinegunner_assistant","rhs_msv_rifleman","rhs_msv_LAT","rhs_msv_engineer"];
    _Unit_Pool_V = ["CUP_O_UAZ_MG_RU", "CUP_O_UAZ_SPG9_RU", "CUP_O_Ural_RU", "CUP_O_Ural_ZU23_RU" , "CUP_O_BTR90_RU","rhs_btr80_msv"];
    _Unit_Pool_T = ["CUP_O_BMP2_RU", "CUP_O_T72_RU"];
    _Unit_Pool_A = ["CUP_O_Mi8_RU"];
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
