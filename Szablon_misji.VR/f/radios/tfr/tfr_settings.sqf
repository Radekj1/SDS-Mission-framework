// F3 - TFR Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RADIO STRUCTURE

// Whether long range radios are automatically added
tf_no_auto_long_range_radio = true;

// Should a side use the same short-wave frequencies
tf_same_sw_frequencies_for_side = true;

// Should a side use the same long-wave frequencies
tf_same_lr_frequencies_for_side = true;

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_tfr_disableRadios = FALSE;

// Which units should be given LR backpacks
// TRUE = all group leaders get backpacks
// FALSE = only units defined in next variable will get LR backpacks
f_radios_settings_tfr_defaultLRBackpacks = FALSE;

// Unit types you want to give long-range radios if previous is
// E.G: ["co", "m"] would give the CO and all medics 2 long-range radios
f_radios_settings_tfr_backpackRadios = ["co","dc","vc","pp"];

// Independent radio encryption code: Independent faction use radio code of side 
// they are friendly to if they are only friendly to one side.
f_radios_settings_tfr_indepUseRadioCode = FALSE;




/////////////////////////
/////////  CBA  /////////
/////////////////////////
/*
// Whether long range radios are automatically added
["TF_no_auto_long_range_radio", true, true] call CBA_settings_fnc_set;

// Should a side use the same short-wave frequencies
["TF_same_sw_frequencies_for_side", true, true] call CBA_settings_fnc_set;

// Should a side use the same long-wave frequencies
["TF_same_lr_frequencies_for_side", true, true] call CBA_settings_fnc_set;

// Which units should be given LR backpacks
// TRUE = all group leaders get backpacks
// FALSE = only units defined in next variable will get LR backpacks
["TF_radios_settings_tfr_defaultLRBackpacks", false, true] call CBA_settings_fnc_set;

// Unit types you want to give long-range radios if previous is
// E.G: ["co", "m"] would give the CO and all medics 2 long-range radios
// ["_radios_settings_tfr_backpackRadios", ["co","dc","vc","pp"], true] call CBA_settings_fnc_set; //Nie wiem czy to zadziała, czy wogle w tym przypadku zmiana jest potrzebna
f_radios_settings_tfr_backpackRadios = ["co","dc","vc","pp"];

// Independent radio encryption code: Independent faction use radio code of side 
// they are friendly to if they are only friendly to one side.
["TF__radios_settings_tfr_indepUseRadioCode", false, true] call CBA_settings_fnc_set;
*/