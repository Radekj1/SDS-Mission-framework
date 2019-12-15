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
    _Unit_Pool_S = ["CUP_C_R_Worker_01","CUP_C_R_Pilot_01","CUP_C_R_Citizen_02","CUP_C_R_Citizen_01","CUP_C_R_Citizen_04","CUP_C_R_Citizen_03","CUP_C_R_Functionary_01","CUP_C_R_Mechanic_01","CUP_C_R_Profiteer_02","CUP_C_R_Profiteer_01","CUP_C_R_Rocker_04","CUP_C_R_Rocker_02","CUP_C_R_Villager_01","CUP_C_R_Villager_03","CUP_C_R_Woodlander_03","CUP_C_R_Worker_03","CUP_C_R_Worker_04"];
    _Unit_Pool_V = ["CUP_C_Skoda_Blue_CIV","CUP_C_Skoda_Green_CIV","CUP_C_Skoda_White_CIV","CUP_C_Datsun_Covered","CUP_C_Datsun_Plain","CUP_C_Golf4_red_Civ","CUP_C_Lada_White_CIV","CUP_C_Lada_Red_CIV","CUP_C_SUV_CIV","CUP_C_Ural_Open_Civ_03","CUP_C_TT650_CIV"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["CUP_C_Mi17_Civilian_RU"];
  };
//-------------------------------------------------------------------------------------------------
// WEST EU/US
  case 2:
  {
    _Unit_Pool_S = ["C_Man_casual_1_F","C_Man_casual_1_F","C_Man_casual_1_F","C_Man_casual_2_F","C_Man_casual_3_F","C_Man_casual_4_F","C_Man_casual_6_F","C_man_polo_2_F","C_man_polo_5_F","C_Man_Fisherman_01_F","C_man_hunter_1_F"];
    _Unit_Pool_V = ["CUP_C_Golf4_kitty_Civ","CUP_C_Golf4_blue_Civ","C_Hatchback_01_F","C_Offroad_02_unarmed_F","C_Offroad_01_F","C_Van_01_transport_F","C_Van_01_box_F","C_Van_02_transport_F"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["C_Heli_Light_01_civil_F"];
  };
//-------------------------------------------------------------------------------------------------

// MIDDLE EAST
  case 3:
  {
    _Unit_Pool_S = ["CFP_C_AFG_Civilian_02","CFP_C_AFG_Civilian_02","CFP_C_AFG_Civilian_01","CUP_C_TK_Man_04_Jack","CUP_C_TK_Man_07_Coat","CUP_C_TK_Man_08","CUP_C_TK_Man_05_Coat","CUP_C_TK_Man_05_Waist","CUP_C_TK_Man_06_Jack","CUP_C_TK_Man_02","CUP_C_TK_Man_01_Coat","CUP_C_TK_Man_03_Waist"];
    _Unit_Pool_V = ["CUP_C_S1203_CIV","CUP_C_Lada_TK2_CIV","CUP_C_Ikarus_TKC","CUP_C_UAZ_Open_TK_CIV","CUP_C_Volha_Gray_TKCIV","CFP_C_AFG_Datsun_Pickup_01","CUP_C_TT650_TK_CIV"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// AFRICA
  case 4:
  {
    _Unit_Pool_S = ["CFP_C_AFRCHRISTIAN_Civ_8_01","CFP_C_AFRCHRISTIAN_Civ_8_01","CFP_C_AFRCHRISTIAN_Civ_8_01","CFP_C_AFRISLAMIC_Civ_3_01","CFP_C_AFRCHRISTIAN_Civ_3_01","CFP_C_AFRISLAMIC_Civ_5_01","CFP_C_AFRCHRISTIAN_Civ_5_01","CFP_C_AFRISLAMIC_Civ_6_01","CFP_C_AFRCHRISTIAN_Civ_11_01","CFP_C_AFRCHRISTIAN_Civ_9_01"];
    _Unit_Pool_V = ["CFP_C_AFRCHRISTIAN_Pickup_Old_01","CFP_C_AFRCHRISTIAN_UAZ_Open_01","CFP_C_AFRCHRISTIAN_Zamak_01","CFP_C_AFRISLAMIC_Skoda_Blue_01"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };

//-------------------------------------------------------------------------------------------------

// ASIA
  case 5:
  {
    _Unit_Pool_S = ["CFP_C_ASIA_Civilian_7_01","CFP_C_ASIA_Civilian_7_01","CFP_C_ASIA_Civilian_7_01","CFP_C_ASIA_Civilian_2_01","CFP_C_ASIA_Civilian_3_01","CFP_C_ASIA_Civilian_6_01","CFP_C_ASIA_Civilian_9_01","CFP_C_ASIA_Civilian_11_01","CFP_C_ASIA_Civilian_1_01","CFP_C_ASIA_Civilian_12_01"];
    _Unit_Pool_V = ["CFP_C_ASIA_Land_Rover_01","CFP_C_ASIA_MB_4WD_01","CFP_C_ASIA_Skoda_Octavia_01","CFP_C_ASIA_SUV_01"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };

//////////////////////////////////////////////////////////////////
//////////////////////BLUFOR//////////////////////////////////////
//////////////////////////////////////////////////////////////////

// ACR Pustynia (BLUFOR)
	case 6:
	{
    _Unit_Pool_S = ["CUP_B_CZ_Crew_DES","CUP_B_CZ_Pilot_DES","CUP_B_CZ_Officer_DES","CUP_B_CZ_Soldier_AR_DES","CUP_B_CZ_Soldier_MG_DES","CUP_B_CZ_Soldier_AT_DES","CUP_B_CZ_Soldier_RPG_DES","CUP_B_CZ_Medic_DES","CUP_B_CZ_Soldier_805_GL_DES","CUP_B_CZ_Soldier_Marksman_DES"];
    _Unit_Pool_V = ["CUP_B_Dingo_CZ_Des","CUP_B_Dingo_GL_CZ_Des","CUP_B_HMMWV_AGS_GPK_ACR","CUP_B_HMMWV_DSHKM_GPK_ACR","CUP_B_T810_Armed_CZ_DES","CUP_B_BRDM2_CZ_Des"];
    _Unit_Pool_T = ["CUP_B_BMP2_CZ_Des","CFP_B_T72M4CZ_01"];
    _Unit_Pool_A = ["CUP_B_Mi171Sh_ACR"];
  };
  
//-------------------------------------------------------------------------------------------------
// ACR Las (BLUFOR)
	case 7:
	{
    _Unit_Pool_S = ["CUP_B_CZ_Crew_WDL","CUP_B_CZ_Pilot_WDL","CUP_B_CZ_Officer_WDL","CUP_B_CZ_Soldier_AR_WDL","CUP_B_CZ_Soldier_MG_WDL","CUP_B_CZ_Soldier_AT_WDL","CUP_B_CZ_Soldier_RPG_WDL","CUP_B_CZ_Medic_WDL","CUP_B_CZ_Soldier_805_GL_WDL","CUP_B_CZ_Soldier_Marksman_WDL"];
    _Unit_Pool_V = ["CUP_B_Dingo_CZ_Wdl","CUP_B_Dingo_GL_CZ_Wdl","CUP_B_LR_MG_CZ_W","CUP_B_T810_Armed_CZ_WDL","CUP_B_BRDM2_CZ"];
    _Unit_Pool_T = ["CUP_B_BMP2_CZ","CUP_B_T72_CZ"]; 
    _Unit_Pool_A = ["CFP_B_CZARMY_Mi_171Sh_Rockets_WDL_01"];
  };

//-------------------------------------------------------------------------------------------------

// UK MTP Pustynia (BLUFOR)
  case 8:
  {
    _Unit_Pool_S = ["CUP_B_BAF_Soldier_Crew_MTP", "CUP_B_BAF_Soldier_Helipilot_MTP", "CUP_B_BAF_Soldier_TeamLeader_MTP", "CUP_B_BAF_Soldier_AutoRifleman_MTP", "CUP_B_BAF_Soldier_HeavyGunner_MTP", "CUP_B_BAF_Soldier_RiflemanLAT_MTP", "CUP_B_BAF_Soldier_RiflemanAT_MTP", "CUP_B_BAF_Soldier_AA_MTP", "CUP_B_BAF_Soldier_Medic_MTP", "CUP_B_BAF_Soldier_Grenadier_MTP", "CUP_B_BAF_Soldier_Marksman_MTP"];
    _Unit_Pool_V = ["CUP_B_Mastiff_HMG_GB_D", "CUP_B_Mastiff_LMG_GB_D", "CUP_B_Mastiff_GMG_GB_D", "CUP_B_Jackal2_L2A1_GB_D", "CUP_B_Jackal2_GMG_GB_D"];
    _Unit_Pool_T = ["CUP_B_FV432_Bulldog_GB_D_RWS","CUP_B_FV432_Bulldog_GB_D","CUP_B_MCV80_GB_D_SLAT","CUP_B_FV510_GB_D_SLAT","CUP_B_Challenger2_Desert_BAF"];
    _Unit_Pool_A = ["CUP_B_MH47E_GB","CUP_B_AW159_GB"];
  };
 
//-------------------------------------------------------------------------------------------------

// UK DPM Pustynia (BLUFOR)
  case 9:
  {
    _Unit_Pool_S = ["CUP_B_BAF_Soldier_Crew_DDPM","CUP_B_BAF_Soldier_Helipilot_DDPM","CUP_B_BAF_Soldier_TeamLeader_DDPM","CUP_B_BAF_Soldier_AutoRifleman_DDPM","CUP_B_BAF_Soldier_HeavyGunner_DDPM","CUP_B_BAF_Soldier_RiflemanLAT_DDPM","CUP_B_BAF_Soldier_AA_DDPM","CUP_B_BAF_Soldier_Medic_DDPM","CUP_B_BAF_Soldier_Grenadier_DDPM","CUP_B_BAF_Soldier_Marksman_DDPM"];
    _Unit_Pool_V = ["CUP_B_Jackal2_L2A1_GB_D","CUP_B_Jackal2_GMG_GB_D","CUP_B_LR_Special_M2_GB_D","CUP_B_LR_MG_GB_D","CUP_B_LR_Special_GMG_GB_D"];
    _Unit_Pool_T = ["CUP_B_FV432_Bulldog_GB_D_RWS","CUP_B_FV432_Bulldog_GB_D","CUP_B_MCV80_GB_D_SLAT","CUP_B_FV510_GB_D_SLAT","CUP_B_Challenger2_Desert_BAF"];
    _Unit_Pool_A = ["CUP_B_MH47E_GB","CUP_B_AW159_GB"];
  };

//-------------------------------------------------------------------------------------------------

// UK Las (BLUFOR)
  case 10:
  {
    _Unit_Pool_S = ["CUP_B_BAF_Soldier_Crew_DPM", "CUP_B_BAF_Soldier_Helipilot_DPM", "CUP_B_BAF_Soldier_TeamLeader_DPM", "CUP_B_BAF_Soldier_AutoRifleman_DPM", "CUP_B_BAF_Soldier_HeavyGunner_DPM", "CUP_B_BAF_Soldier_RiflemanLAT_DPM", "CUP_B_BAF_Soldier_RiflemanAT_DPM", "CUP_B_BAF_Soldier_AA_DPM", "CUP_B_BAF_Soldier_Medic_DPM","CUP_B_BAF_Soldier_Grenadier_DPM","CUP_B_BAF_Soldier_Marksman_DPM"];
    _Unit_Pool_V = ["CUP_B_Jackal2_L2A1_GB_W","CUP_B_Jackal2_GMG_GB_W","CUP_B_LR_Special_GMG_GB_W","CUP_B_LR_Special_M2_GB_W","CUP_B_LR_MG_GB_W"];
    _Unit_Pool_T = ["CUP_B_FV432_Bulldog_GB_W_RWS","CUP_B_FV432_Bulldog_GB_W","CUP_B_FV510_GB_W_SLAT","CUP_B_MCV80_GB_W_SLAT","CUP_B_Challenger2_2CW_BAF"];
    _Unit_Pool_A = ["CFP_B_GBARMY_AW159_Wildcat_Green_WDL_01","CFP_B_GBARMY_Chinook_HC_4_WDL_01"];
  };
  
//-------------------------------------------------------------------------------------------------

// Bundeswehr Pustynia (BLUFOR)
  case 11:
  {
    _Unit_Pool_S = ["CUP_B_GER_Soldier_Engineer", "CFP_B_DEARMY_Pilot_DES_01", "CUP_B_GER_Soldier_TL", "CUP_B_GER_Soldier_MG", "CUP_B_GER_Soldier_MG3", "CUP_B_GER_Soldier_AT", "CUP_B_GER_Soldier_AA", "CUP_B_GER_Medic", "CUP_B_GER_Soldier_GL"];
    _Unit_Pool_V = ["CUP_B_Dingo_GER_Des","CUP_B_Dingo_GL_GER_Des"];
    _Unit_Pool_T = ["CUP_B_Leopard2A6_GER"]; 
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------

// Bundeswehr Las (BLUFOR)
  case 12:
  {
    _Unit_Pool_S = ["CUP_B_GER_Fleck_Soldier_Engineer","CFP_B_DEARMY_WDL_Pilot_01","CUP_B_GER_Fleck_Soldier_TL","CUP_B_GER_Fleck_Soldier_MG","CUP_B_GER_Fleck_Soldier_MG3","CUP_B_GER_Fleck_Soldier_AT","CUP_B_GER_Fleck_Soldier_AA","CUP_B_GER_Fleck_Medic","CUP_B_GER_Fleck_Soldier_GL"];
    _Unit_Pool_V = ["CUP_B_Dingo_GER_Wdl","CUP_B_Dingo_GL_GER_Wdl"];
    _Unit_Pool_T = ["CUP_B_Leopard2A6_GER"];
    _Unit_Pool_A = [];
  };
  
//-------------------------------------------------------------------------------------------------
  
// CDF Pustynia (BLUFOR)
  case 13:
  {
    _Unit_Pool_S = ["CUP_B_CDF_Crew_DST","CUP_B_CDF_Pilot_DST","CUP_B_CDF_Soldier_TL_DST","CUP_B_CDF_Soldier_AR_DST","CUP_B_CDF_Soldier_MG_DST","CUP_B_CDF_Soldier_LAT_DST","CUP_B_CDF_Soldier_AA_DST","CUP_B_CDF_Medic_DST","CUP_B_CDF_Soldier_GL_DST","CUP_B_CDF_Soldier_Marksman_DST"];
    _Unit_Pool_V = ["CUP_B_UAZ_MG_CDF","CUP_B_UAZ_AGS30_CDF","CUP_B_UAZ_SPG9_CDF","CUP_B_UAZ_METIS_CDF","CUP_B_Ural_ZU23_CDF","CUP_B_ZSU23_Afghan_CDF","CUP_B_MTLB_pk_CDF","CUP_B_BTR60_CDF","CUP_B_BRDM2_CDF"];
    _Unit_Pool_T = ["CUP_B_BRDM2_ATGM_CDF","CUP_B_BMP2_CDF","CUP_B_ZSU23_CDF","CUP_B_T72_CDF"];
    _Unit_Pool_A = ["CUP_B_Mi17_CDF"];
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
