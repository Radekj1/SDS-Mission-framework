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
  
// CDF Las (BLUFOR)
  case 14:
  {
    _Unit_Pool_S = ["CUP_B_CDF_Crew_MNT","CUP_B_CDF_Pilot_MNT","CUP_B_CDF_Soldier_TL_MNT","CUP_B_CDF_Soldier_AR_MNT","CUP_B_CDF_Soldier_MG_MNT","CUP_B_CDF_Soldier_LAT_MNT","CUP_B_CDF_Soldier_AA_MNT","CUP_B_CDF_Medic_MNT","CUP_B_CDF_Soldier_GL_MNT","CUP_B_CDF_Soldier_Marksman_MNT"];
    _Unit_Pool_V = ["CUP_B_UAZ_MG_CDF","CUP_B_UAZ_AGS30_CDF","CUP_B_UAZ_SPG9_CDF","CUP_B_UAZ_METIS_CDF","CUP_B_Ural_ZU23_CDF","CUP_B_ZSU23_Afghan_CDF","CUP_B_MTLB_pk_CDF","CUP_B_BTR60_CDF","CUP_B_BRDM2_CDF"];
    _Unit_Pool_T = ["CUP_B_BRDM2_ATGM_CDF","CUP_B_BMP2_CDF","CUP_B_ZSU23_CDF","CUP_B_T72_CDF"];
    _Unit_Pool_A = ["CUP_B_Mi17_CDF"];
  }; 

 
//-------------------------------------------------------------------------------------------------

// CDF Zima (BLUFOR)
  case 15:
  {
    _Unit_Pool_S = ["CUP_B_CDF_Crew_SNW","CUP_B_CDF_Pilot_SNW","CUP_B_CDF_Soldier_TL_SNW","CUP_B_CDF_Soldier_AR_SNW","CUP_B_CDF_Soldier_MG_SNW","CUP_B_CDF_Soldier_LAT_SNW","CUP_B_CDF_Soldier_AA_SNW","CUP_B_CDF_Medic_SNW","CUP_B_CDF_Soldier_GL_SNW","CUP_B_CDF_Soldier_Marksman_SNW"];
    _Unit_Pool_V = ["CFP_B_CDF_UAZ_DShKM_SNW_01","CFP_B_CDF_UAZ_AGS_30_SNW_01","CFP_B_CDF_UAZ_SPG_SNW_01","CFP_B_CDF_UAZ_Metis_SNW_01","CFP_B_CDF_Ural_ZU_23_SNW_01","CFP_B_CDF_BTR_60PB_SNW_01","CFP_B_CDF_BRDM_2_SNW_01","CFP_B_CDF_MT_LB_LV_Winter_SNW_01"];
    _Unit_Pool_T = ["CFP_B_CDF_BMP_2_SNW_01","CFP_B_CDF_ZSU_23_4_SNW_01","CFP_B_CDF_T72_SNW_01"];
    _Unit_Pool_A = ["CFP_B_CDF_Mi_8MT_SNW_01"];
  };
 

//-------------------------------------------------------------------------------------------------

// Zydzi (BLUFOR)
  case 16:
  {
    _Unit_Pool_S = ["CFP_B_ILIDF_Crew_01","CFP_B_ILIDF_Helicopter_Pilot_01","CFP_B_ILIDF_Squad_Leader_01","CFP_B_ILIDF_Machine_Gunner_01","CFP_B_ILIDF_Rifleman_AT_01","CFP_B_ILIDF_AA_Specialist_01","CFP_B_ILIDF_Medic_01","CFP_B_ILIDF_Grenadier_01","CFP_B_ILIDF_Sniper_01"];
    _Unit_Pool_V = ["CFP_B_ILIDF_HMMWV_M2_01","CFP_B_ILIDF_HMMWV_Mk19_01","CFP_B_ILIDF_HMMWV_TOW_01","CFP_B_ILIDF_M113_01"];
    _Unit_Pool_T = ["CFP_B_ILIDF_Namer_01","CFP_B_ILIDF_Merkava_Mk_IV_UP_01","CFP_B_ILIDF_Merkava_Mk_IV_01"];
    _Unit_Pool_A = ["CFP_B_ILIDF_UH_60_Yanshuf_01"];
  };


//-------------------------------------------------------------------------------------------------

// US UCP Pustynia (BLUFOR)
  case 17:
  {
    _Unit_Pool_S = ["CUP_B_US_Crew","CUP_B_US_Pilot","CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_LAT","CUP_B_US_Soldier_AA","CUP_B_US_Medic","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_Marksman"];
    _Unit_Pool_V = ["CUP_B_M1151_Deploy_USA","CUP_B_M1151_Mk19_USA","CUP_B_HMMWV_M2_GPK_USA","CUP_B_HMMWV_TOW_USA","CUP_B_M1130_CV_M2_Desert","CUP_B_M113_desert_USA"];
    _Unit_Pool_T = ["CUP_B_M1A2_TUSK_MG_DES_US_Army","CUP_B_M1A1_DES_US_Army","CUP_B_M2A3Bradley_USA_D","CUP_B_M7Bradley_USA_D"];
    _Unit_Pool_A = ["CUP_B_AH6M_USA","CUP_B_MH47E_USA","CUP_B_UH60M_US"];
  };
 


//-------------------------------------------------------------------------------------------------

// US UCP Las (BLUFOR)
  case 18:
  {
    _Unit_Pool_S = ["CUP_B_US_Crew","CUP_B_US_Pilot","CUP_B_US_Soldier_TL","CUP_B_US_Soldier_AR","CUP_B_US_Soldier_MG","CUP_B_US_Soldier_LAT","CUP_B_US_Soldier_AA","CUP_B_US_Medic","CUP_B_US_Soldier_GL","CUP_B_US_Soldier_Marksman"];
    _Unit_Pool_V = ["CFP_B_USARMY_HMMWV_Crows_M2_USA","CFP_B_USARMY_HMMWV_MK19_USA","CUP_B_M1151_Deploy_WDL_USA","CUP_B_M1167_WDL_USA","CUP_B_M1126_ICV_M2_Woodland","CUP_B_M113_USA"];
    _Unit_Pool_T = ["CUP_B_M1A1_Woodland_US_Army","CUP_B_M1A2_TUSK_MG_US_Army","CUP_B_M2A3Bradley_USA_W","CUP_B_M7Bradley_USA_W"];
    _Unit_Pool_A = ["CUP_B_AH6M_USA","CUP_B_MH47E_USA","CUP_B_UH60M_US"];
  };

//-------------------------------------------------------------------------------------------------


// US Marine Corps Pustynia (BLUFOR)
  case 19:
  {
    _Unit_Pool_S = ["CFP_B_USMC_Crewman_DES_01","CFP_B_USMC_Pilot_DES_01","CFP_B_USMC_Fire_Team_Leader_DES_01","CFP_B_USMC_Automatic_Rifleman_DES_01","CFP_B_USMC_Machinegunner_DES_01","CFP_B_USMC_Rifleman_M136_DES_01","CFP_B_USMC_AT_Specialist_SMAW_DES_01","CFP_B_USMC_AA_Specialist_DES_01","CFP_B_USMC_Corpsman_DES_01","CFP_B_USMC_Grenadier_DES_01","CFP_B_USMC_Designated_Marksman_DES_01"];
    _Unit_Pool_V = ["CUP_B_M1151_M2_DSRT_USMC","CUP_B_M1167_DSRT_USMC","CUP_B_RG31_M2_USMC","CUP_B_RG31_Mk19_USMC","CUP_B_LAV25M240_desert_USMC"];
    _Unit_Pool_T = ["CUP_B_M1A1_DES_USMC","CUP_B_M1A2_TUSK_MG_DES_USMC""CUP_B_LAV25_HQ_desert_USMC"];
    _Unit_Pool_A = ["CFP_B_USMC_UH_1Y_Venom_Gunship_DES_01","CFP_B_USMC_MH_60S_Seahawk_FFV_DES_01","CFP_B_USMC_MH_60S_Seahawk_M3M_DES_01","CUP_B_MH60L_DAP_4x_USN"];
  };
  
//-------------------------------------------------------------------------------------------------


// US Marine Corps Las (BLUFOR)
  case 20:
  {
    _Unit_Pool_S = ["CUP_B_USMC_Crewman_FROG_WDL","CFP_B_USMC_Pilot_DES_01","CUP_B_USMC_Soldier_TL_FROG_WDL","CUP_B_USMC_Soldier_AR_FROG_WDL","CUP_B_USMC_Soldier_MG_FROG_WDL","CUP_B_USMC_Soldier_LAT_FROG_WDL","CUP_B_USMC_Soldier_AT_FROG_WDL","CUP_B_USMC_Soldier_AA_FROG_WDL","CUP_B_USMC_Medic_FROG_WDL","CUP_B_USMC_Soldier_GL_FROG_WDL","CUP_B_USMC_Soldier_Marksman_FROG_WDL"];
    _Unit_Pool_V = ["CUP_B_M1151_Deploy_USMC","CUP_B_HMMWV_TOW_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_Mk19_OD_USMC","CUP_B_LAV25M240_USMC"];
    _Unit_Pool_T = ["CUP_B_M1A1_Woodland_USMC","CUP_B_M1A2_TUSK_MG_USMC"];
    _Unit_Pool_A = ["CFP_B_USMC_UH_1Y_Venom_Gunship_DES_01","CFP_B_USMC_MH_60S_Seahawk_FFV_DES_01","CFP_B_USMC_MH_60S_Seahawk_M3M_DES_01","CUP_B_MH60L_DAP_4x_USN"];
  };
  
//-------------------------------------------------------------------------------------------------

// US Marine Corps Las (BLUFOR)
  case 21:
  {
    _Unit_Pool_S = ["CUP_B_USMC_Crewman_FROG_WDL","CFP_B_USMC_Pilot_DES_01","CUP_B_USMC_Soldier_TL_FROG_WDL","CUP_B_USMC_Soldier_AR_FROG_WDL","CUP_B_USMC_Soldier_MG_FROG_WDL","CUP_B_USMC_Soldier_LAT_FROG_WDL","CUP_B_USMC_Soldier_AT_FROG_WDL","CUP_B_USMC_Soldier_AA_FROG_WDL","CUP_B_USMC_Medic_FROG_WDL","CUP_B_USMC_Soldier_GL_FROG_WDL","CUP_B_USMC_Soldier_Marksman_FROG_WDL"];
    _Unit_Pool_V = ["CUP_B_M1151_Deploy_USMC","CUP_B_HMMWV_TOW_USMC","CUP_B_RG31_M2_OD_USMC","CUP_B_RG31_Mk19_OD_USMC","CUP_B_LAV25M240_USMC"];
    _Unit_Pool_T = ["CUP_B_M1A1_Woodland_USMC","CUP_B_M1A2_TUSK_MG_USMC"];
    _Unit_Pool_A = ["CFP_B_USMC_UH_1Y_Venom_Gunship_DES_01","CFP_B_USMC_MH_60S_Seahawk_FFV_DES_01","CFP_B_USMC_MH_60S_Seahawk_M3M_DES_01","CUP_B_MH60L_DAP_4x_USN"];
  };

//-------------------------------------------------------------------------------------------------

// US Marine Corps Las COLD WAR (BLUFOR)
  case 22:
  {
    _Unit_Pool_S = ["CUP_B_USMC_Crew","CUP_B_USMC_Pilot","usm_marine_90s_w_l_rto","usm_marine_90s_w_h_ar","usm_marine_90s_w_h_mg","usm_marine_90s_w_h_gr","usm_marine_90s_w_h_aa","usm_marine_90s_w_h_at4","usm_marine_90s_w_h_medic"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC","CUP_B_HMMWV_M1114_USMC","CUP_B_HMMWV_MK19_USMC","CUP_B_HMMWV_Avenger_USMC","CUP_B_HMMWV_TOW_USMC"];
    _Unit_Pool_T = ["CUP_B_LAV25M240_USMC","CUP_B_AAV_USMC","CUP_B_M60A3_TTS_USMC"];
    _Unit_Pool_A = ["CUP_B_UH1Y_Gunship_Dynamic_USMC","CUP_B_UH60S_USN","CUP_B_MH60L_DAP_2x_USN"];
  };

//-------------------------------------------------------------------------------------------------

// BW (BLUFOR)
  case 28:
  {
    _Unit_Pool_S = ["gm_ge_army_crew_mp2a1_80_oli","CFP_B_DEARMY_WDL_Pilot_01","gm_ge_army_squadleader_g3a3_p2a1_80_ols","gm_ge_army_rifleman_g3a3_80_ols","gm_ge_army_medic_g3a3_80_ols","gm_ge_army_machinegunner_mg3_80_ols","gm_ge_army_antitank_g3a3_pzf84_80_ols","gm_ge_army_antitank_g3a3_pzf44_80_ols","gm_ge_army_grenadier_g3a3_80_ols"];
    _Unit_Pool_V = ["gm_ge_army_iltis_cargo","gm_ge_army_iltis_milan","gm_ge_army_kat1_451_cargo","gm_ge_army_fuchsa0_reconnaissance","gm_ge_army_m113a1g_apc","gm_ge_army_m113a1g_apc_milan"];
    _Unit_Pool_T = ["gm_ge_army_gepard1a1","gm_ge_army_Leopard1a3","gm_ge_army_Leopard1a1a2","gm_ge_army_Leopard1a1a1","gm_ge_army_Leopard1a3a1"];
    _Unit_Pool_A = ["CUP_B_UH1D_GER_KSK","CUP_B_UH1D_slick_GER_KSK","CFP_B_DEARMY_WDL_CH_53G_Super_Stallion_01"];
  };

//-------------------------------------------------------------------------------------------------

//////////////////////////////////////////////////////////////////
//////////////////////OPFOR///////////////////////////////////////
//////////////////////////////////////////////////////////////////

// MSV FLORA (OPFOR)
	case 23:
	{
    _Unit_Pool_S = ["CUP_O_RU_Crew","CUP_O_RU_Pilot","CUP_O_RU_Soldier_TL","CUP_O_RU_Soldier_AR","CUP_O_RU_Soldier_MG","CUP_O_RU_Soldier_AT","CUP_O_RU_Soldier_LAT","CUP_O_RU_Soldier_AA","CUP_O_RU_Soldier_HAT","CUP_O_RU_Medic", "CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier_Marksman"];
    _Unit_Pool_V = ["CFP_O_RUARMY_Ural_ZU_23_DES_01","CFP_O_RUARMY_BRDM_2_DES_01","CFP_O_RUARMY_UAZ_AGS_30_DES_01","CFP_O_RUARMY_UAZ_Metis_DES_01","CFP_O_RUARMY_UAZ_DShKM_DES_01","CFP_O_RUARMY_UAZ_SPG_DES_01", "CFP_O_RUARMY_BTR_90_DES_01", "CFP_O_RUARMY_GAZ_Vodnik_BPPU_DES_01", "CFP_O_RUARMY_GAZ_Vodnik_AGS_30_PKM_DES_01", "CFP_O_RUARMY_GAZ_Vodnik_2x_PKM_DES_01"];
    _Unit_Pool_T = ["CFP_O_RUARMY_T72_DES_01", "CFP_O_RUARMY_T90A_DES_01", "CFP_O_RUARMY_2S6M_Tunguska_M_DES_01", "CFP_O_RUARMY_BMP_2_DES_01", "CFP_O_RUARMY_BMP_3_DES_01", "CFP_O_RUARMY_BRDM_2ATGM_DES_01"];
    _Unit_Pool_A = ["CUP_O_Ka60_Grey_RU", "CUP_O_Mi8_RU"];
  };
  
//-------------------------------------------------------------------------------------------------

// VDV WD (OPFOR)
	case 24:
	{
    _Unit_Pool_S = ["CUP_O_RU_Crew_VDV_EMR", "CUP_O_RU_Pilot_VDV_EMR", "CUP_O_RU_Soldier_TL_VDV_EMR", "CUP_O_RU_Soldier_AR_VDV_EMR", "CUP_O_RU_Soldier_MG_VDV_EMR", "CUP_O_RU_Soldier_AT_VDV_EMR", "CUP_O_RU_Soldier_LAT_VDV_EMR", "CUP_O_RU_Soldier_AA_VDV_EMR", "CUP_O_RU_Medic_VDV_EMR", "CUP_O_RU_Soldier_GL_VDV_EMR", "CUP_O_RU_Soldier_VDV_EMR", "CUP_O_RU_Soldier_HAT_VDV_EMR", "CUP_O_RU_Soldier_Marksman_VDV_EMR"];
    _Unit_Pool_V = ["CFP_O_RUARMY_Ural_ZU_23_DES_01", "CFP_O_RUARMY_BRDM_2_DES_01", "CFP_O_RUARMY_UAZ_AGS_30_DES_01", "CFP_O_RUARMY_UAZ_Metis_DES_01", "CFP_O_RUARMY_UAZ_DShKM_DES_01", "CFP_O_RUARMY_UAZ_SPG_DES_01", "CFP_O_RUARMY_BTR_90_DES_01"];
    _Unit_Pool_T = ["CFP_O_RUARMY_2S6M_Tunguska_M_DES_01", "CFP_O_RUARMY_BMP_3_DES_01", "CFP_O_RUARMY_BRDM_2ATGM_DES_01"];
    _Unit_Pool_A = ["CUP_O_Ka60_Grey_RU", "CUP_O_Mi8_RU"];
  };
  
//-------------------------------------------------------------------------------------------------

// ROSJA PUSTYNIA (OPFOR)
	case 25:
	{
    _Unit_Pool_S = ["CFP_O_RUARMY_Crewman_DES_04", "CFP_O_RUARMY_Pilot_DES_04", "CFP_O_RUARMY_Team_Leader_DES_04", "CFP_O_RUARMY_Automatic_Rifleman_DES_04", "CFP_O_RUARMY_Machinegunner_DES_04", "CFP_O_RUARMY_Rifleman_RPG_18_DES_04", "CFP_O_RUARMY_Rifleman_RPG_DES_04", "CFP_O_RUARMY_Medic_DES_04", "CFP_O_RUARMY_AA_Specialist_DES_04", "CFP_O_RUARMY_Rifleman_DES_04", "CFP_O_RUARMY_Marksman_SVD_DES_04", "CFP_O_RUARMY_Grenadier_DES_04"];
    _Unit_Pool_V = ["CFP_O_RUARMY_Ural_ZU_23_DES_01", "CFP_O_RUARMY_UAZ_AGS_30_DES_01", "CFP_O_RUARMY_UAZ_Metis_DES_01", "CFP_O_RUARMY_UAZ_SPG_DES_01", "CFP_O_RUARMY_BTR_90_DES_01", "CFP_O_RUARMY_GAZ_Vodnik_BPPU_DES_01", "CFP_O_RUARMY_GAZ_Vodnik_AGS_30_PKM_DES_01", "CFP_O_RUARMY_GAZ_Vodnik_2x_PKM_DES_01", "CFP_O_SSREBELS_UAZ_DShKM_01", "CFP_O_RUARMY_BRDM_2_DES_01"];
    _Unit_Pool_T = ["CFP_O_RUARMY_T72_DES_01", "CFP_O_RUARMY_T90A_DES_01", "CFP_O_RUARMY_2S6M_Tunguska_M_DES_01", "CFP_O_RUARMY_BMP_2_DES_01", "CFP_O_RUARMY_BMP_3_DES_01", "CFP_O_RUARMY_BRDM_2ATGM_DES_01"];
    _Unit_Pool_A = ["CFP_O_RUARMY_Ka_60_Kasatka_Rockets_DES_01", "CFP_O_RUARMY_Mi_8MTV3_DES_01"];
  };
  
//-------------------------------------------------------------------------------------------------

// CZEDAK (OPFOR)
	case 26:
	{
    _Unit_Pool_S = ["CUP_O_INS_Crew", "CUP_O_INS_Pilot", "CUP_O_INS_Officer", "CUP_O_INS_Soldier_AR", "CUP_O_INS_Soldier_MG", "CUP_O_INS_Soldier_AT", "CUP_O_INS_Soldier_AA", "CUP_O_INS_Medic", "CUP_O_INS_Soldier_GL", "CUP_O_INS_Sniper", "CUP_O_INS_Soldier_AK74"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_CHDKZ", "CUP_O_BRDM2_HQ_CHDKZ", "CUP_O_BRDM2_CHDKZ", "CUP_O_MTLB_pk_ChDKZ", "CUP_O_BTR60_CHDKZ", "CUP_O_Datsun_PK", "CUP_O_UAZ_AGS30_CHDKZ", "CUP_O_UAZ_MG_CHDKZ", "CUP_O_UAZ_SPG9_CHDKZ", "CUP_O_UAZ_METIS_CHDKZ"];
    _Unit_Pool_T = ["CUP_O_ZSU23_ChDKZ", "CUP_O_T55_CHDKZ", "CUP_O_T72_CHDKZ", "CUP_O_BMP2_CHDKZ", "CUP_O_BRDM2_ATGM_CHDKZ", "CFP_O_CHDKZ_BMP_2ZU23_SNW_01"];
    _Unit_Pool_A = ["CUP_O_Mi8_CHDKZ"];
  };
  
//-------------------------------------------------------------------------------------------------

// CZEDAK ZIMA (OPFOR)
	case 27:
	{
    _Unit_Pool_S = ["CFP_O_CHDKZ_Crewman_SNW_01", "CFP_O_CHDKZ_Pilot_SNW_01", "CFP_O_CHDKZ_Officer_SNW_01", "CFP_O_CHDKZ_Automatic_Rifleman_SNW_01", "CFP_O_CHDKZ_Machinegunner_SNW_01", "CFP_O_CHDKZ_AT_Specialist_SNW_01", "CFP_O_CHDKZ_AA_Specialist_SNW_01", "CFP_O_CHDKZ_Rifleman_AK_74_SNW_01", "CFP_O_CHDKZ_Grenadier_SNW_01", "CFP_O_CHDKZ_Sniper_SNW_01", "CFP_O_CHDKZ_Medic_SNW_01"];
    _Unit_Pool_V = ["CFP_O_CHDKZ_Ural_ZU_23_SNW_01", "CFP_O_CHDKZ_BMP_2ZU23_SNW_01", "CFP_O_CHDKZ_BTR_60PB_SNW_01", "CFP_O_CHDKZ_BRDM_2_SNW_01", "CFP_O_CHDKZ_Datsun_620_Pickup_PK_SNW_01", "CFP_O_CHDKZ_UAZ_AGS_30_SNW_01", "CFP_O_CHDKZ_UAZ_DShKM_SNW_01", "CFP_O_CHDKZ_UAZ_SPG_SNW_01", "CFP_O_CHDKZ_UAZ_Metis_SNW_01"];
    _Unit_Pool_T = ["CFP_O_CHDKZ_ZSU_23_4_SNW_01", "CFP_O_CHDKZ_T55_SNW_01", "CFP_O_CHDKZ_T72_SNW_01", "CFP_O_CHDKZ_BMP_2_SNW_01", "CFP_O_CHDKZ_BRDM_2ATGM_SNW_01"];
    _Unit_Pool_A = ["CFP_O_CHDKZ_Mi_8MT_SNW_01"];
  };
  
//-------------------------------------------------------------------------------------------------

// KOREA (OPFOR)
	case 28:
	{
    _Unit_Pool_S = ["CFP_O_NKARMY_Crewman_01", "CFP_O_NKARMY_Helicopter_Pilot_01", "CFP_O_NKARMY_Officer_01", "CFP_O_NKARMY_Auto_Rifleman_01", "CFP_O_NKARMY_Machine_Gunner_01", "CFP_O_NKARMY_Rifleman_AT_01", "CFP_O_NKARMY_AA_Specialist_01", "CFP_O_NKARMY_Medic_01", "CFP_O_NKARMY_Rifleman_01", "CFP_O_NKARMY_Sniper_01"];
    _Unit_Pool_V = ["CFP_O_NKARMY_ZSU_23_4_01", "CFP_O_NKARMY_BRDM_2_01", "CFP_O_NKARMY_BTR_60_01", "CFP_O_NKARMY_UAZ_Metis_01"];
    _Unit_Pool_T = ["CFP_O_NKARMY_T34_01", "CFP_O_NKARMY_T55_01", "CFP_O_NKARMY_BMP_1_01"];
    _Unit_Pool_A = ["CFP_O_NKARMY_MD500_01", "CFP_O_NKARMY_Mi_8MT_01"];
  };
  
//-------------------------------------------------------------------------------------------------

// IRAN (OPFOR)
	case 29:
	{
    _Unit_Pool_S = ["CFP_O_IRARMY_Crewman_01", "CFP_O_IRARMY_Pilot_01", "CFP_O_IRARMY_Squad_Leader_01", "CFP_O_IRARMY_Auto_Rifleman_01", "CFP_O_IRARMY_Machine_Gunner_01", "CFP_O_IRARMY_Medic_01", "CFP_O_IRARMY_AA_Specialist_01", "CFP_O_IRARMY_Rifleman_AT_01", "CFP_O_IRARMY_Rifleman_01", "CFP_O_IRARMY_Grenadier_01"];
    _Unit_Pool_V = ["CFP_O_IRARMY_Ural_ZU_23_01", "CFP_O_IRARMY_BTR_60_01", "CFP_O_IRARMY_BTR_90_01", "CFP_O_IRARMY_M113_01", "CFP_O_IRARMY_Safir_AGS_30_01", "CFP_O_IRARMY_Safir_DShKM_01", "CFP_O_IRARMY_Safir_Metis_01", "CFP_O_IRARMY_Safir_SPG_01"];
    _Unit_Pool_T = ["CFP_O_IRARMY_M60_Patton_01", "CFP_O_IRARMY_T55_01", "CFP_O_IRARMY_T72_01", "CFP_O_IRARMY_BMP1_01", "CFP_O_IRARMY_BMP2_01"];
    _Unit_Pool_A = ["CFP_O_IRARMY_Mi_8MT_01", "CFP_O_IRARMY_CH47_01"];
  };
  
//-------------------------------------------------------------------------------------------------

// SLA WD (OPFOR)
	case 30:
	{
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_sla_Soldier_SL", "CUP_O_sla_Soldier_AR", "CUP_O_sla_Soldier_MG", "CUP_O_sla_Soldier_LAT", "CUP_O_sla_Soldier_AT", "CUP_O_sla_Soldier_HAT", "CUP_O_sla_Soldier_GL", "CUP_O_sla_Soldier", "CUP_O_sla_Soldier_AA", "CUP_O_sla_Medic", "CUP_O_sla_Sniper"];
    _Unit_Pool_V = ["CUP_O_BTR60_SLA", "CUP_O_BRDM2_SLA", "CUP_O_Ural_ZU23_SLA", "CUP_O_MTLB_pk_SLA", "CUP_O_UAZ_AGS30_SLA", "CUP_O_UAZ_MG_SLA", "CUP_O_UAZ_METIS_SLA", "CUP_O_UAZ_SPG9_SLA"];
    _Unit_Pool_T = ["CUP_O_T55_SLA", "CUP_O_T72_SLA", "CUP_O_BMP2_SLA", "CUP_O_BRDM2_ATGM_SLA", "CUP_O_ZSU23_SLA"];
    _Unit_Pool_A = ["CUP_O_Mi8_SLA_2", "CUP_O_UH1H_SLA", "CUP_O_UH1H_armed_SLA", "CUP_O_Mi8_SLA_1"];
  };
  
//-------------------------------------------------------------------------------------------------

// SLA DS (OPFOR)
	case 31:
	{
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_sla_Soldier_SL_desert", "CUP_O_sla_Soldier_LAT_desert", "CUP_O_sla_Soldier_AT_desert", "CUP_O_sla_Soldier_AA_desert", "CUP_O_sla_Soldier_HAT_desert", "CUP_O_sla_Medic_desert", "CUP_O_sla_soldier_desert", "CUP_O_sla_Soldier_AR_desert", "CUP_O_sla_Soldier_MG_desert", "CUP_O_sla_Soldier_GL_desert", "CUP_O_sla_Sniper_desert"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_SLA", "CUP_O_MTLB_pk_SLA", "CFP_I_SDRebels_UAZ_DShKM_01", "CFP_B_UAZ_AGS_30_01", "CFP_B_UAZ_Metis_01", "CFP_B_UAZ_SPG_01", "CFP_B_CAF_BTR_60_01", "CUP_B_BRDM2_CZ_Des"];
    _Unit_Pool_T = ["CUP_O_T72_SLA", "CUP_O_BMP2_SLA", "CUP_O_BRDM2_ATGM_SLA", "CUP_O_ZSU23_SLA", "CFP_B_CAF_T55_01"];
    _Unit_Pool_A = ["CUP_O_Mi8_SLA_2", "CUP_O_Mi8_SLA_1", "CUP_B_UH1D_armed_GER_KSK_Des", "CUP_B_UH1D_gunship_GER_KSK_Des"];
  };
  
//-------------------------------------------------------------------------------------------------

// TAKISTAN (OPFOR)
	case 32:
	{
    _Unit_Pool_S = ["CUP_O_TK_Crew", "CUP_O_TK_Pilot", "CUP_O_TK_Commander", "CUP_O_TK_Soldier_AR", "CUP_O_TK_Soldier_MG", "CUP_O_TK_Soldier_LAT", "CUP_O_TK_Soldier_AT", "CUP_O_TK_Soldier", "CUP_O_TK_Soldier_AA", "CUP_O_TK_Soldier_GL", "CUP_O_TK_Medic"];
    _Unit_Pool_V = ["CUP_O_UAZ_AGS30_TKA", "CUP_O_UAZ_MG_TKA", "CUP_O_UAZ_SPG9_TKA", "CUP_O_LR_MG_TKA", "CUP_O_LR_SPG9_TKA", "CUP_O_BMP2_ZU_TKA", "CUP_O_BRDM2_TKA", "CUP_O_BTR40_MG_TKA", "CUP_O_M113_TKA", "CUP_O_BTR60_TK"];
    _Unit_Pool_T = ["CUP_O_BMP1_TKA", "CUP_O_T72_TKA", "CUP_O_T55_TK", "CUP_O_T34_TKA", "CUP_O_ZSU23_TK", "CUP_O_BMP2_TKA", "CUP_O_BRDM2_ATGM_TKA"];
    _Unit_Pool_A = ["CUP_O_UH1H_armed_TKA", "CUP_O_UH1H_gunship_SLA_TKA", "CUP_O_Mi17_TK"];
  };
  
//-------------------------------------------------------------------------------------------------

// SYRIA (OPFOR)
	case 33:
	{
    _Unit_Pool_S = ["cfp_o_syarmy_crewman", "cfp_o_syarmy_helicopter_pilot_01", "cfp_o_syarmy_officer", "cfp_o_syarmy_machinegunner", "cfp_o_syarmy_rifleman", "cfp_o_syarmy_at", "cfp_o_syarmy_medic", "cfp_o_syarmy_sniper", "cfp_o_syarmy_grenadier"];
    _Unit_Pool_V = ["cfp_o_syarmy_BTR60", "cfp_o_syarmy_BTR40_MG", "cfp_o_syarmy_Ural_ZU23", "CUP_O_LR_MG_TKA", "CUP_O_LR_SPG9_TKA"];
    _Unit_Pool_T = ["cfp_o_syarmy_T55", "cfp_o_syarmy_T72", "cfp_o_syarmy_BMP1", "cfp_o_syarmy_BMP2", "cfp_o_syarmy_BMP1P", "cfp_o_syarmy_ZSU"];
    _Unit_Pool_A = ["CUP_O_UH1H_armed_TKA", "CUP_O_UH1H_gunship_SLA_TKA", "CUP_O_Mi17_TK"];
  };
  
 
//-------------------------------------------------------------------------------------------------

// TUSKENI (OPFOR)
	case 34:
	{
    _Unit_Pool_S = ["CFP_O_BH_Rifleman_AK47_01", "CFP_O_BH_Rifleman_AK47_01", "CFP_O_TBAN_Team_Leader_AK_47_01", "CFP_O_BH_Explosive_Specialist_01", "CFP_O_BH_Machine_Gunner_PKM_01", "CFP_O_TBAN_AT_Rifleman_2_01", "CFP_O_BH_Rifleman_AT_AK47_01", "CFP_O_BH_Grenadier_AK74_01", "CFP_O_BH_Sniper_SVD_01", "CFP_O_BH_Sniper_Enfield_01", "CFP_O_TBAN_Medic_AK_47_01", "CFP_O_TBAN_Rifleman_Lee_Enfield_01", "CFP_O_TBAN_Sniper_01", "CFP_O_TBAN_Explosive_Specialist_Lee_Enfield_01", "CUP_O_TK_INS_Soldier_AT", "CFP_O_TBAN_Grenadier_AK_74_01", "CUP_O_TK_INS_Guerilla_Medic", "CFP_O_TBAN_Medic_AK_47_01", "CFP_O_TBAN_Medic_Lee_Enfield_01", "CFP_O_BH_Grenadier_AK74_01"];
    _Unit_Pool_V = ["CUP_O_BTR40_MG_TKM", "CUP_O_MTLB_pk_TK_MILITIA", "CUP_O_LR_MG_TKM", "CUP_O_LR_SPG9_TKM", "CFP_O_BH_Landrover_M2_01", "CFP_O_BH_Landrover_SPG9_01", "CFP_O_BH_Offroad_AT_01", "CFP_O_TBAN_Offroad_Armed_01", "CFP_O_TBAN_Technical_PK_01", "CFP_O_TBAN_Ural_ZU_23_01", "cfp_o_is_hmmwv_dshkm", "cfp_o_is_LR_SPG9", "cfp_o_is_pickup_PK_flag"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// KOZOJEBCY (OPFOR)
	case 35:
	{
    _Unit_Pool_S = ["cfp_o_is_crewman", "cfp_o_is_crewman", "cfp_o_is_squad_leader", "cfp_o_is_autorifleman", "cfp_o_is_machinegunner", "cfp_o_is_at", "cfp_o_is_grenadier", "cfp_o_is_sniper", "cfp_o_is_rifleman", "cfp_o_is_militaman", "cfp_o_is_medic"];
    _Unit_Pool_V = ["cfp_o_is_BTR40_MG", "cfp_o_is_BTR40_MG_flag", "cfp_o_is_hmmwv_ags", "cfp_o_is_hmmwv_dshkm", "cfp_o_is_jeep_at", "cfp_o_is_jeep_lmg", "cfp_o_is_LR_M2", "cfp_o_is_LR_SPG9", "cfp_o_is_offroad_M2_flag", "cfp_o_is_pickup_PK", "cfp_o_is_offroad_M2", "cfp_o_is_offroad_AT", "cfp_o_is_pickup_PK_flag", "cfp_o_is_UAZ_AGS30", "cfp_o_is_UAZ_METIS", "cfp_o_is_UAZ_MG", "cfp_o_is_UAZ_SPG9", "cfp_o_is_Ural_ZU23"];
    _Unit_Pool_T = ["cfp_o_is_T34", "cfp_o_is_T72_flag", "cfp_o_is_T55", "cfp_o_is_BMP1P", "cfp_o_is_BMP2", "cfp_o_is_M113", "cfp_o_is_BMP2_ZU", "cfp_o_is_M113_flag", "cfp_o_is_ZSU"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// Somalijscy piraci (OPFOR)
	case 36:
	{
    _Unit_Pool_S = ["CFP_O_SOREBEL_Bombmaker_01", "CFP_O_SOREBEL_Bombmaker_2_01", "CFP_O_SOREBEL_Warlord_01", "CFP_O_SOREBEL_Autorifleman_01", "CFP_O_SOREBEL_Autorifleman_2_01", "CFP_O_SOREBEL_Rifleman_AT_01", "CFP_O_SOREBEL_Rifleman_AA_01", "CFP_O_SOREBEL_Bonesetter_01", "CFP_O_SOREBEL_Grenadier_01", "CFP_O_SOREBEL_Marksman_01"];
    _Unit_Pool_V = ["CFP_O_SOREBEL_Technical_DSHkM_01", "CFP_O_SOREBEL_Technical_PK_01", "CFP_O_SOREBEL_Technical_SPG_01"];
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
