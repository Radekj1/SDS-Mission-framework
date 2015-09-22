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

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0:   // IND OUTPOST with tent and 1x mortar
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"LOP_AM_Infantry_Engineer"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1:		// BLUFOR  HQ with 4 x towers 2 x mortar    big walls closed on N side large opening S side 
	{
		_campBasic     = ["Flag_NATO_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"B_CDF_A3_Soldier_Militia"],["B_Mortar_01_F",14,12,0,"B_CDF_A3_Soldier_Militia"]];
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
	
	case 2:		// OPFOR  HQ with 4 x towers 2 x mortar    big walls closed on N side large opening S side 
	{
		_campBasic     = ["Flag_CSAT_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"rhs_msv_rifleman"],["O_Mortar_01_F",14,12,0,"rhs_msv_rifleman"]];
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
	
	case 3:		// IND  HQ with 4 x towers 1 x mortar    big walls closed on N side large opening S side 
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["RDS_ZU23_AAF",0,12,0,"LOP_AM_Infantry_Engineer"]];
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
	
	case 4:  //BLUFOR OUTPOST with sandbag tower and 2x mortar
	{
		_campBasic     = ["Flag_NATO_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"rhsusf_usmc_marpat_wd_rifleman"],["B_Mortar_01_F",14,12,0,"rhsusf_usmc_marpat_wd_rifleman"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = ["Land_fort_bagfence_long",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 5:  // OPFOR OUTPOST with sandbag tower and 2x mortar
	{
		_campBasic     = ["Flag_CSAT_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"rhs_msv_rifleman"],["O_Mortar_01_F",14,12,0,"rhs_msv_rifleman"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = ["Land_fort_bagfence_long",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 6:  // IND OUTPOST with sandbag tower and PLOT
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["RDS_ZU23_AAF",0,12,0,"LOP_AM_Infantry_Engineer"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = ["Land_fort_bagfence_long",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};	
//-------------------------------------------------------------------------------------------------------------------------
		
	case 7:
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
