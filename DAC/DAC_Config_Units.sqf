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
// Russians MSV (OPFOR)
  case 4:
  {
    _Unit_Pool_S = ["rhs_msv_armoredcrew","rhs_pilot","rhs_msv_grenadier","rhs_msv_rifleman","rhs_msv_at","rhs_msv_strelok_rpg_assist","rhs_msv_machinegunner","rhs_msv_machinegunner_assistant","rhs_msv_marksman","rhs_msv_medic","rhs_msv_LAT","rhs_msv_RShG2"];
    _Unit_Pool_V = ["rhs_btr80_msv","RHS_Ural_Open_MSV_01","rhs_tigr_ffv_msv"];
    _Unit_Pool_T = ["rhs_bmp3mera_msv","rhs_bmp2k_msv","rhs_bmp1p_msv","rhs_t72bd_tv","rhs_t80bvk","rhs_t80ue1","rhs_t72bb_tv"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// USMC "WD"(BLUFOR)
  case 5:
  {
    _Unit_Pool_S = ["rhsusf_usmc_marpat_wd_crewman","rhsusf_usmc_marpat_wd_helipilot","rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_rifleman","rhsusf_usmc_marpat_wd_rifleman_m4","rhsusf_usmc_marpat_wd_autorifleman_m249","rhsusf_usmc_marpat_wd_autorifleman_m249_ass","rhsusf_usmc_marpat_wd_stinger","rhsusf_usmc_marpat_wd_driver","rhsusf_usmc_marpat_wd_riflemanat","rhsusf_usmc_marpat_wd_engineer","rhsusf_usmc_marpat_wd_marksman"];
    _Unit_Pool_V = ["rhsusf_m1025_w_m2","rhsusf_m1025_w_mk19","rhsusf_m1025_w"];
    _Unit_Pool_T = ["rhsusf_m1a1fep_wd"];
    _Unit_Pool_A = ["RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH60M","MELB_AH6M_L"];
  };
//-------------------------------------------------------------------------------------------------
// CDF (BLUFOR)
  case 6:
  {
    _Unit_Pool_S = ["B_CDF_A3_Soldier_Crew","B_CDF_A3_Soldier_Pilot","B_CDF_A3_Soldier_GL","B_CDF_A3_Soldier_MG","B_CDF_A3_Soldier_AR","B_CDF_A3_Soldier_Medic","B_CDF_A3_Soldier_RPG","LOP_CDF_Infantry_Marksman"];
    _Unit_Pool_V = ["LOP_CDF_BTR60","CDF_A3_UAZ_MG","CDF_A3_UAZ_SPG9","CDF_A3_Ural_ZU23"];
    _Unit_Pool_T = ["CDF_A3_BMP2","LOP_CDF_BMP1","CDF_A3_T72","LOP_CDF_T72BA","LOP_CDF_T72BB"];
    _Unit_Pool_A = ["CDF_A3_Mi17_rockets","CDF_A3_Mi17"];
  };

//-------------------------------------------------------------------------------------------------
// TK (OPFOR)
  case 7:
  {
    _Unit_Pool_S = ["B_TKA_A3_Soldier_Crew","B_TKA_A3_Soldier_Pilot","B_TKA_A3_Soldier_SL","B_TKA_A3_Soldier_MG","B_TKA_A3_Soldier_AMG","B_TKA_A3_Soldier_AR","B_TKA_A3_Soldier_LAT","B_TKA_A3_Soldier_AT","B_TKA_A3_Soldier_AAT"];
    _Unit_Pool_V = ["TKA_A3_M113","TKA_A3_UAZ_SPG9","TKA_A3_Ural_ZU23","TKA_A3_UAZ_MG","TKA_A3_BTR60"];
    _Unit_Pool_T = ["TKA_A3_BMP2","TKA_A3_T34","TKA_A3_T72"];
    _Unit_Pool_A = ["TKA_A3_Mi17","TKA_A3_Mi17_rockets"];
  };
//-------------------------------------------------------------------------------------------------
// ChDKZ (OPFOR)
  case 8:
  {
    _Unit_Pool_S = ["LOP_ChDKZ_Infantry_Crewman","LOP_ChDKZ_Infantry_Pilot","LOP_ChDKZ_Infantry_TL","LOP_ChDKZ_Infantry_MG","LOP_ChDKZ_Infantry_SL","LOP_ChDKZ_Infantry_Rifleman","LOP_ChDKZ_Infantry_Marksman","LOP_ChDKZ_Infantry_GL","LOP_ChDKZ_Infantry_Engineer","LOP_ChDKZ_Infantry_Corpsman"];
    _Unit_Pool_V = ["rhs_btr70_chdkz","rhs_uaz_open_chdkz","rhs_ural_open_chdkz"];
    _Unit_Pool_T = ["rhs_bmd2_chdkz","LOP_ChDKZ_T72BA"];
    _Unit_Pool_A = ["LOP_ChDKZ_Mi8MTV3_FAB","LOP_ChDKZ_Mi8MTV3_UPK23"];
  };
  //-------------------------------------------------------------------------------------------------
  // Talibian (INDFOR)
  case 9:
  {
    _Unit_Pool_S = ["LOP_AM_Infantry_Engineer","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_TL","LOP_AM_Infantry_SL","LOP_AM_Soldier","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_AR","LOP_AM_Infantry_AT"];
    _Unit_Pool_V = ["LOP_AM_Landrover","LOP_AM_Landrover_M2","LOP_AM_BTR60"];
    _Unit_Pool_T = ["LOP_AM_T72BA"];
    _Unit_Pool_A = [];
  };
  //-------------------------------------------------------------------------------------------------
  // Russians VDV (OPFOR)
  case 10:
  {
    _Unit_Pool_S = ["rhs_vdv_combatcrew","rhs_pilot","rhs_vdv_sergeant","rhs_vdv_RShG2","rhs_vdv_LAT","rhs_vdv_rifleman","rhs_vdv_medic","rhs_vdv_marksman","rhs_vdv_machinegunner","rhs_vdv_machinegunner_assistant","rhs_vdv_at","rhs_vdv_strelok_rpg_assist","rhs_vdv_grenadier","rhs_vdv_engineer","rhs_vdv_aa"];
    _Unit_Pool_V = ["rhs_tigr_ffv_vdv","RHS_Ural_Open_VDV_01","RHS_Ural_VDV_01","rhs_btr80_vdv","rhs_btr80a_vdv"];
    _Unit_Pool_T = ["rhs_bmd1p","rhs_bmd2m","rhs_bmd4m_vdv","rhs_bmd4ma_vdv","rhs_bmp1p_vdv","rhs_bmp2k_vdv","rhs_sprut_vdv"];
    _Unit_Pool_A = ["RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_UPK23_vdv"];
  };
//-------------------------------------------------------------------------------------------------
  // SLA (OPFOR)
  case 11:
  {
    _Unit_Pool_S = ["LOP_SLA_Infantry_Crewman","LOP_SLA_Infantry_Pilot","LOP_SLA_Infantry_GL","LOP_SLA_Infantry_AT","LOP_SLA_Infantry_AT_Asst","LOP_SLA_Infantry_MG","LOP_SLA_Infantry_MG_Asst","LOP_SLA_Infantry_Corpsman","LOP_SLA_Infantry_Engineer","LOP_SLA_Infantry_Marksman","LOP_SLA_Infantry_Rifleman","LOP_SLA_Infantry_AA"];
    _Unit_Pool_V = ["LOP_SLA_BTR60","LOP_SLA_BTR70","LOP_SLA_Ural_open"];
    _Unit_Pool_T = ["LOP_SLA_BMP1D","LOP_SLA_BMP2D","LOP_SLA_T72BB","LOP_SLA_T72BA"];
    _Unit_Pool_A = ["LOP_SLA_Mi8MTV3_UPK23","LOP_SLA_Mi8MT_Cargo"];
  };

//-------------------------------------------------------------------------------------------------
// USMC "D"(BLUFOR)
  case 12:
  {
    _Unit_Pool_S = ["rhsusf_usmc_marpat_d_crewman","rhsusf_usmc_marpat_d_helipilot","rhsusf_usmc_marpat_d_teamleader","rhsusf_usmc_marpat_d_rifleman","rhsusf_usmc_marpat_d_rifleman_m4","rhsusf_usmc_marpat_d_autorifleman_m249","rhsusf_usmc_marpat_d_autorifleman_m249_ass","rhsusf_usmc_marpat_d_stinger","rhsusf_usmc_marpat_d_driver","rhsusf_usmc_marpat_d_riflemanat","rhsusf_usmc_marpat_d_engineer","rhsusf_usmc_marpat_d_marksman"];
    _Unit_Pool_V = ["rhsusf_m1025_d_m2","rhsusf_m1025_d_Mk19","rhsusf_m1025_d"];
    _Unit_Pool_T = ["rhsusf_m1a1fep_d"];
    _Unit_Pool_A = ["RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH60M","MELB_AH6M_L"];
  };
//-------------------------------------------------------------------------------------------------
// Afghan Police(BLUFOR)
  case 13:
  {
    _Unit_Pool_S = ["LOP_AA_Police_Rifleman","LOP_AA_Police_Rifleman","LOP_AA_Police_SL","LOP_AA_Police_TL","LOP_AA_Police_Corpsman","LOP_AA_Police_Rifleman","LOP_AA_Police_MG"];
    _Unit_Pool_V = ["LOP_AA_Offroad_Police","LOP_AA_Offroad_M2_Police"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Afghan Army(BLUFOR)
  case 14:
  {
    _Unit_Pool_S = ["LOP_AA_Infantry_Engineer","LOP_AA_Infantry_TL","LOP_AA_Infantry_SL","LOP_AA_Infantry_Corpsman","LOP_AA_Infantry_Rifleman","LOP_AA_Infantry_AT","LOP_AA_Infantry_AT_Asst","LOP_AA_Infantry_MG_Asst","LOP_AA_Infantry_MG","LOP_AA_Infantry_Marksman","LOP_AA_Infantry_GL"];
    _Unit_Pool_V = ["LOP_AA_M998_D_4DR","LOP_AA_M1025_W_M2","LOP_AA_M1025_W_Mk19","LOP_AA_M1025_D"];
    _Unit_Pool_T = ["LOP_AA_M113_W","LOP_AA_BMP2","LOP_AA_BMP1","LOP_AA_ZSU234"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------  
// African militia (INDFOR)
  case 15:
  {
    _Unit_Pool_S = ["LOP_AFR_Driver","LOP_AFR_Driver","LOP_AFR_Infantry_TL","LOP_AFR_Infantry_SL","LOP_AFR_Infantry_Rifleman","LOP_AFR_Infantry_Marksman","LOP_AFR_Infantry_AR","LOP_AFR_Infantry_IED","LOP_AFR_Infantry_GL","LOP_AFR_Infantry_Corpsman","LOP_AFR_Infantry_AT","LOP_AFR_Infantry_AT","LOP_AFR_Infantry_AT"									];
    _Unit_Pool_V = ["LOP_AFR_Landrover_M2"];
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
