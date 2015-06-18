#define SAFETY_ZONES    [["respawn_west", 300],["respawn_guerrila",300],["respawn_east",300]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Strzelanie/rzucanie granatow zabronione!"

if (isDedicated) exitWith {};
waitUntil {!isNull player};

player addEventHandler ["Fired", {
    if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
    {
        deleteVehicle (_this select 6);
        titleText [MESSAGE, "PLAIN", 3];
		player allowDamage false;
    };
}]; 
