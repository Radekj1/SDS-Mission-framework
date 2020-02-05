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
//////////PRZYKŁAD////////
	0 - NATO (A3)
//////////CYWILE//////////
	1 - EAST EU/RUSSIA [U]
	2 - WEST EU/US
	3 - MIDDLE EAST
	4 - AFRICA
	5 - ASIA
//////////BLUFOR//////////
	6 - ACR (DS) [MD]
	7 - ACR (WD) [MD]
	8 - UK MTP  [MD]
	9 - UK DPM (DS) [U]
	10 - UK DPM (WD) [MD]
	11 - Bundeswehr (DS) [MD]
	12 - Bundeswehr (WD) [MD]
	13 - CDF (DS) [U]
  14 - CDF (WD) [U]
	15 - CDF (WINTER) [U]
  16 - IDF [MD]
  17 - US UCP (DS) [MD]
  18 - US UCP (WD) [MD]
  19 - USMC (DS) [MD]
  20 - USMC (WD) [MD]
	21 - USMC (DS) [CW]
	22 - USMC (WD) [CW]
  28 - BW [CW]
//////////OPFOR///////////
	23 - RU MSV (WD)
	24 - RU VDV (WD)
	25 - RU VDV (DS)
	26 - ChDKZ
	27 - ChDKZ (WINTER)
	28 - KPA
	29 - IRAN
	30 - SLA (WD)
	31 - SLA (DS)
	32 - TAKISTAN ARMY
	33 - SYRIA
	34 - TUSKENI
	35 - KOZOJEBCY	
	36 - SOMALI PIRATES (MURZYNY)
//////////INDFOR//////////
	20 - ChDKZ [CW/U]
	21 - Partyzanci [CW/U]
	22 - Komuniści [CW/U] (NAPA)
	23 - UN Old [CW]
	24 - UN Modern [MD]
	25 - Murzyny [U] (African rebels)
	26 - Ciapaci [U] (Takistan rebels)
	27 - RACS [U]

*////////////////////////////////////////////

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// NATO (A3)
  case 0:
  {
    _Unit_Pool_S = ["B_crew_F","B_Helipilot_F","B_Soldier_SL_F","B_soldier_AR_F","B_soldier_AR_F","B_soldier_exp_F","B_soldier_GL_F","B_soldier_GL_F","B_soldier_AA_F","B_soldier_M_F","B_medic_F","B_soldier_repair_F","B_Soldier_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT_F","B_soldier_lite_F","B_soldier_TL_F","B_soldier_TL_F"]; //Jednostki w kolejności - kierowca, pilot, dowódca, reszta
    _Unit_Pool_V = ["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"]; // Pojazdy lekkie, wszystko co jest lekko opancerzone i uzbrojone (głównie kołowe)
    _Unit_Pool_T = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"]; //Pojazdy ciężkie, czołgi, bmpki itp. wszystko co ma moc i pancerz
    _Unit_Pool_A = ["B_Heli_Light_01_armed_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_F"]; //Helki, dobrze jak są uzbrojone jakoś, ale unikać bojowych (chodzi o namierzane rakiety, bo są IMBA)
  };
//-------------------------------------------------------------------------------------------------


//////////////////////////////////////////////////////////////////
//////////////////////CIVILIANS///////////////////////////////////
//////////////////////////////////////////////////////////////////

// EAST EU/RUSSIA
  case 1:
  {
    _Unit_Pool_S = ["UK3CB_CHC_C_PILOT","UK3CB_CHC_C_PILOT","UK3CB_CHC_C_COACH","UK3CB_CHC_C_ACT","UK3CB_CHC_C_CIT","UK3CB_CHC_C_HIKER","UK3CB_CHC_C_PROF","UK3CB_CHC_C_CIV","UK3CB_CHC_C_SPY","UK3CB_CHC_C_VILL","UK3CB_CHC_C_WOOD","UK3CB_CHC_C_WORKER","C_Man_6_enoch_F","C_Man_4_enoch_F","C_Man_3_enoch_F","C_Man_2_enoch_F","C_Man_1_enoch_F"];
    _Unit_Pool_V = ["UK3CB_CHC_C_Golf","UK3CB_CHC_C_Gaz24","UK3CB_CHC_C_Tractor_Old","UK3CB_CHC_C_Tractor","UK3CB_CHC_C_S1203","UK3CB_CHC_C_Skoda","UK3CB_CHC_C_Sedan","UK3CB_CHC_C_Lada","UK3CB_CHC_C_Hilux_Civ_Open","UK3CB_CHC_C_Hatchback","UK3CB_CHC_C_Datsun_Civ_Closed"];
    _Unit_Pool_T = ["UK3CB_CHC_C_Ikarus","UK3CB_CHC_C_Ural_Open","UK3CB_CHC_C_V3S_Open","UK3CB_CHC_C_Kamaz_Open"];
    _Unit_Pool_A = ["UK3CB_CHC_C_Mi8AMT"];
  };
//-------------------------------------------------------------------------------------------------
// MIDDLE EAST
  case 2:
  {
    _Unit_Pool_S = ["UK3CB_TKC_C_PILOT","UK3CB_TKC_C_PILOT","UK3CB_TKC_C_CIV","UK3CB_TKC_C_SPOT","UK3CB_TKC_C_WORKER"];
    _Unit_Pool_V = ["UK3CB_TKC_C_Gaz24","UK3CB_TKC_C_UAZ_Open","UK3CB_TKC_C_Tractor_Old","UK3CB_TKC_C_S1203","UK3CB_TKC_C_Sedan","UK3CB_TKC_C_Lada_Taxi","UK3CB_TKC_C_Lada","UK3CB_TKC_C_Hilux_Civ_Open","UK3CB_TKC_C_Hatchback","UK3CB_TKC_C_Datsun_Civ_Open"];
    _Unit_Pool_T = ["UK3CB_TKC_C_Ikarus","UK3CB_TKC_C_Open","UK3CB_TKC_C_V3S_Open","UK3CB_TKC_C_Kamaz_Open"];
    _Unit_Pool_A = ["UK3CB_TKC_C_Mi8AMT"];
  };
//-------------------------------------------------------------------------------------------------
// AFRICA
  case 3:
  {
    _Unit_Pool_S = ["C_man_p_beggar_F_afro","C_man_p_beggar_F_afro","C_Man_casual_1_F_afro","C_Man_casual_2_F_afro","C_Man_casual_3_F_afro","C_Man_casual_4_F_afro","C_Man_casual_5_F_afro","C_Man_casual_6_F_afro","C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro"];
    _Unit_Pool_V = ["UK3CB_C_Hilux_Open","C_Offroad_02_unarmed_F","UK3CB_C_LandRover_Closed","C_Offroad_01_F","UK3CB_C_Tractor"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["C_Heli_Light_01_civil_F"];
  };
  
//-------------------------------------------------------------------------------------------------

//////////////////////////////////////////////////////////////////
//////////////////////BLUFOR//////////////////////////////////////
//////////////////////////////////////////////////////////////////

// AFGHAN NATIONAL ARMY (BLUFOR)
	case 4:
	{
UK3CB_ANA_B_MG
    _Unit_Pool_S = ["UK3CB_ANA_B_CREW","UK3CB_ANA_B_HELI_PILOT","UK3CB_ANA_B_TL","UK3CB_ANA_B_RIF_2","UK3CB_ANA_B_RIF_1","UK3CB_ANA_B_MG","UK3CB_ANA_B_MD","UK3CB_ANA_B_LAT","UK3CB_ANA_B_GL","UK3CB_ANA_B_AR","UK3CB_ANA_B_AT","UK3CB_ANA_B_AA","UK3CB_ANA_B_MK"];
    _Unit_Pool_V = ["UK3CB_ANA_B_Hilux_Dshkm","UK3CB_ANA_B_Hilux_Spg9","UK3CB_ANA_B_M1025_M2","UK3CB_ANA_B_Offroad_M2","UK3CB_ANA_B_M113_M2","UK3CB_ANA_B_M113_M240"];
    _Unit_Pool_T = ["UK3CB_ANA_B_BMP1","UK3CB_ANA_B_BMP2K","UK3CB_ANA_B_ZsuTank","UK3CB_ANA_B_T55","UK3CB_ANA_B_T72A","UK3CB_ANA_B_T72B"];
    _Unit_Pool_A = ["UK3CB_ANA_B_AH9","UK3CB_ANA_B_UH1H_M240","UK3CB_ANA_B_B_UH60M","UK3CB_ANA_B_Mi8AMTSh"];
  };
  
//-------------------------------------------------------------------------------------------------
// CHERNARUS CIVILIAN MILITA (BLUFOR)
	case 5:
	{
    _Unit_Pool_S = ["UK3CB_CCM_B_ENG","UK3CB_CCM_B_COM","UK3CB_CCM_B_TL","UK3CB_CCM_B_SNI","UK3CB_CCM_B_RIF_BOLT","UK3CB_CCM_B_RIF_2","UK3CB_CCM_B_MD","UK3CB_CCM_B_AR","UK3CB_CCM_B_AT","UK3CB_CCM_B_AT_ASST"];
    _Unit_Pool_V = ["UK3CB_CCM_B_Hilux_Pkm","UK3CB_CCM_B_Hilux_Dshkm"];
    _Unit_Pool_T = [""]; 
    _Unit_Pool_A = [""];
  };

//-------------------------------------------------------------------------------------------------

// AFGHAN NATIONAL POLICE (BLUFOR)
	case 6:
	{
    _Unit_Pool_S = ["UK3CB_ANA_B_CREW","UK3CB_ANA_B_HELI_PILOT","UK3CB_ANP_B_SL","UK3CB_ANP_B_RIF_2","UK3CB_ANP_B_MD","UK3CB_ANP_B_AR","UK3CB_ANP_B_AT"];
    _Unit_Pool_V = ["UK3CB_ANP_B_Offroad_M2","UK3CB_ANP_B_Hilux_Dshkm"];
    _Unit_Pool_T = [""]; 
    _Unit_Pool_A = [""];
  };
 
//-------------------------------------------------------------------------------------------------

// CHERNARUS POLICE DEPARTAMENT (BLUFOR)
  case 7:
  {
    _Unit_Pool_S = ["UK3CB_CPD_B_PILOT","UK3CB_CPD_B_PAT_2","UK3CB_CPD_B_PAT","UK3CB_CPD_B_PAT_RIF_2","UK3CB_CPD_B_PAT_RIF_LITE","UK3CB_CPD_B_PAT_RIF_BOLT"];
    _Unit_Pool_V = ["UK3CB_CPD_B_Hilux_Dshkm","UK3CB_CPD_B_Lada","UK3CB_CPD_B_S1203"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["UK3CB_CPD_B_Mi8AMT"];
  };

//-------------------------------------------------------------------------------------------------

// CHERNARUS POLICE SWAT (BLUFOR)
  case 8:
  {
    _Unit_Pool_S = ["rhsgref_cdf_b_air_pilot", "rhsgref_cdf_b_ngd_crew", "UK3CB_CPD_B_OREL_TL", "UK3CB_CPD_B_OREL_RIF_2","UK3CB_CPD_B_OREL_RIF_1","UK3CB_CPD_B_OREL_MD","UK3CB_CPD_B_OREL_AR"];
    _Unit_Pool_V = ["UK3CB_CPD_B_TIGR_FFV","UK3CB_CPD_B_Offroad_HMG"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// COLD WAR EARLY US (BLUFOR)
  case 9:
  {
    _Unit_Pool_S = ["UK3CB_CW_US_B_EARLY_HELI_PILOT", "UK3CB_CW_US_B_EARLY_CREW", "UK3CB_CW_US_B_EARLY_RADIO", "UK3CB_CW_US_B_EARLY_RIF_2","UK3CB_CW_US_B_EARLY_MD","UK3CB_CW_US_B_EARLY_MK","UK3CB_CW_US_B_EARLY_MG","UK3CB_CW_US_B_EARLY_LAT","UK3CB_CW_US_B_EARLY_GL","UK3CB_CW_US_B_EARLY_AR","UK3CB_CW_US_B_EARLY_AT","UK3CB_CW_US_B_EARLY_AA"];
    _Unit_Pool_V = ["UK3CB_CW_US_B_EARLY_M151_Jeep_HMG","UK3CB_CW_US_B_EARLY_M151_Jeep_TOW","UK3CB_CW_US_B_EARLY_M939_Guntruck","UK3CB_CW_US_B_EARLY_M113_M2"]
    _Unit_Pool_T = ["UK3CB_CW_US_B_EARLY_M1A1"]; 
    _Unit_Pool_A = ["UK3CB_CW_US_B_EARLY_AH1Z_GS","UK3CB_CW_US_B_EARLY_UH1H_M240"];
  };
  
//-------------------------------------------------------------------------------------------------

// COLD WAR LATE US (BLUFOR)
  case 10:
  {
    _Unit_Pool_S = ["UK3CB_CW_US_B_LATE_HELI_PILOT","UK3CB_CW_US_B_LATE_CREW","UK3CB_CW_US_B_LATE_RADIO","UK3CB_CW_US_B_LATE_RIF_1","UK3CB_CW_US_B_LATE_MD","UK3CB_CW_US_B_LATE_MK","UK3CB_CW_US_B_LATE_MG","UK3CB_CW_US_B_LATE_LAT","UK3CB_CW_US_B_LATE_GL","UK3CB_CW_US_B_LATE_AR","UK3CB_CW_US_B_LATE_AT","UK3CB_CW_US_B_LATE_AA"];
    _Unit_Pool_V = ["UK3CB_CW_US_B_LATE_M1025_M2","UK3CB_CW_US_B_LATE_M1025_TOW","UK3CB_CW_US_B_LATE_M939_Guntruck","UK3CB_CW_US_B_LATE_M113_M2","UK3CB_CW_US_B_LATE_M113_M240"];
    _Unit_Pool_T = ["UK3CB_CW_US_B_LATE_M2A2","UK3CB_CW_US_B_LATE_M1A1"];
    _Unit_Pool_A = ["UK3CB_CW_US_B_LATE_AH64_GS","UK3CB_CW_US_B_LATE_UH60M"];
  };
  
//-------------------------------------------------------------------------------------------------
  
// TAKISTAN ARMY (BLUFOR)
  case 11:
  {
    _Unit_Pool_S = ["UK3CB_TKA_B_HELI_PILOT","UK3CB_TKA_B_CREW","UK3CB_TKA_B_SL","UK3CB_TKA_B_MD","UK3CB_TKA_B_MG","UK3CB_TKA_B_LAT","UK3CB_TKA_B_GL","UK3CB_TKA_B_AR","UK3CB_TKA_B_AT"];
    _Unit_Pool_V = ["UK3CB_TKA_B_BRDM2","UK3CB_TKA_B_Hilux_Dshkm","UK3CB_TKA_B_Hilux_Spg9","UK3CB_TKA_B_Hilux_Zu23","UK3CB_TKA_B_M1025_M2","UK3CB_TKA_B_Ural_Zu23","UK3CB_TKA_B_BTR40_MG","UK3CB_TKA_B_BTR60","UK3CB_TKA_B_M113_M2","UK3CB_TKA_B_MTLB_PKT"];
    _Unit_Pool_T = ["UK3CB_TKA_B_ZsuTank","UK3CB_TKA_B_BMP1","UK3CB_TKA_B_BMP2","UK3CB_TKA_B_T72B","UK3CB_TKA_B_T72BM"];
    _Unit_Pool_A = ["UK3CB_TKA_B_Mi8AMTSh","UK3CB_TKA_B_UH1H_M240"];
  };

  
//-------------------------------------------------------------------------------------------------
  
// TAKISTAN POLICE (BLUFOR)
  case 12:
  {
    _Unit_Pool_S = ["UK3CB_TKA_B_HELI_PILOT","UK3CB_TKA_B_CREW","UK3CB_TKP_B_QRF_SL","UK3CB_TKP_B_QRF_RIF_2","UK3CB_TKP_B_QRF_MD","UK3CB_TKP_B_QRF_MK","UK3CB_TKP_B_QRF_MG","UK3CB_TKP_B_QRF_AR","UK3CB_TKP_B_QRF_AT"];
    _Unit_Pool_V = ["UK3CB_TKP_B_LandRover_M2","UK3CB_TKP_B_LandRover_Open"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  }; 

 
//-------------------------------------------------------------------------------------------------

// TAKISTAN PROGOVERMENT MILITIA (BLUFOR)
  case 13:
  {
    _Unit_Pool_S = ["UK3CB_TKM_B_ENG","UK3CB_TKM_B_ENG","UK3CB_TKM_B_WAR","UK3CB_TKM_B_SPOT","UK3CB_TKM_B_RIF_2","UK3CB_TKM_B_MD","UK3CB_TKM_B_MG","UK3CB_TKM_B_LAT","UK3CB_TKM_B_GL","UK3CB_TKM_B_AR","UK3CB_TKM_B_AT","UK3CB_TKM_B_AA"];
    _Unit_Pool_V = ["UK3CB_TKM_B_Hilux_Dshkm","UK3CB_TKM_B_Hilux_Rocket","UK3CB_TKM_B_Hilux_Spg9","UK3CB_TKM_B_Hilux_Zu23","UK3CB_TKM_B_BTR40_MG","UK3CB_TKM_B_BTR60","UK3CB_TKM_B_V3S_Zu23","UK3CB_TKM_B_MTLB_PKT"];
    _Unit_Pool_T = ["UK3CB_TKM_B_BMP1","UK3CB_TKM_B_T34","UK3CB_TKM_B_T55"];
    _Unit_Pool_A = [];
  };
 

//-------------------------------------------------------------------------------------------------

// CHERNARUSSIAN DEFENCE FORCES (BLUFOR)
  case 14:
  {
    _Unit_Pool_S = ["rhsgref_cdf_b_ngd_crew","rhsgref_cdf_b_air_pilot","rhsgref_cdf_b_ngd_squadleader","rhsgref_cdf_b_ngd_rifleman_rpg75","rhsgref_cdf_b_reg_grenadier","rhsgref_cdf_b_reg_medic","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_grenadier_rpg","rhsgref_cdf_b_reg_specialist_aa"];
    _Unit_Pool_V = ["rhsgref_cdf_b_reg_uaz_dshkm","rhsgref_cdf_b_reg_uaz_spg9","rhsgref_BRDM2_b","UK3CB_B_BTR40_MG_CDF","rhsgref_cdf_b_btr70"];
    _Unit_Pool_T = ["rhsgref_cdf_b_zsu234","rhsgref_cdf_b_bmp1","rhsgref_cdf_b_bmp2e","UK3CB_B_T34_CDF","UK3CB_B_T55_CDF","rhsgref_cdf_b_t72bb_tv","rhsgref_cdf_b_t80b_tv"];
    _Unit_Pool_A = ["rhsgref_cdf_b_reg_Mi17Sh"];
  };


//-------------------------------------------------------------------------------------------------

// BRITISH ARMY DESERT (BLUFOR)
  case 15:
  {
    _Unit_Pool_S = ["UK3CB_BAF_Crewman_DDPM","UK3CB_BAF_HeliPilot_Army_DDPM","UK3CB_BAF_SC_DDPM","UK3CB_BAF_LAT_ILAW_DDPM","UK3CB_BAF_MGLMG_DDPM","UK3CB_BAF_MGGPMG_DDPM","UK3CB_BAF_Marksman_DDPM","UK3CB_BAF_Grenadier_DDPM","UK3CB_BAF_Medic_DDPM"];
    _Unit_Pool_V = ["UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Sand_A_DDPM","UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A_DDPM","UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A_DDPM","UK3CB_BAF_Jackal2_L2A1_D_DDPM","UK3CB_BAF_FV432_Mk3_RWS_Sand_DDPM"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["UK3CB_BAF_Apache_AH1_CAS_DDPM","UK3CB_BAF_Wildcat_AH1_CAS_6A_DDPM"];
  };
 


//-------------------------------------------------------------------------------------------------

// BRITISH ARMY MTP /MULTI-TERRAIN PATTERN/  (BLUFOR)
  case 16:
  {
    _Unit_Pool_S = ["UK3CB_BAF_Crewman_RTR_MTP","UK3CB_BAF_HeliPilot_Army_MTP","UK3CB_BAF_FT_MTP_H","UK3CB_BAF_LAT_ILAW_MTP_H","UK3CB_BAF_MGLMG_MTP_H","UK3CB_BAF_MGGPMG_MTP_H","UK3CB_BAF_Marksman_MTP_H","UK3CB_BAF_Grenadier_MTP_H","UK3CB_BAF_Medic_MTP_H"];
    _Unit_Pool_V = ["UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Green_B_Smock_DPMW","UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B_Smock_DPMW","UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_B_Smock_DPMW"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["UK3CB_BAF_Wildcat_AH1_CAS_8A_Smock_DPMW"];
  };

//-------------------------------------------------------------------------------------------------


// HORIZON ISLANDS DEFENCE FORCES (BLUFOR)
  case 17:
  {
    _Unit_Pool_S = ["rhsgref_hidf_crewman","rhsgref_hidf_helipilot","rhsgref_hidf_squadleader","rhsgref_hidf_rifleman_m72","rhsgref_hidf_marksman","rhsgref_hidf_machinegunner","rhsgref_hidf_grenadier","rhsgref_hidf_medic","rhsgref_hidf_autorifleman","rhsgref_hidf_boat_driver"];
    _Unit_Pool_V = ["CUP_B_M1151_M2_DSRT_USMC","CUP_B_M1167_DSRT_USMC","CUP_B_RG31_M2_USMC","CUP_B_RG31_Mk19_USMC","CUP_B_LAV25M240_desert_USMC"];
    _Unit_Pool_T = ["UK3CB_B_M151_Jeep_HMG_HIDF","UK3CB_B_M151_Jeep_TOW_HIDF","rhsgref_hidf_m1025_m2","UK3CB_B_M939_Guntruck_HIDF","rhsgref_hidf_m113a3_m2"];
    _Unit_Pool_A = ["rhs_uh1h_hidf_gunship"];
  };
  
//-------------------------------------------------------------------------------------------------


// DAM (BLUFOR)
  case 18:
  {
    _Unit_Pool_S = ["CPC_ME_B_DAM_soldier_crew","CPC_ME_B_DAM_soldier_HeliPilot","CPC_ME_B_DAM_soldier_TL","CPC_ME_B_DAM_soldier_LAT","CPC_ME_B_DAM_soldier_Medic","CPC_ME_B_DAM_soldier_M","CPC_ME_B_DAM_soldier_MG","CPC_ME_B_DAM_soldier_GL","CPC_ME_B_DAM_soldier_AR","CPC_ME_B_DAM_soldier_AT","CPC_ME_B_DAM_soldier_AA"];
    _Unit_Pool_V = ["CPC_ME_B_DAM_M1025_m2","CPC_ME_B_DAM_BTR70","CPC_ME_B_DAM_M113_m2"];
    _Unit_Pool_T = ["CPC_ME_B_DAM_ZSU"];
    _Unit_Pool_A = ["CPC_ME_B_DAM_UH1H_gunship"];
  };
  
//-------------------------------------------------------------------------------------------------

// US ARMY OCP (BLUFOR)
  case 19:
  {
    _Unit_Pool_S = ["rhsusf_army_ocp_crewman","rhsusf_army_ocp_ah64_pilot","rhsusf_army_ocp_arb_teamleader","rhsusf_army_ocp_arb_riflemanat","rhsusf_army_ocp_arb_marksman","rhsusf_army_ocp_arb_machinegunner","rhsusf_army_ocp_arb_grenadier","rhsusf_army_ocp_arb_medic","rhsusf_army_ocp_arb_autorifleman","rhsusf_army_ocp_arb_maaws","rhsusf_army_ocp_arb_rifleman_m590"];
    _Unit_Pool_V = ["rhsusf_m1240a1_m2_usarmy_d","rhsusf_m1240a1_m240_usarmy_d","rhsusf_stryker_m1126_m2_d"];
    _Unit_Pool_T = ["RHS_M2A3_BUSKIII"];
    _Unit_Pool_A = ["RHS_UH60M_d","RHS_MELB_AH6M"];
  };

//-------------------------------------------------------------------------------------------------

// US ARMY UCP (BLUFOR)
  case 20:
  {
    _Unit_Pool_S = ["rhsusf_army_ucp_crewman","rhsusf_army_ucp_ah64_pilot","rhsusf_army_ucp_teamleader","rhsusf_army_ucp_sniper_m24sws","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_machinegunner","rhsusf_army_ucp_grenadier","rhsusf_army_ucp_medic","rhsusf_army_ucp_autorifleman","rhsusf_army_ucp_maaws","rhsusf_army_ucp_aa"]];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_MK19_USMC","CUP_B_HMMWV_Avenger_USMC","CUP_B_HMMWV_TOW_USMC"];
    _Unit_Pool_T = ["RHS_M2A3_BUSKI_wd","rhsusf_m1a1aimwd_usarmy"];
    _Unit_Pool_A = ["RHS_UH60M","RHS_MELB_AH6M"];
  };

//-------------------------------------------------------------------------------------------------

// SOCOM Marine (BLUFOR)
  case 21:
  {
    _Unit_Pool_S = ["rhsusf_socom_swcc_officer","rhsusf_socom_marsoc_teamchief","rhsusf_socom_marsoc_sarc","rhsusf_socom_marsoc_cso_cqb","rhsusf_socom_marsoc_cso_mk17","rhsusf_socom_marsoc_marksman","rhsusf_socom_marsoc_cso_grenadier"];
    _Unit_Pool_V = ["rhsusf_m1245_m2crows_socom_d","rhsusf_M1239_M2_Deploy_socom_d","rhsusf_M1238A1_M2_socom_d","rhsusf_M1078A1R_SOV_M2_D_fmtv_socom"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["RHS_UH60M","RHS_MELB_AH6M"];
  };

//-------------------------------------------------------------------------------------------------

// USMC MARPAT DESERT (BLUFOR)
  case 22:
  {
    _Unit_Pool_S = ["rhsusf_usmc_marpat_d_crewman","rhsusf_usmc_marpat_d_helipilot","rhsusf_usmc_marpat_d_teamleader","rhsusf_usmc_marpat_d_riflemanat","rhsusf_usmc_marpat_d_machinegunner","rhsusf_usmc_marpat_d_grenadier","rhsusf_usmc_marpat_d_marksman","rhsusf_usmc_marpat_d_autorifleman_m249","rhsusf_usmc_marpat_d_smaw","rhsusf_usmc_marpat_d_stinger"];
    _Unit_Pool_V = ["rhsusf_m1043_d_s_m2","rhsusf_m1045_d_s","rhsusf_m1a1fep_d"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["RHS_UH1Y_d"];
  };

//-------------------------------------------------------------------------------------------------

// USMC MARPAT WOODLAND (BLUFOR)
  case 23:
  {
    _Unit_Pool_S = ["rhsusf_usmc_marpat_wd_crewman","rhsusf_usmc_marpat_wd_helipilot","rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_riflemanat","rhsusf_usmc_marpat_wd_machinegunner","rhsusf_usmc_marpat_wd_grenadier","rhsusf_usmc_marpat_wd_marksman","rhsusf_usmc_marpat_wd_autorifleman_m249","rhsusf_usmc_marpat_wd_smaw","rhsusf_usmc_marpat_wd_stinger"];
    _Unit_Pool_V = ["rhsusf_m1043_w_s_m2","rhsusf_m1045_w_s","rhsusf_CGRCAT1A2_M2_usmc_wd"];
    _Unit_Pool_T = ["rhsusf_m1a1hc_wd"];
    _Unit_Pool_A = ["RHS_UH1Y"];
  };

//-------------------------------------------------------------------------------------------------

// GM GERMANY WOODLAND (BLUFOR)
  case 24:
  {
    _Unit_Pool_S = ["gm_ge_army_crew_mp2a1_80_oli","len_bw_pilot_mp2a1_80_oli_aa","gm_ge_army_squadleader_g3a3_p2a1_80_ols","gm_ge_army_medic_g3a3_80_ols","gm_ge_army_marksman_g3a3_80_ols","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_antitank_g3a3_pzf84_80_ols","gm_ge_army_grenadier_g3a3_80_ols","gm_ge_army_antitank_g3a3_pzf44_80_ols"];
    _Unit_Pool_V = ["gm_ge_army_iltis_milan","gm_ge_army_u1300l_cargo","gm_ge_army_fuchsa0_reconnaissance","gm_ge_army_m113a1g_apc","gm_ge_army_m113a1g_apc_milan"];
    _Unit_Pool_T = ["gm_ge_army_Leopard1a1","gm_ge_army_Leopard1a3","gm_ge_army_Leopard1a5","gm_ge_army_gepard1a1"];
    _Unit_Pool_A = [];
  };

//-------------------------------------------------------------------------------------------------

// GM GERMANY WINTER (BLUFOR)
  case 25:
  {
    _Unit_Pool_S = ["gm_ge_army_crew_mp2a1_80_oli","len_bw_pilot_mp2a1_80_oli_aa","gm_ge_army_squadleader_g3a3_p2a1_parka_80_win","gm_ge_army_medic_g3a3_parka_80_win","gm_ge_army_marksman_g3a3_parka_80_win","gm_ge_army_machinegunner_mg3_parka_80_win","gm_ge_army_antitank_g3a3_pzf84_parka_80_win","gm_ge_army_grenadier_g3a3_parka_80_win","gm_ge_army_antitank_g3a3_pzf44_parka_80_win"];
    _Unit_Pool_V = ["gm_ge_army_iltis_milan","gm_ge_army_u1300l_cargo","gm_ge_army_fuchsa0_reconnaissance","gm_ge_army_m113a1g_apc","gm_ge_army_m113a1g_apc_milan"];
    _Unit_Pool_T = ["gm_ge_army_Leopard1a1","gm_ge_army_Leopard1a3","gm_ge_army_Leopard1a5","gm_ge_army_gepard1a1"];
    _Unit_Pool_A = [];
  };

//-------------------------------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////
//////////////////////OPFOR///////////////////////////////////////
//////////////////////////////////////////////////////////////////

// CHERNARUS CIVILIAN MILITIA (OPFOR)
	case 26:
	{
    _Unit_Pool_S = ["UK3CB_CCM_O_COM","UK3CB_CCM_O_COM","UK3CB_CCM_O_TL","UK3CB_CCM_O_SNI","UK3CB_CCM_O_RIF_BOLT","UK3CB_CCM_O_RIF_2","UK3CB_CCM_O_MD","UK3CB_CCM_O_AR","UK3CB_CCM_O_AT","UK3CB_CCM_O_AT_ASST"];
    _Unit_Pool_V = ["UK3CB_CCM_O_Hilux_Pkm","UK3CB_CCM_O_Hilux_Dshkm"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// COLD WAR USSR LATE (OPFOR)
	case 27:
	{
    _Unit_Pool_S = ["UK3CB_CW_SOV_O_EARLY_TANK_CREW","UK3CB_CW_SOV_O_LATE_HELI_PILOT","UK3CB_CW_SOV_O_EARLY_RADIO","UK3CB_CW_SOV_O_EARLY_MD","UK3CB_CW_SOV_O_EARLY_MK","UK3CB_CW_SOV_O_EARLY_MG","UK3CB_CW_SOV_O_EARLY_LAT","UK3CB_CW_SOV_O_EARLY_GL","UK3CB_CW_SOV_O_EARLY_AR","UK3CB_CW_SOV_O_EARLY_AT","UK3CB_CW_SOV_O_EARLY_AA"];
    _Unit_Pool_V = ["UK3CB_CW_SOV_O_LATE_BRDM2","UK3CB_CW_SOV_O_LATE_BRDM2_ATGM","UK3CB_CW_SOV_O_LATE_UAZ_MG","UK3CB_CW_SOV_O_LATE_UAZ_SPG9","UK3CB_CW_SOV_O_LATE_Ural_Zu23","UK3CB_CW_SOV_O_LATE_BTR80","UK3CB_CW_SOV_O_LATE_MTLB_PKT"];
    _Unit_Pool_T = ["UK3CB_CW_SOV_O_LATE_BMP1","UK3CB_CW_SOV_O_LATE_BMP2","UK3CB_CW_SOV_O_LATE_ZsuTank","UK3CB_CW_SOV_O_LATE_T72BA","UK3CB_CW_SOV_O_LATE_T72BB"];
    _Unit_Pool_A = ["UK3CB_CW_SOV_O_LATE_Mi8AMTSh"];
  };
  
//-------------------------------------------------------------------------------------------------

// COLD WAR USSR VDV EARLY (OPFOR)
	case 28:
	{
    _Unit_Pool_S = ["UK3CB_CW_SOV_O_EARLY_TANK_CREW", "UK3CB_CW_SOV_O_EARLY_HELI_PILOT", "UK3CB_CW_SOV_O_EARLY_VDV_RADIO", "UK3CB_CW_SOV_O_EARLY_VDV_MD","UK3CB_CW_SOV_O_EARLY_VDV_MK","UK3CB_CW_SOV_O_EARLY_VDV_MG","UK3CB_CW_SOV_O_EARLY_VDV_LAT","UK3CB_CW_SOV_O_EARLY_VDV_GL","UK3CB_CW_SOV_O_EARLY_VDV_AR","UK3CB_CW_SOV_O_EARLY_VDV_AT","UK3CB_CW_SOV_O_EARLY_VDV_AA"];
    _Unit_Pool_V = ["UK3CB_CW_SOV_O_EARLY_BRDM2","UK3CB_CW_SOV_O_EARLY_BRDM2_ATGM","UK3CB_CW_SOV_O_EARLY_UAZ_MG","UK3CB_CW_SOV_O_EARLY_UAZ_SPG9","UK3CB_CW_SOV_O_EARLY_BTR40_MG","UK3CB_CW_SOV_O_EARLY_BTR70","UK3CB_CW_SOV_O_EARLY_MTLB_PKT"];
    _Unit_Pool_T = ["UK3CB_CW_SOV_O_EARLY_BMP1","UK3CB_CW_SOV_O_EARLY_ZsuTank","UK3CB_CW_SOV_O_EARLY_T55","UK3CB_CW_SOV_O_EARLY_T72B","UK3CB_CW_SOV_O_EARLY_T72BM"];
    _Unit_Pool_A = ["UK3CB_CW_SOV_O_EARLY_Mi8AMTSh"];
  };
  
//-------------------------------------------------------------------------------------------------

// TAKISTAN INSURGENTS (OPFOR)
	case 29:
	{
    _Unit_Pool_S = ["UK3CB_TKM_O_RIF_2", "UK3CB_TKM_O_RIF_2", "UK3CB_TKM_O_WAR", "UK3CB_TKM_O_SPOT","UK3CB_TKM_O_MD","UK3CB_TKM_O_MG","UK3CB_TKM_O_LAT","UK3CB_TKM_O_GL","UK3CB_TKM_O_AR","UK3CB_TKM_O_AT","UK3CB_TKM_O_AA"];
    _Unit_Pool_V = ["UK3CB_TKM_O_Hilux_Dshkm","UK3CB_TKM_O_Hilux_Spg9","UK3CB_TKM_O_Hilux_Zu23","UK3CB_TKM_O_UAZ_Dshkm","UK3CB_TKM_O_UAZ_SPG9","UK3CB_TKM_O_BTR40_MG","UK3CB_TKM_O_BTR60","UK3CB_TKM_O_MTLB_PKT","UK3CB_TKM_O_V3S_Zu23"];
    _Unit_Pool_T = ["UK3CB_TKM_O_BMP1","UK3CB_TKM_O_T34","UK3CB_TKM_O_T55"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// TAKISTAN NATIONAL ARMY (OPFOR)
	case 30:
	{
    _Unit_Pool_S = ["UK3CB_TKA_O_CREW", "UK3CB_TKA_O_HELI_PILOT", "UK3CB_TKA_O_TL", "UK3CB_TKA_O_MD","UK3CB_TKA_O_MK","UK3CB_TKA_O_MG","UK3CB_TKA_O_LAT","UK3CB_TKA_O_GL","UK3CB_TKA_O_AR","UK3CB_TKA_O_AT","UK3CB_TKA_O_AA"];
    _Unit_Pool_V = ["UK3CB_TKA_O_LR_SF_M2","UK3CB_TKA_O_GAZ_Vodnik_KVPT","UK3CB_TKA_O_GAZ_Vodnik_PKT","UK3CB_TKA_O_BRDM2","UK3CB_TKA_O_BRDM2_ATGM","UK3CB_TKA_O_BTR70","UK3CB_TKA_O_M113_M2","UK3CB_TKA_O_MTLB_PKT"];
    _Unit_Pool_T = ["UK3CB_TKA_O_ZsuTank","UK3CB_TKA_O_BMP1","UK3CB_TKA_O_BMP2","UK3CB_TKA_O_T55","UK3CB_TKA_O_T72A"];
    _Unit_Pool_A = ["UK3CB_TKA_O_Mi8AMTSh","UK3CB_TKA_O_UH1H_M240"];
  };
  
//-------------------------------------------------------------------------------------------------

// TAKISTAN MILITIA (OPFOR)
	case 31:
	{
    _Unit_Pool_S = ["UK3CB_TKA_O_CREW", "UK3CB_TKA_O_HELI_PILOT", "UK3CB_TKP_O_SL", "UK3CB_TKP_O_MD","UK3CB_TKP_O_MG","UK3CB_TKP_O_AR","UK3CB_TKP_O_AT","UK3CB_TKP_O_RIF_2"];
    _Unit_Pool_V = ["UK3CB_TKP_O_Hilux_Dshkm","UK3CB_TKP_O_LandRover_M2"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// CHERNARUSSIAN MOVMENT OF THE RED STAR /ChDKZ/ (OPFOR)
	case 32:
	{
    _Unit_Pool_S = ["rhsgref_ins_crew","rhsgref_ins_pilot","rhsgref_ins_squadleader","rhsgref_ins_rifleman_RPG26","rhsgref_ins_grenadier","rhsgref_ins_rifleman","rhsgref_ins_medic","rhsgref_ins_grenadier_rpg","rhsgref_ins_rifleman_akm","rhsgref_ins_specialist_aa","rhsgref_ins_militiaman_mosin"];
    _Unit_Pool_V = ["rhsgref_BRDM2_ins","rhsgref_BRDM2_ATGM_ins","rhsgref_ins_uaz_dshkm","rhsgref_ins_uaz_spg9","rhsgref_ins_btr70","rhsgref_ins_gaz66_zu23"];
    _Unit_Pool_T = ["rhsgref_ins_bmd1","rhsgref_ins_bmd2","rhsgref_ins_t72ba","rhsgref_ins_t72bb","rhsgref_ins_zsu234"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// LIVONIA EAST GERMAN STR (OPFOR)
	case 33:
	{
    _Unit_Pool_S = ["gm_gc_army_crew_mpiaks74nk_80_blk","len_nva_pilot_mpiaks74nk_80_blu_aa","gm_gc_army_squadleader_mpiak74n_80_str","gm_gc_army_rifleman_mpiak74n_80_str","gm_gc_army_medic_mpiak74n_80_str","gm_gc_army_marksman_svd_80_str","gm_gc_army_machinegunner_pk_80_str","gm_gc_army_machinegunner_lmgrpk_80_str","gm_gc_army_antitank_mpiak74n_rpg7_80_str","gm_gc_army_antitank_assistant_mpiak74n_rpg7_80_str"];
    _Unit_Pool_V = ["gm_gc_army_btr60pb","gm_gc_army_brdm2"];
    _Unit_Pool_T = ["gm_gc_army_zsu234v1","gm_gc_army_bmp1sp2","gm_gc_army_pt76b","gm_gc_army_t55","gm_gc_army_t55am2b"];
    _Unit_Pool_A = ["len_mi8amt_nva"];
  };
  
//-------------------------------------------------------------------------------------------------

// LIVONIA EAST GERMAN WINTER (OPFOR)
	case 34:
	{
    _Unit_Pool_S = ["gm_gc_army_crew_mpiaks74nk_80_blk","len_nva_pilot_mpiaks74nk_80_blu_aa","gm_gc_army_squadleader_mpiak74n_80_win","gm_gc_army_rifleman_mpiak74n_80_win","gm_gc_army_medic_mpiak74n_80_win","gm_gc_army_marksman_svd_80_win","gm_gc_army_machinegunner_pk_80_win","gm_gc_army_machinegunner_lmgrpk_80_win","gm_gc_army_antitank_mpiak74n_rpg7_80_win","gm_gc_army_antitank_assistant_mpiak74n_rpg7_80_win"];
    _Unit_Pool_V = ["gm_gc_army_btr60pb","gm_gc_army_brdm2"];
    _Unit_Pool_T = ["gm_gc_army_zsu234v1","gm_gc_army_bmp1sp2","gm_gc_army_pt76b","gm_gc_army_t55","gm_gc_army_t55am2b"];
    _Unit_Pool_A = ["len_mi8amt_nva"];
  };
  
//-------------------------------------------------------------------------------------------------
// LIVONIAN ARMY CAMO02 (OPFOR)
	case 35:
	{
    _Unit_Pool_S = ["len_liv_army_crew_savz26_80_blk", "len_liv_af_pilot_80_01","len_liv_army_squadleader_akm_80_camo02","len_liv_army_rifleman_akm_80_camo02","len_liv_army_medic_akm_80_camo02","len_liv_army_marksman_svd_80_camo02","len_liv_army_machinegunner_pk_80_camo02","len_liv_army_machinegunner_lmgrpk_80_camo02","len_liv_army_antitank_akm_rpg7_80_camo02","len_liv_army_antitank_assistant_akm_rpg7_80_camo02"];
    _Unit_Pool_V = ["len_liv_army_uaz_spg9_oli","len_liv_army_brdm2_cam","len_liv_army_btr60pa_cam","len_liv_army_ot64a_cam"];
    _Unit_Pool_T = ["len_liv_army_zsu234v1_cam","len_liv_army_bmp1sp2_cam","len_liv_army_pt76b_cam","len_liv_army_t55a_cam","len_liv_army_t72bv_oli"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// LIVONIAN ARMY CAMO01 (OPFOR)
	case 36:
	{
    _Unit_Pool_S = ["len_liv_army_crew_savz26_80_blk", "len_liv_af_pilot_80_01","len_liv_para_squadleader_akms_80_camo01","len_liv_para_rifleman_akms_80_camo01","len_liv_para_medic_savz26_80_camo01","len_liv_para_marksman_svd_80_camo01","len_liv_para_machinegunner_pk_80_camo01","len_liv_para_machinegunner_lmgrpk_80_camo01","len_liv_para_antitank_akms_rpg7_80_camo01","len_liv_para_antitank_assistant_akms_rpg7_80_camo01"];
    _Unit_Pool_V = ["len_liv_army_uaz_spg9_oli","len_liv_army_brdm2_cam","len_liv_army_btr60pa_cam","len_liv_army_ot64a_cam"];
    _Unit_Pool_T = ["len_liv_army_zsu234v1_cam","len_liv_army_bmp1sp2_cam","len_liv_army_pt76b_cam","len_liv_army_t55a_cam","len_liv_army_t72bv_oli"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// LIVONIAN ARMY WINTER (OPFOR)
	case 37:
	{
    _Unit_Pool_S = ["len_liv_army_crew_savz26_80_blk", "len_liv_af_pilot_80_01","len_liv_army_squadleader_akm_80_winter","len_liv_army_rifleman_akm_80_winter","len_liv_army_medic_akm_80_winter","len_liv_army_machinegunner_pk_80_winter","len_liv_army_machinegunner_lmgrpk_80_winter","len_liv_army_antitank_akm_rpg7_80_winter","len_liv_army_antitank_assistant_akm_rpg7_80_winter"];
    _Unit_Pool_V = ["len_liv_army_uaz_spg9_oli","len_liv_army_brdm2_cam","len_liv_army_btr60pa_cam","len_liv_army_ot64a_cam"];
    _Unit_Pool_T = ["len_liv_army_zsu234v1_cam","len_liv_army_bmp1sp2_cam","len_liv_army_pt76b_cam","len_liv_army_t55a_cam","len_liv_army_t72bv_oli"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// LIVONIAN ARMY EARLY (BLACK CAMO) (OPFOR)
	case 38:
	{
    _Unit_Pool_S = ["len_liv_army_crew_savz26_80_blk", "len_liv_af_pilot_80_01","len_liv_wm_squadleader_ppsh_80_blk_early","len_liv_wm_rifleman_m9130_80_blk_early","len_liv_wm_medic_sks_80_blk_late","len_liv_wm_marksman_m9130_80_blk_late","len_liv_wm_machinegunner_mg42_80_blk_early","len_liv_wm_machinegunner_lmgrpk_80_blk_late","len_liv_wm_antitank_sks_rpg7_80_blk_late","len_liv_wm_antitank_assistant_sks_rpg7_80_blk_late"];
    _Unit_Pool_V = ["len_liv_army_uaz_spg9_oli","len_liv_army_brdm2_cam","len_liv_army_btr60pa_cam","len_liv_army_ot64a_cam"];
    _Unit_Pool_T = ["len_liv_army_zsu234v1_cam","len_liv_army_bmp1sp2_cam","len_liv_army_pt76b_cam","len_liv_army_t55a_cam","len_liv_army_t72bv_oli"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// POLISH ARMY CAMO (OPFOR)
	case 39:
	{
    _Unit_Pool_S = ["gm_pl_army_crew_pm_80_moro", "len_lwp_pilot_ak47_80_blu_aa", "gm_pl_army_squadleader_akm_80_moro","gm_pl_army_rifleman_akm_80_moro","gm_pl_army_medic_akm_80_moro","gm_pl_army_marksman_svd_80_moro","gm_pl_army_machinegunner_pk_80_moro","gm_pl_army_machinegunner_rpk_80_moro","gm_pl_army_antitank_akm_rpg7_80_moro","gm_pl_army_antitank_assistant_akm_rpg7_80_moro"];
    _Unit_Pool_V = ["gm_pl_army_brdm2","gm_pl_army_ot64a"];
    _Unit_Pool_T = ["gm_pl_army_zsu234v1","gm_pl_army_bmp1sp2","gm_pl_army_pt76b","gm_pl_army_t55ak"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// POLISH ARMY WINTER (OPFOR)
	case 40:
	{
    _Unit_Pool_S = ["gm_pl_army_crew_pm_80_moro", "len_lwp_pilot_ak47_80_blu_aa", "gm_pl_army_squadleader_akm_80_win","gm_pl_army_rifleman_akm_80_win","gm_pl_army_medic_akm_80_win","gm_pl_army_marksman_svd_80_win","gm_pl_army_machinegunner_pk_80_win","gm_pl_army_machinegunner_rpk_80_win","gm_pl_army_antitank_akm_rpg7_80_win","gm_pl_army_antitank_assistant_akm_rpg7_80_win"];
    _Unit_Pool_V = ["gm_pl_army_brdm2","gm_pl_army_ot64a"];
    _Unit_Pool_T = ["gm_pl_army_zsu234v1","gm_pl_army_bmp1sp2","gm_pl_army_pt76b","gm_pl_army_t55ak"];
    _Unit_Pool_A = [];
  };
  
 
//-------------------------------------------------------------------------------------------------

// RUSSIAN MOTOR RIFLE TROOPS (MSV) (OPFOR)
	case 41:
	{
    _Unit_Pool_S = ["rhs_msv_armoredcrew", "rhs_pilot_combat_heli", "rhs_msv_sergeant", "rhs_msv_RShG2","rhs_msv_LAT","rhs_msv_medic","rhs_msv_machinegunner","rhs_msv_grenadier_rpg","rhs_msv_aa"];
    _Unit_Pool_V = ["rhsgref_BRDM2_msv","rhsgref_BRDM2_ATGM_msv","rhs_btr80_msv","RHS_Ural_Zu23_MSV_01"];
    _Unit_Pool_T = ["rhs_bmp1p_msv","rhs_bmp2d_msv","rhs_bmp3_msv","rhs_t80um","rhs_t80bvk","rhs_zsu234_aa"];
    _Unit_Pool_A = ["RHS_Mi8MTV3_heavy_vvs","RHS_Mi8MTV3_vvs"];
  };
  
//-------------------------------------------------------------------------------------------------

// RUSSIAN VDV WOODLAND (OPFOR)
	case 42:
	{
    _Unit_Pool_S = ["rhs_vdv_armoredcrew","rhs_pilot_combat_heli","rhs_vdv_rifleman_alt","rhs_vdv_RShG2","rhs_vdv_LAT","rhs_vdv_grenadier_alt","rhs_vdv_machinegunner","rhs_vdv_arifleman","rhs_vdv_at","rhs_vdv_aa","rhs_vdv_medic"];
    _Unit_Pool_V = ["rhs_tigr_m_3camo_vdv","rhs_btr80_vdv","rhs_gaz66_zu23_vdv"];
    _Unit_Pool_T = ["rhs_sprut_vdv","rhs_bmd1p","rhs_bmd2m","rhs_bmd4ma_vdv"];
    _Unit_Pool_A = ["RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_heavy_vdv"];
  };
  
//-------------------------------------------------------------------------------------------------

// RUSSIAN VDV DESERT (OPFOR)
	case 43:
	{
    _Unit_Pool_S = ["rhs_vdv_des_armoredcrew","rhs_pilot_tan","rhs_vdv_des_rifleman","rhs_vdv_des_RShG2","rhs_vdv_des_LAT","rhs_vdv_des_grenadier","rhs_vdv_des_medic","rhs_vdv_des_machinegunner","rhs_vdv_des_arifleman","rhs_vdv_des_at","rhs_vdv_des_aa","rhs_vdv_medic"];
    _Unit_Pool_V = ["rhs_tigr_m_3camo_vdv","rhs_btr80_vdv","rhs_gaz66_zu23_vdv"];
    _Unit_Pool_T = ["rhs_sprut_vdv","rhs_bmd1p","rhs_bmd2m","rhs_bmd4ma_vdv"];
    _Unit_Pool_A = ["RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_heavy_vdv"];
  };
  
//-------------------------------------------------------------------------------------------------

// SERBIAN ARMED FORCES DIGITAL (OPFOR)
	case 44:
	{
    _Unit_Pool_S = ["rhssaf_army_o_m10_para_crew","rhssaf_airforce_o_pilot_transport_heli","rhssaf_army_o_m10_digital_sq_lead","rhssaf_army_o_m10_digital_rifleman_at","rhssaf_army_o_m10_digital_spec_at","rhssaf_army_o_m10_digital_spec_aa","rhssaf_army_o_m10_digital_mgun_m84","rhssaf_army_o_m10_digital_gl","rhssaf_army_o_m10_digital_medic"];
    _Unit_Pool_V = ["rhssaf_army_o_m1025_olive_m2"];
    _Unit_Pool_T = ["rhssaf_army_o_t72s"];
    _Unit_Pool_A = [];
  };
 
 //-------------------------------------------------------------------------------------------------

// SERBIAN ARMED FORCES OAKLEAF SUMMER (OPFOR)
	case 45:
	{
    _Unit_Pool_S = ["rhssaf_army_o_m93_oakleaf_summer_crew","rhssaf_airforce_o_pilot_transport_heli","rhssaf_army_o_m93_oakleaf_summer_spotter","rhssaf_army_o_m93_oakleaf_summer_rifleman_at","rhssaf_army_o_m93_oakleaf_summer_spec_at","rhssaf_army_o_m93_oakleaf_summer_spec_aa","rhssaf_army_o_m93_oakleaf_summer_sniper_m76","rhssaf_army_o_m93_oakleaf_summer_mgun_m84","rhssaf_army_o_m93_oakleaf_summer_gl","rhssaf_army_o_m93_oakleaf_summer_medic"];
    _Unit_Pool_V = ["rhssaf_army_o_m1025_olive_m2"];
    _Unit_Pool_T = ["rhssaf_army_o_t72s"];
    _Unit_Pool_A = [];
  };

   //-------------------------------------------------------------------------------------------------

// TAKISTAN LIBERATION ARMY (OPFOR)
	case 46:
	{
    _Unit_Pool_S = ["rhsgref_tla_crew","rhsgref_tla_crew","rhsgref_tla_squadleader","rhsgref_tla_medic","rhsgref_tla_machinegunner_mg42","rhsgref_tla_machinegunner","rhsgref_tla_rifleman_vz58","rhsgref_tla_rifleman_rpg75","rhsgref_tla_rifleman_pm63","rhsgref_tla_rifleman_M16","rhsgref_tla_rifleman_m1","rhsgref_tla_rifleman_akms","rhsgref_tla_grenadier","rhsgref_tla_specialist_at"];
    _Unit_Pool_V = ["rhsgref_tla_offroad_at","rhsgref_tla_offroad_armed","rhsgref_tla_btr60"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };


//////////////////////////////////////////////////////////////////
//////////////////////INDFOR//////////////////////////////////////
//////////////////////////////////////////////////////////////////

// ISIS (INDFOR)
  case 37:
  {
    _Unit_Pool_S = ["cfp_i_is_crewman","cfp_i_is_irregular","cfp_i_is_team_leader","cfp_i_is_autorifleman","cfp_i_is_machinegunner","cfp_i_is_militaman","cfp_i_is_at","cfp_i_is_medic","cfp_i_is_grenadier","cfp_i_is_sniper"];
    _Unit_Pool_V = ["cfp_i_is_LR_SPG9","cfp_i_is_LR_M2","cfp_i_is_pickup_PK_flag","cfp_i_is_UAZ_METIS","cfp_i_is_offroad_M2","cfp_i_is_UAZ_AGS30","cfp_i_is_M113","cfp_i_is_BMP2_ZU","cfp_i_is_Ural_ZU23"];
    _Unit_Pool_T = ["cfp_i_is_T72","cfp_i_is_T55","cfp_i_is_T34","cfp_i_is_ZSU","cfp_i_is_BMP1P","cfp_i_is_BMP2"];
    _Unit_Pool_A = [];
  }; 

//-------------------------------------------------------------------------------------------------

// NAPA (INDFOR)
  case 38:
  {
    _Unit_Pool_S = ["CUP_I_GUE_Crew","CUP_I_GUE_Pilot","CUP_I_GUE_Officer","CUP_I_GUE_Soldier_AR","CUP_I_GUE_Soldier_MG","CUP_I_GUE_Soldier_AT","CUP_I_GUE_Soldier_AA2","CUP_I_GUE_Soldier_AA","CUP_I_GUE_Medic","CUP_I_GUE_Soldier_GL","CUP_I_GUE_Sniper"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK","CUP_I_Ural_ZU23_NAPA","CUP_I_MTLB_pk_NAPA","CUP_I_BRDM2_NAPA"];
    _Unit_Pool_T = ["CUP_I_T72_NAPA","CUP_I_T55_NAPA","CUP_I_T34_NAPA","CUP_I_BMP2_NAPA","CUP_I_BRDM2_ATGM_NAPA"];
    _Unit_Pool_A = [];
  }; 

//-------------------------------------------------------------------------------------------------

// RACS Pustynia (INDFOR)
  case 39:
  {
    _Unit_Pool_S = ["CUP_I_RACS_Crew","CUP_I_RACS_Pilot","CUP_I_RACS_SL","CUP_I_RACS_MMG","CUP_I_RACS_Soldier","CUP_I_RACS_Soldier_MAT","CUP_I_RACS_Soldier_AA","CUP_I_RACS_Medic","CUP_I_RACS_GL","CUP_I_RACS_Sniper"];
    _Unit_Pool_V = ["CUP_I_LR_MG_RACS","CUP_I_M113_RACS"];
    _Unit_Pool_T = ["CUP_I_T72_RACS","CUP_I_M60A3_TTS_RACS","CUP_I_M163_RACS"];
    _Unit_Pool_A = ["CUP_I_AH6J_RACS","CUP_I_CH47F_RACS","CUP_I_UH60L_FFV_RACS"];
  }; 

//-------------------------------------------------------------------------------------------------

// RACS Las (INDFOR)
  case 40:
  {
    _Unit_Pool_S = ["CUP_I_RACS_Crew","CUP_I_RACS_Pilot","CUP_I_RACS_SL_wdl","CUP_I_RACS_MMG_wdl","CUP_I_RACS_Soldier_wdl","CUP_I_RACS_Soldier_MAT_wdl","CUP_I_RACS_Soldier_AA_wdl","CUP_I_RACS_Medic_wdl","CUP_I_RACS_GL_wdl","CUP_I_RACS_Sniper_wdl"];
    _Unit_Pool_V = ["CUP_I_LR_MG_RACS","CUP_I_M113_RACS"];
    _Unit_Pool_T = ["CUP_I_T72_RACS","CUP_I_M60A3_TTS_RACS","CUP_I_M163_RACS"];
    _Unit_Pool_A = ["CUP_I_AH6J_RACS","CUP_I_CH47F_RACS","CUP_I_UH60L_FFV_RACS"];
  }; 

//-------------------------------------------------------------------------------------------------

// Sudan Murzyny (INDFOR)
  case 41:
  {
    _Unit_Pool_S = ["CFP_I_SSArmy_Soldier_06","CFP_I_SSArmy_Soldier_22","CFP_I_SSArmy_Soldier_13","CFP_I_SSArmy_Soldier_23","CFP_I_SSArmy_Soldier_02","CFP_I_SSArmy_Soldier_11","CFP_I_SSArmy_Soldier_03","CFP_I_SSArmy_Soldier_24","CFP_I_SSArmy_Soldier_05","CFP_I_SSArmy_Soldier_07","CFP_I_SDRebels_Soldier_02","CFP_I_SSArmy_Soldier_04"];
    _Unit_Pool_V = ["CFP_I_SSArmy_Land_Rover_SPG_9_01","CFP_I_SSArmy_Pickup_PK_01","CFP_I_SSArmy_UAZ_DShKM_01","CFP_I_SSArmy_Ural_ZU_23_01"];
    _Unit_Pool_T = ["CFP_I_SSArmy_T55_01","CFP_I_SSArmy_T72_01"];
    _Unit_Pool_A = ["CFP_I_SSArmy_Mi_17_01"];
  }; 

//-------------------------------------------------------------------------------------------------

// Takistan rebels (INDFOR)
  case 42:
  {
    _Unit_Pool_S = ["cfp_i_is_crewman","CUP_I_TK_GUE_Guerilla_Enfield","CUP_I_TK_GUE_Soldier_TL","CUP_I_TK_GUE_Soldier_AR","CUP_I_TK_GUE_Soldier_MG","CUP_I_TK_GUE_Soldier_AAT","CUP_I_TK_GUE_Soldier_AT","CUP_I_TK_GUE_Soldier_AA","CUP_I_TK_GUE_Demo","CUP_I_TK_GUE_Commander","CUP_I_TK_GUE_Soldier_GL","CUP_I_TK_GUE_Sniper"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK_TK_Random","CUP_I_BRDM2_TK_Gue","CUP_I_Ural_ZU23_TK_Gue","CUP_I_Datsun_PK_TK"];
    _Unit_Pool_T = ["CUP_I_T34_TK_GUE","CUP_I_T55_TK_GUE","CUP_I_BRDM2_ATGM_TK_Gue"];
    _Unit_Pool_A = [];
  }; 
  
//-------------------------------------------------------------------------------------------------

// UN Pustynia (INDFOR)
  case 43:
  {
    _Unit_Pool_S = ["CUP_I_UN_CDF_Crew_DST","CUP_I_UN_CDF_Pilot_DST","CUP_I_UN_CDF_Soldier_SL_DST","CUP_I_UN_CDF_Soldier_MG_DST","CUP_I_UN_CDF_Soldier_AMG_DST","CUP_I_UN_CDF_Soldier_AT_DST","CUP_I_UN_CDF_Guard_DST","CUP_I_UN_CDF_Soldier_AAT_DST","CUP_I_UN_CDF_Soldier_Backpack_DST"];
    _Unit_Pool_V = ["CUP_I_UAZ_AGS30_UN","CUP_I_UAZ_MG_UN","CUP_I_UAZ_SPG9_UN","CUP_I_BRDM2_UN","CUP_I_BTR60_UN","CUP_I_M113_UN"];
    _Unit_Pool_T = ["CUP_I_BMP2_UN"];
    _Unit_Pool_A = ["CUP_I_Mi17_UN"];
  }; 
  
//-------------------------------------------------------------------------------------------------
  
// UN Las (INDFOR)
  case 44:
  {
    _Unit_Pool_S = ["CUP_I_UN_CDF_Crew_FST","CUP_I_UN_CDF_Pilot_FST","CUP_I_UN_CDF_Soldier_SL_FST","CUP_I_UN_CDF_Soldier_MG_FST","CUP_I_UN_CDF_Soldier_AMG_FST","CUP_I_UN_CDF_Soldier_AT_FST","CUP_I_UN_CDF_Guard_FST","CUP_I_UN_CDF_Soldier_AAT_FST","CUP_I_UN_CDF_Soldier_Backpack_FST"];
    _Unit_Pool_V = ["CUP_I_UAZ_AGS30_UN","CUP_I_UAZ_MG_UN","CUP_I_UAZ_SPG9_UN","CUP_I_BRDM2_UN","CUP_I_BTR60_UN","CUP_I_M113_UN"];
    _Unit_Pool_T = ["CUP_I_BMP2_UN"];
    _Unit_Pool_A = ["CUP_I_Mi17_UN"];
  }; 
  
//-------------------------------------------------------------------------------------------------
  
// UN Gorskie (INDFOR)
  case 45:
  {
    _Unit_Pool_S = ["CUP_I_UN_CDF_Crew_MNT","CUP_I_UN_CDF_Pilot_MNT","CUP_I_UN_CDF_Soldier_SL_MNT","CUP_I_UN_CDF_Soldier_MG_MNT","CUP_I_UN_CDF_Soldier_AMG_MNT","CUP_I_UN_CDF_Soldier_AT_MNT","CUP_I_UN_CDF_Guard_MNT","CUP_I_UN_CDF_Soldier_AAT_MNT","CUP_I_UN_CDF_Soldier_Backpack_MNT"];
    _Unit_Pool_V = ["CUP_I_UAZ_AGS30_UN","CUP_I_UAZ_MG_UN","CUP_I_UAZ_SPG9_UN","CUP_I_BRDM2_UN","CUP_I_BTR60_UN","CUP_I_M113_UN"];
    _Unit_Pool_T = ["CUP_I_BMP2_UN"];
    _Unit_Pool_A = ["CUP_I_Mi17_UN"];
  }; 
 
//-------------------------------------------------------------------------------------------------

// Syndykat bandycy (INDFOR)
  case 46:
  {
    _Unit_Pool_S = ["I_C_Soldier_Bandit_8_F","I_C_Pilot_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_1_F"];
    _Unit_Pool_V = ["I_C_Offroad_02_LMG_F","I_C_Offroad_02_AT_F"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  }; 
 
//-------------------------------------------------------------------------------------------------

// Syndykat paramilita (INDFOR)
  case 47:
  {
    _Unit_Pool_S = ["I_C_Soldier_Para_2_F","I_C_Helipilot_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_3_F","I_C_Soldier_Para_1_F"];
    _Unit_Pool_V = ["I_C_Offroad_02_LMG_F","I_C_Offroad_02_AT_F","CUP_I_MTLB_pk_SYNDIKAT"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  }; 
 
//-------------------------------------------------------------------------------------------------
  
  // Syndykat paramilita (INDFOR)
  case 48:
  {
    _Unit_Pool_S = ["CUP_I_PMC_Crew","CUP_I_PMC_Pilot","CUP_I_PMC_Soldier_TL","CUP_I_PMC_Soldier_MG_PKM","CUP_I_PMC_Soldier_AT","CUP_I_PMC_Soldier_GL_M16A2","CUP_I_PMC_Medic","CUP_I_PMC_Contractor2","CUP_I_PMC_Soldier_AA"];
    _Unit_Pool_V = ["CUP_I_SUV_Armored_ION","CUP_I_LSV_02_Minigun_ION","CUP_I_LSV_02_AT_ION","CUP_I_4WD_LMG_ION","CUP_I_4WD_AT_ION"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["CUP_I_Ka60_GL_Blk_ION"];
  }; 

//-------------------------------------------------------------------------------------------------

// XX (INDFOR)
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
