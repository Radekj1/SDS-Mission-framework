// Safety Systems Support initialisation
// ====================================================================================

// Oczekiwanie na zaladowanie parametrow.

if (hasInterface) then
{
    if (isClass(configFile >> "CfgPatches" >> "ace_medical")) then {
        [] execVM "f\Safezone\safety_clientInit.sqf";
    };
};
