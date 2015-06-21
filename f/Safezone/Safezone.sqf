#define MESSAGE "Strzelanie/rzucanie granatow zabronione!"

if (isDedicated) exitWith {};
waitUntil {!isNull player};

if (isNil "inSafezone") then {inSafezone = false;};
while {true}
do 
{
    private["_safeZoneDamageEH", "_safeZoneFiredEH"];	
    waitUntil{inSafeZone};
    player allowDamage false;	
	
	_safeZoneDamageEH = player addEventhandler["HandleDamage",{false}];
    _safeZoneFiredEH = player addEventHandler ["Fired",	
	
	{ deleteVehicle (_this select 6);
	titleText [MESSAGE, "PLAIN", 3];
    }];
	
    waitUntil {!inSafeZone};
    player allowDamage true;
    player removeEventhandler["HandleDamage", _safeZoneDamageEH];
    player removeEventHandler["Fired", _safeZoneFiredEH];
}; 
