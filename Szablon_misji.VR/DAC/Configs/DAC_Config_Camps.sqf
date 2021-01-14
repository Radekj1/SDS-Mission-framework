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
	0 - Obóz
	1 - FOB
	2 - Posterunek
	3 - Obóz (bez obrony)
	
//////////OPFOR///////////
	4 - Obóz
	5 - FOB
	6 - Posterunek
	7 - Obóz (bez obrony)
	
//////////INDFOR//////////
	8 - Obóz
	9 - FOB
	10 - Posterunek
	11 - Obóz (bez obrony)

*////////////////////////////////////////////	
	

switch (_CampTyp) do
{
//////////BLUFOR//////////
//-------------------------------------------------------------------------------------------------------------------------
	case 0:
	{
		_campBasic     = ["Flag_NATO_F",["Land_Fire_burning",8,5,0],["Land_MedicalTent_01_NATO_generic_open_F",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_HMG_01_high_F",0,12,0,"B_Soldier_lite_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 1:
	{
		_campBasic     = ["Flag_NATO_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"B_Soldier_lite_F"],["B_Mortar_01_F",14,12,0,"B_Soldier_lite_F"]];
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
	case 2:
	{
		_campBasic     = ["Flag_NATO_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"B_Soldier_lite_F"],["B_static_AA_F",14,12,0,"B_Soldier_lite_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 3:
	{
		_campBasic     = ["Flag_NATO_F",["Land_Fire_burning",8,5,0],["Land_MedicalTent_01_NATO_generic_open_F",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};

//////////OPFOR///////////
//-------------------------------------------------------------------------------------------------------------------------
	case 4:
	{
		_campBasic     = ["Flag_CSAT_F",["Land_Fire_burning",8,5,0],["Land_MedicalTent_01_CSAT_brownhex_generic_open_F",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_HMG_01_high_F",0,12,0,"O_A_soldier_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 5:
	{
		_campBasic     = ["Flag_CSAT_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"O_A_soldier_F"],["O_Mortar_01_F",14,12,0,"O_A_soldier_F"]];
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
	case 6:
	{
		_campBasic     = ["Flag_CSAT_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"O_A_soldier_F"],["O_static_AA_F",14,12,0,"O_A_soldier_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 7:
	{
		_campBasic     = ["Flag_CSAT_F",["Land_Fire_burning",8,5,0],["Land_MedicalTent_01_CSAT_brownhex_generic_open_F",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};

//////////INDFOR//////////	
//-------------------------------------------------------------------------------------------------------------------------
	case 8:
	{
		_campBasic     = ["Flag_AAF_F",["Land_Fire_burning",8,5,0],["Land_MedicalTent_01_aaf_generic_open_F",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["I_HMG_02_high_F",0,12,0,"I_Soldier_lite_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 9:
	{
		_campBasic     = ["Flag_AAF_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["I_Mortar_01_F",0,12,0,"I_Soldier_lite_F"],["I_Mortar_01_F",14,12,0,"I_Soldier_lite_F"]];
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
	case 10:
	{
		_campBasic     = ["Flag_AAF_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["I_Mortar_01_F",0,12,0,"I_Soldier_lite_F"],["I_static_AA_F",14,12,0,"I_Soldier_lite_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 11:
	{
		_campBasic     = ["Flag_AAF_F",["Land_Fire_burning",8,5,0],["Land_MedicalTent_01_aaf_generic_open_F",5,0,180],["Logic",10,15,0],0];
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
