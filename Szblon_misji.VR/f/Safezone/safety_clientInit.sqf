// ====================================================================================


// Przełączenie trybu ognia na tryb „SAFE”.
sleep 0.01;
if (currentWeapon player != "") then {
    [player, currentWeapon player, currentMuzzle player] call ACE_safemode_fnc_lockSafety;
};
