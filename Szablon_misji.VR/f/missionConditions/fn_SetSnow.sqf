
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_snow","_snowSparse","_snowLight","_snowMedium","_snowHeavy","_snowStorm","_rSnow", "_snowflakes1", "_snowflakes2", "_clouds1", "_clouds2"];

// ====================================================================================

snow = f_param_snow;

// Exit when no snow
if (snow == 0 ) exitWith {};

//hint format["Wybrałeś %1",snow];

// ====================================================================================

"colorCorrections" ppEffectAdjust [1, 1, 0, [0.01, 0.02, 0.04, 0.01], [0.87, 1.08, 1.196, 0.3], [0.399, 0.287, 0.014, 0.0]]; 
"colorCorrections" ppEffectCommit 0; 
"colorCorrections" ppEffectEnable TRUE;


//_alpha = .55 + random 0.12;// set the alpha of the particles
//[_alpha] spawn {    

// ====================================================================================
// SELECT SNOW VALUES
// Using the value of snow, new snow values are set.

while {true} do {
	
	// Lekki opad
	if (snow == 1) then {
	
				 _snowLight = "#particleSource" createVehicleLocal (position player);  
				_snowLight setParticleParams 	[["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,1], "","Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,[0.07],[[1,1,1,1]],[0,1], 0.2, 1.2, "", "",vehicle player];
				_snowLight setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
				_snowLight setParticleCircle [0,[0,0,0]];
				_snowLight setDropInterval 0.001; // 0.0001 more zeros is more snow
				/*
				_snowflakes1 = "#particlesource" createVehicleLocal (position player); 
				_snowflakes1  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 14, 2, 0], "", "Billboard", 1, 22, [0, 0, 6], [0,0,0], (0), 1.69, 1, 1, [1.5], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", vehicle player];
				_snowflakes1  setParticleRandom [0, [24 + (random 2),24 + (random 2), 4], [0, 0, 0], 0, 0, [0, 0, 0, .03], 0, 0];
				_snowflakes1  setParticleCircle [0, [0, 0, 0]];
				_snowflakes1  setDropInterval 0.001; 
				*/
				
				sleep 5; + (random 200);
				deleteVehicle _snowLight;
				//deleteVehicle _snowflakes1;
				
				};
				
	// Średni opad
	if (snow == 2) then {
	
				_snowMedium = "#particleSource" createVehicleLocal (position player);  
				_snowMedium setParticleParams 	[["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,1], "","Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,[0.07],[[1,1,1,1]],[0,1], 0.2, 1.2, "", "",vehicle player];
				_snowMedium setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
				_snowMedium setParticleCircle [0,[0,0,0]];
				_snowMedium setDropInterval 0.0001; // 0.0001 more zeros is more snow
			
				/*	
				_snowflakes1 = "#particlesource" createVehicleLocal (position player); 
				_snowflakes1  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 14, 2, 0], "", "Billboard", 1, 22, [0, 0, 6], [0,0,0], (0), 1.69, 1, 1, [1.5], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", vehicle player];
				_snowflakes1  setParticleRandom [0, [24 + (random 2),24 + (random 2), 4], [0, 0, 0], 0, 0, [0, 0, 0, .03], 0, 0];
				_snowflakes1  setParticleCircle [0, [0, 0, 0]];
				_snowflakes1  setDropInterval 0.001; 
				*/
				
				sleep 5; + (random 200);
				deleteVehicle _snowMedium;
				//deleteVehicle _snowflakes1;
				
				};
	
	/*
	
	//Śnieżyca 
	if (snow == 3) then {

				_obj = (vehicle player);
				_pos = getposASL _obj;
				setwind [0.401112*2,0.204166*2,false];
				_n =  abs(wind select 0) + abs(wind select 1) + abs(wind select 2);
				_velocity = wind;
			
				_snowflakes1 = "#particlesource" createVehicleLocal _pos; 
				_snowflakes1  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 14, 2, 0], "", "Billboard", 1, 22, [0, 0, 6], _velocity, (0), 1.69, 1, 1, [1.5], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj];
				_snowflakes1  setParticleRandom [0, [24 + (random 2),24 + (random 2), 4], [0, 0, 0], 0, 0, [0, 0, 0, .03], 0, 0];
				_snowflakes1  setParticleCircle [0, [0, 0, 0]];
				_snowflakes1  setDropInterval 0.0001; 

				_snowflakes2 = "#particlesource" createVehicleLocal _pos; 
				_snowflakes2  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 2, 0], "", "Billboard", 1, 14, [0, 0, 6], _velocity, (0), 1.39, 0, 0, [.2], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj];
				_snowflakes2  setParticleRandom [0, [14 + (random 2),14 + (random 2), 5], [0, 0, 0], 0, 0, [0, 0, 0, 2], 0, 0];
				_snowflakes2  setParticleCircle [0, [0, 0, 0]];
				//_snowflakes2  setDropInterval 0.00004; 
				_snowflakes2  setDropInterval 0.00001; 
				
				sleep 5; + (random 1800);
				deleteVehicle _snowflakes1;
				deleteVehicle _snowflakes2;
				
				};
	
	*/
			
	};    								  
	
// ====================================================================================
	
	

	//add random 5% possible no snow interval
	if (random 1 <= 0.05) then {
		sleep 1 + (random 1200);
	};
	


//}; alpha



// ====================================================================================
// ====================================================================================