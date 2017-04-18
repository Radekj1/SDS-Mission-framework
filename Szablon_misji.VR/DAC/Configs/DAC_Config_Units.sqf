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
//////////BLUFOR//////////
	 7 - US Army OCP 2010 RHS [MD]
	 8 - USMC Pustynia 2010 RHS [MD]
	 9 - Polskie Siły Zbrojne - Las [MD]
	10 - Polskie Siły Zbrojne - Pustynia [MD]
	11 - US ARMY "WD" 80/90 [CW]
	12 - US ARMY "D" 80/90 [CW]
	13 - CDF [CW]
	14 - Afghan Police [MD]
	
//////////OPFOR///////////
	15 - Russians RHS - MSV Leśne [MD]
	16 - Russians RHS - VDV Pustynia [MD]
	17 - ChDKZ [U]
	18 - SLA [CW]
	19 - United Armed Forces of Novorossiya [MD]
	25 - ZSSR [CW]
	
//////////INDFOR//////////
	20 - Takistan REBELS [U]
	21 - CDF UN [CW]
	22 - Ultranationalists [U]
	23 - African Militia [U]
	24 - Ukraine Armed Forces [MD]

*////////////////////////////////////////////

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

//////////////////////////////////////////////////////////////////
//////////////////////CIVILIANS///////////////////////////////////
//////////////////////////////////////////////////////////////////

// Civilians (A3)
  case 3:
  {
    _Unit_Pool_S = ["C_man_1","C_man_1","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F"];
    _Unit_Pool_V = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// Civilians (African)
  case 4:
  {
    _Unit_Pool_S = ["LOP_AFR_Civ_Man_01","LOP_AFR_Civ_Man_02","LOP_AFR_Civ_Man_03","LOP_AFR_Civ_Man_04","LOP_AFR_Civ_Man_05","LOP_AFR_Civ_Man_06"];
    _Unit_Pool_V = ["LOP_AFR_Civ_Landrover","LOP_AFR_Civ_Offroad","LOP_AFR_Civ_UAZ_Open","LOP_AFR_Civ_Ural_open"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };

//-------------------------------------------------------------------------------------------------

// Civilians (Czarnoruś)
  case 5:
  {
    _Unit_Pool_S = ["LOP_CHR_Civ_Doctor_01","LOP_CHR_Civ_Profiteer_01","LOP_CHR_Civ_Rocker_01","LOP_CHR_Civ_Villager_01","LOP_CHR_Civ_Woodlander_01","LOP_CHR_Civ_Worker_01"];
    _Unit_Pool_V = ["LOP_CHR_Civ_Offroad","LOP_CHR_Civ_UAZ","LOP_CHR_Civ_UAZ_Open","LOP_CHR_Civ_Ural"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  }; 
  
//-------------------------------------------------------------------------------------------------

// Civilians (Takistan)
  case 6:
  {
    _Unit_Pool_S = ["LOP_Tak_Civ_Man_01","LOP_Tak_Civ_Man_02","LOP_Tak_Civ_Man_04"];
    _Unit_Pool_V = ["LOP_CHR_Civ_Offroad","LOP_CHR_Civ_UAZ","LOP_CHR_Civ_UAZ_Open","LOP_CHR_Civ_Ural"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  }; 

//-------------------------------------------------------------------------------------------------

//////////////////////////////////////////////////////////////////
//////////////////////BLUFOR//////////////////////////////////////
//////////////////////////////////////////////////////////////////

// US Army OCP 2010 RHS (BLUFOR)
	case 7:
	{
    _Unit_Pool_S = ["rhsusf_army_ocp_crewman","rhsusf_army_ocp_helipilot","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_medic","rhsusf_army_ocp_riflemanat","rhsusf_army_ocp_rifleman_m4","rhsusf_army_ocp_autorifleman","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_machinegunnera","rhsusf_army_ocp_machinegunner"];
    _Unit_Pool_V = ["rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy","rhsusf_m1025_w_m2","rhsusf_m1025_w"];
    _Unit_Pool_T = ["RHS_M2A3_wd","rhsusf_m1a1aimwd_usarmy","rhsusf_m113_usarmy"];
    _Unit_Pool_A = ["RHS_UH60M_d","RHS_CH_47F_10","RHS_MELB_AH6M_L"];
  };
  
//-------------------------------------------------------------------------------------------------
// USMC Pustynia 2010 RHS (BLUFOR)
	case 8:
	{
    _Unit_Pool_S = ["rhsusf_usmc_marpat_d_crewman","rhsusf_usmc_marpat_d_helipilot","rhsusf_usmc_marpat_d_teamleader","rhsusf_usmc_marpat_d_machinegunner_ass","rhsusf_usmc_marpat_d_machinegunner","rhsusf_usmc_marpat_d_engineer","rhsusf_usmc_marpat_d_gunner","rhsusf_usmc_lar_marpat_d_riflemanat","rhsusf_usmc_marpat_d_autorifleman_m249","rhsusf_usmc_marpat_d_rifleman_m4","rhsusf_usmc_marpat_d_rifleman"];
    _Unit_Pool_V = ["rhsusf_m1025_d_s_m2","rhsusf_m1025_d_s","rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy"];
    _Unit_Pool_T = ["rhsusf_m1a1fep_d"]; 
    _Unit_Pool_A = ["RHS_UH60M_d", "RHS_UH1Y_GS", "RHS_MELB_AH6M_L"];
  };

//-------------------------------------------------------------------------------------------------

// Polskie Siły Zbrojne - Las (BLUFOR)
  case 9:
  {
    _Unit_Pool_S = ["PSZ_PL_WDL10_Soldier_Driver", "PSZ_PL_WDL10_Soldier_Pilot", "PSZ_PL_WDL10_Soldier_TL", "PSZ_PL_WDL10_Soldier_Ammo_PKM", "PSZ_PL_WDL10_Soldier_MG", "PSZ_PL_WDL10_Soldier_Grenadier_RPG7", "PSZ_PL_WDL10_Soldier_Ammo_RPG7", "PSZ_PL_WDL10_Soldier_Rifleman", "PSZ_PL_WDL10_Soldier_Medic"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_W", "PSZ_PL_Zbik_M97_W"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// Polskie Siły Zbrojne - Pustynia (BLUFOR)
  case 10:
  {
    _Unit_Pool_S = ["PSZ_PL_DES10_Soldier_Driver", "PSZ_PL_DES10_Soldier_Pilot", "PSZ_PL_DES10_Soldier_TL", "PSZ_PL_DES10_Soldier_Ammo_PKM", "PSZ_PL_DES10_Soldier_MG", "PSZ_PL_DES10_Soldier_Grenadier_RPG7", "PSZ_PL_DES10_Soldier_Medic", "PSZ_PL_DES10_Soldier_Ammo_RPG7", "PSZ_PL_DES10_Soldier_Rifleman"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_D", "PSZ_PL_Zbik_M97_D"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };

//-------------------------------------------------------------------------------------------------

// US ARMY "WD" 80/90 (BLUFOR)
  case 11:
  {
    _Unit_Pool_S = ["usm_soldier_90s_w_h_rm1", "usm_soldier_90s_d_h_rm1", "usm_soldier_90s_w_h_ftl", "usm_soldier_90s_w_h_gr", "usm_soldier_90s_w_h_medic", "usm_soldier_90s_w_h_ar", "usm_soldier_90s_w_h_rm1", "usm_soldier_90s_w_h_rto", "usm_soldier_90s_w_h_at4"];
    _Unit_Pool_V = ["rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy","rhsusf_m1025_w_m2","rhsusf_m1025_w"];
    _Unit_Pool_T = ["RHS_M2A3_wd","rhsusf_m1a1aimwd_usarmy","rhsusf_m113_usarmy"];
    _Unit_Pool_A = ["RHS_UH60M_d","RHS_CH_47F_10","RHS_MELB_AH6M_L"];
  };
  
//-------------------------------------------------------------------------------------------------

// US ARMY "D" 80/90 (BLUFOR)
  case 12:
  {
    _Unit_Pool_S = ["usm_soldier_90s_d_h_rm1", "usm_soldier_90s_d_h_rm1", "usm_soldier_90s_d_h_ftl", "usm_soldier_90s_d_h_gr", "usm_soldier_90s_d_h_medic", "usm_soldier_90s_d_h_ar", "usm_soldier_90s_d_h_rm1", "usm_soldier_90s_d_h_rto", "usm_soldier_90s_d_h_at4"];
    _Unit_Pool_V = ["rhsusf_m1025_d_s_m2","rhsusf_m1025_d_s","rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy"];
    _Unit_Pool_T = ["rhsusf_m1a1fep_d","rhsusf_m113d_usarmy","RHS_M2A3"]; 
    _Unit_Pool_A = ["RHS_UH60M_d", "RHS_UH1Y_GS", "RHS_MELB_AH6M_L"];
  };
  
//-------------------------------------------------------------------------------------------------

// CDF (BLUFOR)
  case 13:
  {
    _Unit_Pool_S = ["LOP_CDF_Infantry_Crewman","LOP_CDF_Infantry_Pilot","LOP_CDF_Infantry_TL","LOP_CDF_Infantry_MG","LOP_CDF_Infantry_Rifleman_2","LOP_CDF_Infantry_AT","LOP_CDF_Infantry_Engineer","LOP_CDF_Infantry_GL","LOP_CDF_Infantry_Corpsman","LOP_CDF_Infantry_AT_Asst"];
    _Unit_Pool_V = ["LOP_CDF_Ural","LOP_CDF_UAZ_SPG","LOP_CDF_UAZ_DshKM"];
    _Unit_Pool_T = ["LOP_CDF_BMP1","LOP_CDF_BMP2","LOP_CDF_T72BA"];
    _Unit_Pool_A = ["LOP_CDF_Mi8MTV3_UPK23","LOP_CDF_Mi8MT_Cargo"];
  };
  
//-------------------------------------------------------------------------------------------------
  
// Afghan Police (BLUFOR)
  case 14:
  {
    _Unit_Pool_S = ["LOP_AA_Police_SL","LOP_AA_Police_SL","LOP_AA_Police_TL","LOP_AA_Police_MG","LOP_AA_Police_Corpsman","LOP_AA_Police_Rifleman_2","LOP_AA_Police_Rifleman"];
    _Unit_Pool_V = ["LOP_AA_Offroad_Police","LOP_AA_Offroad_M2_Police","LOP_AA_M998_D_4DR"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------
  
//////////////////////////////////////////////////////////////////
//////////////////////OPFOR///////////////////////////////////////
////////////////////////////////////////////////////////////////// 
    
// Russians RHS - MSV Leśne (OPFOR)
  case 15:
  {
    _Unit_Pool_S = ["rhs_msv_emr_combatcrew","rhs_pilot_combat_heli","rhs_msv_emr_junior_sergeant","rhs_msv_emr_medic","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_arifleman","rhs_msv_machinegunner_assistant","rhs_msv_rifleman","rhs_msv_LAT","rhs_msv_engineer"];
    _Unit_Pool_V = ["RHS_Ural_Zu23_MSV_01","RHS_Ural_Open_MSV_01","rhs_btr70_msv","rhs_tigr_msv"];
    _Unit_Pool_T = ["rhs_bmp1_msv","rhs_bmp2k_msv","rhs_t72ba_tv","rhs_t80u","rhs_t80"];
    _Unit_Pool_A = ["RHS_Mi8AMTSh_vvs","RHS_Mi8mt_vvs","RHS_Mi8MTV3_UPK23_vvs"];
  }; 
  
//-------------------------------------------------------------------------------------------------
  
// Russians RHS - VDV Pustynia (OPFOR)
  case 16:
  {
    _Unit_Pool_S = ["rhs_vdv_des_armoredcrew","rhs_pilot_combat_heli","rhs_vdv_des_grenadier","rhs_vdv_des_arifleman","rhs_vdv_des_machinegunner_assistant","rhs_vdv_des_grenadier_rpg","rhs_vdv_des_strelok_rpg_assist","rhs_vdv_des_engineer","rhs_vdv_des_efreitor","rhs_vdv_des_grenadier","rhs_vdv_des_medic"];
    _Unit_Pool_V = ["RHS_Ural_Zu23_MSV_01","RHS_Ural_Open_MSV_01","rhs_btr70_msv","rhs_tigr_3camo_vdv"];
    _Unit_Pool_T = ["rhs_bmp1_msv","rhs_bmp2k_msv","rhs_t72ba_tv","rhs_t80u","rhs_t80"];
    _Unit_Pool_A = ["RHS_Mi8mt_vdv","RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_UPK23_vdv"];
  }; 
  
//-------------------------------------------------------------------------------------------------
  
// ChDKZ (OPFOR)
  case 17:
  {
    _Unit_Pool_S = ["LOP_ChDKZ_Infantry_Crewman","LOP_ChDKZ_Infantry_Pilot","LOP_ChDKZ_Infantry_TL","LOP_ChDKZ_Infantry_MG","LOP_ChDKZ_Infantry_MG_Asst","LOP_ChDKZ_Infantry_AT","LOP_ChDKZ_Infantry_GL","LOP_ChDKZ_Infantry_Corpsman","LOP_ChDKZ_Infantry_Rifleman_3"];
    _Unit_Pool_V = ["rhsgref_ins_ural_Zu23","rhsgref_BRDM2_ins","rhsgref_ins_uaz_dshkm","rhsgref_ins_uaz_spg9","rhsgref_ins_ural_open"];
    _Unit_Pool_T = ["rhsgref_ins_t72ba","rhsgref_ins_bmd1p","rhsgref_ins_bmd2"];
    _Unit_Pool_A = ["rhsgref_ins_Mi8amt"];
  }; 
  
//-------------------------------------------------------------------------------------------------
    
// SLA (OPFOR)
  case 18:
  {
    _Unit_Pool_S = ["LOP_SLA_Infantry_Crewman","LOP_SLA_Infantry_Pilot","LOP_SLA_Infantry_TL","LOP_SLA_Infantry_MG","LOP_SLA_Infantry_MG_Asst","LOP_SLA_Infantry_AT","LOP_SLA_Infantry_GL","LOP_SLA_Infantry_Engineer","LOP_SLA_Infantry_Corpsman","LOP_SLA_Infantry_AT_Asst"];
    _Unit_Pool_V = ["LOP_SLA_UAZ_DshKM","LOP_SLA_UAZ_SPG","LOP_SLA_Ural","LOP_SLA_BTR70"];
    _Unit_Pool_T = ["LOP_SLA_BMP1","LOP_SLA_BMP2","LOP_SLA_T72BA"];
    _Unit_Pool_A = ["LOP_SLA_Mi8MT_Cargo","LOP_SLA_Mi8MTV3_UPK23"];
  }; 

//-------------------------------------------------------------------------------------------------

// United Armed Forces of Novorossiya (OPFOR)
  case 19:
  {
    _Unit_Pool_S = ["LOP_US_Infantry_Crewman","LOP_US_Infantry_Officer","LOP_US_Infantry_TL","LOP_US_Infantry_Rifleman_4","LOP_US_Infantry_MG_2","LOP_US_Infantry_MG_Asst","LOP_US_Infantry_GL_2","LOP_US_Infantry_AT","LOP_US_Infantry_Corpsman","LOP_US_Infantry_Engineer","LOP_US_Infantry_AT_Asst"];
    _Unit_Pool_V = ["LOP_US_BTR70","LOP_US_UAZ_DshKM","LOP_US_UAZ_SPG","LOP_US_Ural"];
    _Unit_Pool_T = ["LOP_US_T72BA","LOP_US_BMP1","LOP_US_BMP2"];
    _Unit_Pool_A = [];
  }; 

//-------------------------------------------------------------------------------------------------

// Russians ZSSR (OPFOR)
  case 25:
  {
    _Unit_Pool_S = ["oksv_wood_tank_crew","rhs_pilot","oksv_wood_serg","oksv_wood_gp","oksv_wood_rifleman","oksv_wood_sniper","oksv_wood_medic","oksv_wood_rpg","oksv_wood_rpgassis","oksv_wood_machinegunne","oksv_wood_secnumber"];
    _Unit_Pool_V = ["oksv_wood_brdm2","oksv_wood_btr70"];
    _Unit_Pool_T = ["oksv_wood_zsu234","oksv_wood_bmp1k","oksv_wood_bmp2","oksv_t80"];
    _Unit_Pool_A = ["RHS_Mi8AMTSh_vvsc","RHS_Mi8AMTSh_UPK23_vvsc"];
  }; 
  
//-------------------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////
//////////////////////INDFOR//////////////////////////////////////
//////////////////////////////////////////////////////////////////  

// Takistan REBELS (INDFOR)
  case 20:
  {
    _Unit_Pool_S = ["LOP_AM_Infantry_Rifleman_2","LOP_AM_Infantry_Rifleman_2","LOP_AM_Infantry_GL","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_AT","LOP_AM_Infantry_AR_Asst","LOP_AM_Infantry_SL"];
    _Unit_Pool_V = ["LOP_AM_Offroad_M2","LOP_AM_UAZ_DshKM","LOP_AM_UAZ_SPG","LOP_AM_UAZ_Open"];
    _Unit_Pool_T = ["LOP_ISTS_T72BA","LOP_ISTS_BMP1","LOP_ISTS_T55"];
    _Unit_Pool_A = [];
  }; 

//-------------------------------------------------------------------------------------------------
  
// CDF UN (INDFOR)
  case 21:
  {
    _Unit_Pool_S = ["LOP_UN_Infantry_Crewman","LOP_UN_Infantry_Pilot","LOP_UN_Infantry_TL","LOP_UN_Infantry_Rifleman","LOP_UN_Infantry_MG","LOP_UN_Infantry_MG_Asst","LOP_UN_Infantry_AT","LOP_UN_Infantry_GL","LOP_UN_Infantry_Engineer","LOP_UN_Infantry_Corpsman","LOP_UN_Infantry_Rifleman_4","LOP_UN_Infantry_AT_Asst"];
    _Unit_Pool_V = ["rhsgref_un_ural","rhsgref_un_btr70","rhsgref_un_uaz"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["rhsgref_un_Mi8amt"];
  }; 

//-------------------------------------------------------------------------------------------------
 
// Ultranationalists (INDFOR)
  case 22:
  {
    _Unit_Pool_S = ["LOP_UA_Infantry_Crewman","LOP_UA_Infantry_Pilot","LOP_UA_Infantry_TL","LOP_UA_Infantry_GL","LOP_UA_Infantry_AT","LOP_UA_Infantry_Rifleman_3","LOP_UA_Infantry_MG","LOP_UA_Infantry_MG_Asst","LOP_UA_Infantry_AT_Asst","LOP_UA_Infantry_Corpsman","LOP_UA_Infantry_Engineer","LOP_UA_Infantry_Rifleman_2"];
    _Unit_Pool_V = ["LOP_UA_UAZ_DshKM","LOP_UA_UAZ_SPG","LOP_UA_Ural_open","LOP_UKR_BTR70"];
    _Unit_Pool_T = ["LOP_UA_BMP1","LOP_UA_BMP2","LOP_UA_T72BA"];
    _Unit_Pool_A = ["LOP_UA_Mi8MT_Cargo","LOP_UA_Mi8MTV3_UPK23"];
  }; 

//-------------------------------------------------------------------------------------------------
  
// African Militia (INDFOR)
  case 23:
  {
    _Unit_Pool_S = ["LOP_AFR_Driver","LOP_AFR_Infantry_IED","LOP_AFR_Infantry_GL","LOP_AFR_Infantry_AR_Asst","LOP_AFR_Infantry_Corpsman","LOP_AFR_Infantry_IED","LOP_AFR_Infantry_Rifleman_3","LOP_AFR_Infantry_AR","LOP_AFR_Infantry_AT","LOP_AFR_Infantry_Rifleman"];
    _Unit_Pool_V = ["LOP_AFR_Landrover","I_G_Offroad_01_armed_F"];
    _Unit_Pool_T = ["LOP_AFR_M113_W","LOP_AFR_T34","LOP_AFR_T55"];
    _Unit_Pool_A = [];
  }; 
 
//-------------------------------------------------------------------------------------------------

// Ukraine Armed Forces (INDFOR)
  case 24:
  {
    _Unit_Pool_S = ["LOP_UKR_Infantry_crew","LOP_UKR_Infantry_pilot","LOP_UKR_Infantry_sergeant","LOP_UKR_Infantry_RPG","LOP_UKR_Infantry_Grenadier","LOP_UKR_Infantry_engineer","LOP_UKR_Infantry_RPG_Asst","LOP_UKR_Infantry_AR_Asst","LOP_UKR_Infantry_AR","LOP_UKR_Infantry_medic","LOP_UKR_Infantry_LAT"];
    _Unit_Pool_V = ["LOP_UKR_BTR80","LOP_UKR_UAZ","LOP_UKR_UAZ_DshKM","LOP_UKR_UAZ_SPG","LOP_UKR_Ural_open"];
    _Unit_Pool_T = ["LOP_UKR_BMP1","LOP_UKR_BMP2","LOP_UKR_T72BA"];
    _Unit_Pool_A = ["LOP_UKR_Mi8MT_Cargo","LOP_UKR_Mi8MTV3_UPK23"];
  }; 

//-------------------------------------------------------------------------------------------------




  
// XX (INDFOR)
  case 30:
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
