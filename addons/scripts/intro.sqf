sleep 60;

private ["_messages", "_timeout"];

_messages = [
	["ZOMBRO Server", "ZOMBRO A3Wasteland"],
	["Welcome", (name player)],
	["Teamspeak IP", "188.228.38.201"],
	["Rules", "Check the Server Rules under Map."],
	["ATM / Bank", "You can use any of the many ATMs found in Stratis. Marked on map as a yellow A"],
	["HvT", "High value targets with more than 60K are marked on the map with 60 secs. interval"],
	["Earplugs", "Put in/out your earplugs by using the END key."],
	["Emergency Eject", "Emergency Eject by using the DEL key."],
	["Holster your weapon", "by using the H key."],
	["Jump or Open / Cut Parachute", "by using the V key."],
	["Mag Repack", "by pressing Left CTRL+R keys."],
	["Service Vehicle", "Enter vehicle store to service your vehicle (Refuel-Repair-Rearm)."],
//	["Safe-zones", "All general stores have a safe zone (A beep sounds entering/leaving)."],
	["Locking Base items", "Locking is disabled around stores in a 100m. radius"],
//	["Base building", "Use Baselocker for base management."],
	["Air Drops", "Use airdrop for fast delivery. Money will be deducted from your bank account"],
	["Server restart", "Every 3 hours, starting at 06.00"],
	["Server INFO", "Server info is displayed at the bottom of your screen."]
];

_timeout = 8;
{
	private ["_title", "_content", "_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#a81e13' align='left' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='left'>%2</t>"), _title, _content];
	[_titleText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_timeout,0.5] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;