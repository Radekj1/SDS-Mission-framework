//only run on jips joining after safestart disabled
waitUntil {!isNull player};
if ((f_param_autoTeleport == 1) && ((f_var_mission_timer == 0) || (f_var_mission_timer < 0))) then {
//player sideChat "Ponownie wywołano JIP teleport";

private _time = time;
waitUntil {(player getVariable ["f_var_assignGear_done",false]) || ((time + 30) > _time)};
_lead = [player, side player] call F_fnc_getCurLeader;
if (typeName _lead == "BOOL") then {
  hint "Obecnie nie ma dowódcy dostępnego do teleportacji. Skontaktuj się z administratorem.";
  //systemChat "Obecnie nie ma dowódcy dostępnego do teleportacji. Skontaktuj się z administratorem.";
} else {

if (vehicle _lead != _lead) then {
  //in car
  player allowDamage false; [] spawn {sleep 5; player allowDamage true}; //protect them in the case of fall damage or whatnot
  player moveInCargo (vehicle _lead);
  sleep 2;
  if !(player in (crew vehicle _lead)) then {
    //the cargo was full
    hint "Dowódca misji jest obecnie w pełnym pojeździe. Poczekaj, aż z niego wyjdzie.";
    //systemChat "Dowódca misji jest obecnie w pełnym pojeździe. Poczekaj, aż z niego wyjdzie";
    [] spawn {sleep 10; [] execVM "f\JIP\f_JIP_autoTeleport.sqf";}; //rerun script and try again
  } else {
    //they are there in the car
    hint ((name player) + ", dołączyłeś do obecnego dowódcy (" + (name _lead) + ") w strefie walki. Zapytaj go o przydział do drużyny.");
    //systemChat ((name player) + ", dołączyłeś do obecnego dowódcy (" + (name _lead) + ") w strefie walki. Zapytaj go o przydział do drużyny.");
    [
      [
        [_lead,player],
        {
          params ["_leader","_joiner"];
          hint ((name _joiner) + " dołączył w trakcie gry (JIP) (" + getText(configFile >> "CfgVehicles" >> (typeOf _joiner) >> "displayName") + ") i został teleportowany do twojego pojazdu. Przydziel go do drużyny, " + (name _leader) + "!");
          //systemChat ((name _joiner) + " dołączył w trakcie gry (JIP) (" + getText(configFile >> "CfgVehicles" >> (typeOf _joiner) >> "displayName") + ") i został teleportowany do twojego pojazdu. Przydziel go do drużyny, " + (name _leader) + "!");
        }
      ],
      "BIS_fnc_spawn",
      _lead
    ] call BIS_fnc_MP;
	
	[player] join (group _lead);
  };
} else {
  //on foot
  _posPlant = _lead modelToWorld [0,-3,0]; //3 meters behind leader
  _posPlant set [2,0]; //ensure height atl = 0
  player allowDamage false; [] spawn {sleep 5; player allowDamage true}; //protect them in the case of fall damage or whatnot
  player setPosATL _posPlant;
  [player] join (group _lead);
  hint ((name player) + ", zostałeś teleportowany do dowódcy misji (" + (name _lead) + "), spytaj go o przydział drużyny!");
  //systemChat ((name player) + ", zostałeś teleportowany do dowódcy misji (" + (name _lead) + "), spytaj go o przydział drużyny!");
  [
    [
      [_lead,player],
      {
        params ["_leader","_joiner"];
        hint ((name _joiner) + " dołączył w trakcie gry (JIP) (" + getText(configFile >> "CfgVehicles" >> (typeOf _joiner) >> "displayName") + ") i został teleportowany tuż za ciebie. Przydziel go do drużyny, " + (name _leader) + "!");
        //systemChat ((name _joiner) + " jest JIP (" + getText(configFile >> "CfgVehicles" >> (typeOf _joiner) >> "displayName") + ") i został teleportowany tuż za ciebie. Przydziel go do drużyny, " + (name _leader) + "!");
      }
    ],
    "BIS_fnc_spawn",
    _lead
  ] call BIS_fnc_MP;
};
};
} else {
	hint "Jest jeszcze Safe Start. Udaj się do HQ";
};