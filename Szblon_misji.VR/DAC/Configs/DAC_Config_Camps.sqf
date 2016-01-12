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
	case 0:   // OPFOR OUTPOST with tent and 1x PLOT HEAVY
	{
		_campBasic     = ["Flag_CSAT_F",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["pook_S60_RU",0,12,0,"min_rf_soldier"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 1:   // BLUFOR OUTPOST with tent and 1x PLOT HEAVY
	{
		_campBasic     = ["Flag_NATO_F",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["pook_S60_RU",0,12,0,"usm_soldier_90s_w_h_rto"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	
	case 2:   // IND OUTPOST with tent and 1x PLOT HEAVY
	{
		_campBasic     = ["Flag_NATO_F",["Land_Fire_burning",8,5,0],["CampEAST_EP1",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["pook_S60_RU",0,12,0,"CUP_I_TK_GUE_Soldier"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_Antenna",5,-5,45]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
	
	
//-------------------------------------------------------------------------------------------------------------------------
	case 3:		// BLUFOR  HQ with 4 x towers 2 x mortar    big walls closed on N side large opening S side 
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
	
	case 4:		// OPFOR  HQ with 4 x towers 2 x mortar    big walls closed on N side large opening S side 
	{
		_campBasic     = ["Flag_CSAT_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"min_rf_soldier"],["O_Mortar_01_F",14,12,0,"min_rf_soldier"]];
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
	
	case 5:		// IND  HQ with 4 x towers 2 x mortar    big walls closed on N side large opening S side 
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"CUP_I_TK_GUE_Soldier"],["O_Mortar_01_F",14,12,0,"CUP_I_TK_GUE_Soldier"]];
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
	
	case 6:  //BLUFOR OUTPOST with sandbag tower and 1x mortar and 1x PLOT ZSU
	{
		_campBasic     = ["Flag_NATO_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["pook_ZU23_RU",0,12,0,"usm_soldier_90s_w_h_rto"],["B_Mortar_01_F",14,12,0,"usm_soldier_90s_w_h_rto"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 7:  // OPFOR OUTPOST with sandbag tower and 1x mortar and 1x PLOT ZSU  
	{
		_campBasic     = ["Flag_CSAT_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["pook_ZU23_RU",0,12,0,"min_rf_soldier"],["O_Mortar_01_F",14,12,0,"min_rf_soldier"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
	
//-------------------------------------------------------------------------------------------------------------------------
	case 8:  // IND OUTPOST with sandbag tower and 1x mortar and 1x PLOT ZSU
	{
		_campBasic     = ["FlagCarrierINDFOR_EP1",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [];
		_campStatic    = [["pook_ZU23_RU",0,12,0,"CUP_I_TK_GUE_Soldier"],["O_Mortar_01_F",14,12,0,"CUP_I_TK_GUE_Soldier"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};	
//-------------------------------------------------------------------------------------------------------------------------
		
	case 9:
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
