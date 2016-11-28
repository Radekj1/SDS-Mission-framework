//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_CampTyp","_campBasic","_campAmmo","_campStatic","_campWall","_campObjInit",
			"_campUserObj","_campAddUnit","_campRandomObj","_Unit_Pool_C","_array"
		];

			_CampTyp = _this select 0;_array = [];


/*
/////////////////////////////////////////////
///////////////SPIS TRESCI///////////////////
/////////////////////////////////////////////

//////////BLUFOR//////////
	1 - Obóz z namiotem i działem PLOT
	3 - HQ z 4 x wieża + 2 x moździerz
	6 - Obóz z wieżą [z bloków] + 2 x moździerz
	10 - Zwykły namiot + antena + ognisko
	
//////////OPFOR///////////
	0 - Obóz z namiotem i działem PLOT
	4 - HQ z 4 x wieża + 2 x moździerz
	7 - Obóz z wieżą [z bloków] + 2 x moździerz
	9 - Zwykły namiot + antena + ognisko
	
	
//////////INDFOR//////////
	2 - Obóz z namiotem i działem PLOT
	5 - HQ z 4 x wieża + 2 x moździerz
	8 - Obóz z wieżą [z bloków] + 2 x moździerz
	11 - Zwykły namiot + antena + ognisko

*////////////////////////////////////////////	
	

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0:   // OPFOR - Obóz z namiotem i działem PLOT
	{
		_campBasic     = ["Flag_Red_F",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["rhsgref_ins_Igla_AA_pod",0,12,0,"rhs_msv_engineer"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 1:   // BLUFOR - Obóz z namiotem i działem PLOT
	{
		_campBasic     = ["Flag_NATO_F",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["RHS_Stinger_AA_pod_D",0,12,0,"usm_soldier_90s_w_h_rto"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 2:   // IND - Obóz z namiotem i działem PLOT
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["rhsgref_ins_g_ZU23",0,12,0,"LOP_AM_Infantry_Rifleman_2"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
	
	
//-------------------------------------------------------------------------------------------------------------------------
	case 3:		// BLUFOR  HQ z 4 x wieża + 2 x moździerz    [big walls closed on N side large opening S side]
	{
		_campBasic     = ["Flag_NATO_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"usm_soldier_90s_w_h_rto"],["B_Mortar_01_F",14,12,0,"usm_soldier_90s_w_h_rto"]];
		_campAddUnit   = [];
		_campUserObj   = [
			["Land_Cargo_Patrol_V1_F",-7,26,180],["Land_Cargo_Patrol_V1_F",25,26,180],["Land_Cargo_Patrol_V1_F",24,-23,270],["Land_Cargo_Patrol_V1_F",-9,-23,90],
			["Land_Cargo_House_V1_F",2,20,0],["Land_Cargo_House_V1_F",9,20,0],
			["Land_Mil_ConcreteWall_F",-2,12,90],["Land_Mil_ConcreteWall_F",17,12,90],
			["Land_ClutterCutter_large_F",1,12,90],["Land_ClutterCutter_large_F",13,12,90],["Land_ClutterCutter_large_F",4,-7,0]
		];
		_campRandomObj = [];
		_campWall      = ["Land_Mil_WallBig_4m_F",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 4:		// OPFOR  HQ z 4 x wieża + 2 x moździerz    [big walls closed on N side large opening S side]
	{
		_campBasic     = ["Flag_Red_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"rhs_msv_engineer"],["O_Mortar_01_F",14,12,0,"rhs_msv_engineer"]];
		_campAddUnit   = [];
		_campUserObj   = [
			["Land_Cargo_Patrol_V1_F",-7,26,180],["Land_Cargo_Patrol_V1_F",25,26,180],["Land_Cargo_Patrol_V1_F",24,-23,270],["Land_Cargo_Patrol_V1_F",-9,-23,90],
			["Land_Cargo_House_V1_F",2,20,0],["Land_Cargo_House_V1_F",9,20,0],
			["Land_Mil_ConcreteWall_F",-2,12,90],["Land_Mil_ConcreteWall_F",17,12,90],
			["Land_ClutterCutter_large_F",1,12,90],["Land_ClutterCutter_large_F",13,12,90],["Land_ClutterCutter_large_F",4,-7,0]
		];
		_campRandomObj = [];
		_campWall      = ["Land_Mil_WallBig_4m_F",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 5:		// IND  HQ z 4 x wieża + 2 x moździerz    	[big walls closed on N side large opening S side]
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"LOP_AM_Infantry_Rifleman_2"],["O_Mortar_01_F",14,12,0,"LOP_AM_Infantry_Rifleman_2"]];
		_campAddUnit   = [];
		_campUserObj   = [
			["Land_Cargo_Patrol_V1_F",-7,26,180],["Land_Cargo_Patrol_V1_F",25,26,180],["Land_Cargo_Patrol_V1_F",24,-23,270],["Land_Cargo_Patrol_V1_F",-9,-23,90],
			["Land_Cargo_House_V1_F",2,20,0],["Land_Cargo_House_V1_F",9,20,0],
			["Land_Mil_ConcreteWall_F",-2,12,90],["Land_Mil_ConcreteWall_F",17,12,90],
			["Land_ClutterCutter_large_F",1,12,90],["Land_ClutterCutter_large_F",13,12,90],["Land_ClutterCutter_large_F",4,-7,0]
		];
		_campRandomObj = [];
		_campWall      = ["Land_Mil_WallBig_4m_F",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 6:  //BLUFOR - Obóz z wieżą [z bloków] + 2 x moździerz
	{
		_campBasic     = ["Flag_NATO_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"usm_soldier_90s_w_h_rto"],["B_Mortar_01_F",14,12,0,"usm_soldier_90s_w_h_rto"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 7:  // OPFOR - Obóz z wieżą [z bloków] + 2 x moździerz
	{
		_campBasic     = ["Flag_Red_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"rhs_msv_engineer"],["O_Mortar_01_F",14,12,0,"rhs_msv_engineer"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 8:  // IND - Obóz z wieżą [z bloków] + 2 x moździerz
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"LOP_AM_Infantry_Rifleman_2"],["O_Mortar_01_F",14,12,0,"LOP_AM_Infantry_Rifleman_2"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 9:   // OPFOR - Zwykły namiot + antena + ognisko
	{
		_campBasic     = ["Flag_Red_F",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 10:   // BLUFOR - Zwykły namiot + antena + ognisko
	{
		_campBasic     = ["Flag_NATO_F",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------

	case 11:   // IND - Zwykły namiot + antena + ognisko
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 12:
	{
		_campBasic     = ["NULL"];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------

	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Camps > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array = [_campBasic,_campAmmo,_campStatic,_campAddUnit,_campUserObj,_campRandomObj,_campWall,_campObjInit];
_array
