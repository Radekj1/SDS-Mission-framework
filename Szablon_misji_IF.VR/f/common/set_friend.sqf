private ["_set_friend_param"];

VAR_Side_Blufor = west;
VAR_Side_Opfor = east;
VAR_Side_Ind = resistance;

_set_friend_param = f_param_IND_friends;

if (_set_friend_param == 1) then {	//1 - Ind wrogi dla Blufor
	VAR_Side_Ind setFriend [VAR_Side_Blufor, 0];
	VAR_Side_Blufor setFriend [VAR_Side_Ind, 0];
};

if (_set_friend_param == 2) then {	//2 - Ind sprzymierzony z Blufor
	VAR_Side_Ind setFriend [VAR_Side_Blufor, 1];
	VAR_Side_Blufor setFriend [VAR_Side_Ind, 1];
};