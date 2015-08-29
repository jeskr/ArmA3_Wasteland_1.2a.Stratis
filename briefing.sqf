// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

_trimName = { _this select [1, count _this - 2] };
_aKeyName = { _arr = actionKeysNamesArray _this; if (count _arr == 0) exitWith {"<UNDEFINED>"}; _arr select 0 };

#define NKEYNAME(DIK) (keyName DIK call _trimName)
#define AKEYNAME(ACT) (ACT call _aKeyName)

waitUntil {!isNull player};

player createDiarySubject ["serverrules", "Server Rules"];
player createDiarySubject ["infos", "Infos and Help"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["credits", "Credits"];

player createDiaryRecord ["serverrules",
[
"Server Rules",
"
<br/> 1.   Hacking or cheating will get you banned.
<br/> 2.   NO Glitching or Combat logging is allowed it will cause punishment up to permanent ban.
<br/> 3.   NO blocking or building around Stores or ATM´s is allowed it will cause punishment up to permanent ban.
<br/> 4.   NO VOIP IN GLOBAL. Use the channels or Teamspeak!
<br/> 5.   ONLY ENGLISH or DANISH CHATTING IS ALLOWED IN GLOBAL and SIDE-CHAT.
<br/> 6.   As Independant NO VOIP IN SIDECHAT is allowed (Writing is allowed). Use the group channels or Teamspeak!
<br/> 7.   Using or spamming with loud\long custom sound commands will cause punishment up to permanent ban.
<br/> 8.   Keep bad language to a minimum. If you have a problem with another player, take it to direct.
<br/> 9.   Support your team and its objectives. DONT steal from your team mates.
<br/> 10.  Team killing when you are in BLUFOR or OPFOR is forbidden and punishable. Play as Independent if you want to be free for all.
<br/> 11.  Respect other players.
<br/> 12.  Respect the administrators.
<br/> 13.  Camping stores is allowed. Wasteland is a HARSH survival map. Learn to deal with it and go on your way.
<br/> 14.  Bank Balances are non-refundable.
"
]];

player createDiaryRecord ["changelog",
 [
"v1.2a",
"
<br/> [Added] Drugrunners are marked on map (Carry 2 or more of any kind of drugs)
<br/> [Added] High Value Target is marked on map. (Over 60K)
<br/> [Added] Selling planes only give $5000 (Find another way to get money)
<br/> [Removed] Auto spotted Player tags
<br/> [Removed] Mine tags (Still visible on map)
<br/> [Added] New Vehicle Textures
<br/> [Added] Sunken treasure reward adjusted
<br/> [Removed] AllowNoGrass
<br/> [Removed] GPS as default
<br/> [Added] Uniformpainter adjusted
<br/> [Added] Insurgent need to buy charge or satchel first
<br/> [Added] Classes gear adjusted
<br/> [Added] CorpseRemovalTime adjusted
<br/> [Removed] Pawnee DAGR missiles
<br/> [Removed] M5 Sandstorm MLRS from MBT mission
<br/> -----------------------------------------
<br/> [Added] Base locker (It is hackable and destroyable)
<br/> [Added] Safe with keypad
<br/> [Added] Wasteland item to put a pincode on a vehicle
<br/> [Added] Camouflage nets now save
<br/> [Added] Ability to change uniform texture
<br/> [Added] Ability to mark your owned vehicles and objects on the map
<br/> [Added] Show R.I.P. map marker on corpse location after death
<br/> [Added] Multiplying money reward for players that stay on the server
<br/> [Added] Changed the appearance of the store NPCs
<br/> [Added] Sell, Change Ownership and Resupply at store vendors
<br/> [Added] Vehicle locking and info script by Micovery
<br/> [Added] Vehicle lock state saving
<br/> [Added] Locked vehicle break in and hot wire at a cost
<br/> [Added] Access to DLC Helicopter pilot seat without DLC
<br/> [Added] New main missions: Hackers, Abandoned Jet, Hostile Jet Formation
<br/> [Added] New side missions: Snipers, DrugsRunners, Roadblock
<br/> [Added] New side missions: Geocache, Smugglers, Hostile Jet
<br/> [Added] New money missions: Military patrol
<br/> [Added] Player controlled IP cameras
<br/> [Added] Device detector (IP Cameras, Spawn Beacons and Base Lockers)
<br/> [Added] Mortar to one mission as reward
<br/> [Added] High value target and Drugs runner with removal and message on disconnect
<br/> [Added] TearGas Grenades by Mokey / CRE4MPIE
<br/> [Added] Logging to all admin commands
<br/> [Added] Airdrop system by Apoc
<br/> [Added] Teamlock to independent
<br/> [Added] Voiceblock to side channel
<br/> [Added] Drugs by Micovery
<br/> [Added] Wateredge fix by Micovery
<br/> [Added] Maximum spawnbeacon option
<br/> [Added] Delete spawnbeacon ability
<br/> [Added] 3D Markers
<br/> [Added] ZLT Fastrope
<br/> [Added] Explosives to vehicles
<br/> [Added] Fix for spawnbeacons placed above water
<br/> [Added] IEDs to stores and vehicles.
<br/> [Added] Several new objects to General store for base building
<br/> [Added] Cut throat feature to unconscious players
<br/> [Added] Injured by enemy AI message
<br/> [Added] Admin menu: teleport player to me
<br/> [Added] Admin menu: teleport me to player
<br/> [Added] Admin menu: unstuck player
<br/> [Added] Admin menu: invisibility mode
<br/> [Added] Debug menu: unlock, relock and delete objects
<br/> [Removed] Mortar from store
<br/> [Moved] Mission weightings to main_config
<br/> [Changed] Size of player icons
<br/> [Changed] Color of menus
<br/> [Changed] Starting gear
<br/> [Changed] Only 2 vehicle stores sell planes (Altis)
<br/> [Changed] Disabled Fog
<br/> [Changed] Changed prices
<br/> [Changed] Vehicles spawn in locked and with engine on
<br/> [Changed] Spawnbeacon insertion to 0 mtrs
<br/> [Changed] Ability to airlift crates
<br/> [Changed] Old R3F script to version 3.1
<br/> -----------------------------------------
<br/>[Added] Mag Repack by Outlawled (Ctrl + " + NKEYNAME(19) + ")
<br/>[Added] Adjustable NV by xx-LSD-xx (Shift + PageUp/Down)
<br/>[Added] New vehicle store paintjobs
<br/>[Added] Town spawn cooldown
<br/>[Added] Ghosting timer
<br/>[Added] Object lock restriction near stores and missions
<br/>[Added] Headless client object saving
<br/>[Added] Time and weather saving
<br/>[Changed] Expanded UAV control restriction to quadcopters
<br/>[Changed] Injured players no longer count as town enemies
<br/>[Changed] Upgraded extDB to extDB2 by Torndeco
<br/>[Changed] Updated antihack
<br/>[Fixed] Old spawn beacons no longer shown on spawn menu
<br/>[Fixed] Multiple money duping exploits
<br/>[Fixed] Vehicles and objects sometimes disappearing from DB
<br/>[Fixed] Severe injuries caused by jumping over small ledges
<br/>[Fixed] Antihack kicks due to RHS, MCC, AGM, ACE3, ALiVE
<br/>[Fixed] Various minor bugfixes and optimizations
"
]];

player createDiaryRecord ["credits",
[
"Credits",
"
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev (TeamPlayerGaming)
<br/>	* JoSchaap (GoT/Tweakers.net)
<br/>	* MercyfulFate
<br/>	* His_Shadow (KoS/KillonSight)
<br/>	* Bewilderbeest (KoS/KillonSight)
<br/>	* Torndeco
<br/>	* Del1te (404Games)
<br/>
<br/><font size='16' color='#BBBBBB'>Original Arma 2 Wasteland missions by:</font>
<br/>	* Tonic
<br/>	* Sa-Matra
<br/>	* MarKeR
<br/>
<br/><font size='16' color='#BBBBBB'>Improved and ported to Arma 3 by 404Games:</font>
<br/>	* Deadbeat
<br/>	* Costlyy
<br/>	* Pulse
<br/>	* Domuk
<br/>
<br/><font size='16' color='#BBBBBB'>Other contributors:</font>
<br/>	* 82ndab-Bravo17 (GitHub)
<br/>	* afroVoodo (Armaholic)
<br/>	* Austerror (GitHub)
<br/>	* AWA (OpenDayZ)
<br/>	* bodybag (Gameaholic.se)
<br/>	* code34 (iniDBI)
<br/>	* Das Attorney (Jump MF)
<br/>	* Ed! (404Games forums)
<br/>	* Farooq (GitHub)
<br/>	* gtoddc (A3W forums)
<br/>	* HatchetHarry (GitHub)
<br/>	* Hub (TeamPlayerGaming)
<br/>	* k4n30 (GitHub)
<br/>	* Killzone_Kid (KillzoneKid.com)
<br/>	* Krunch (GitHub)
<br/>	* Special Thanks to LouDnl (GitHub)
<br/>	* madbull (R3F)
<br/>	* Mainfrezzer (Magnon)
<br/>	* meat147 (GitHub)
<br/>	* micovery (GitHub)
<br/>	* Na_Palm (BIS forums)
<br/>	* Outlawled (Armaholic)
<br/>	* red281gt (GitHub)
<br/>	* RockHound (BierAG)
<br/>	* s3kShUn61 (GitHub)
<br/>	* Sa-Matra (BIS forums)
<br/>	* Sanjo (GitHub)
<br/>	* SCETheFuzz (GitHub)
<br/>	* Shockwave (A3W forums)
<br/>	* SicSemperTyrannis (iniDB)
<br/>	* SPJESTER (404Games forums)
<br/>	* spunFIN (BIS forums)
<br/>	* Tonic (BIS forums)
<br/>	* wiking.at (A3W forums)
<br/>	* xx-LSD-xx (Armaholic)
<br/>	* Zenophon (BIS Forums)
<br/>	* Cael817 (A3W forums)
<br/>	* Micovery (A3W forums)
<br/>	* BadVolt (A3W forums)
<br/>	* CRE4MPIE (A3W forums)
<br/>
<br/><font size='16'>Thanks A LOT to everyone involved for the help and inspiration!</font>
"
]];

_WASD = AKEYNAME("MoveForward") + "," + AKEYNAME("MoveBack") + "," + AKEYNAME("TurnLeft") + "," + AKEYNAME("TurnRight");

player createDiaryRecord ["infos",
[
"Admin Spectate keys",
"
<br/>Admin menu Spectate camera controls:
<br/>
<br/>Shift + " + AKEYNAME("NextChannel") + " (next player)
<br/>Shift + " + AKEYNAME("PrevChannel") + " (previous player)
<br/>Ctrl + " + NKEYNAME(18) + " (exit camera)
<br/>Ctrl + " + AKEYNAME("Chat") + " (attach/detach camera from target)
<br/>Ctrl + " + NKEYNAME(35) + " (toggle target HUD)
<br/>" + AKEYNAME("NightVision") + " (nightvision, thermal)
<br/>" + _WASD + " (move camera around)
<br/>" + NKEYNAME(16) + " (move camera up)
<br/>" + NKEYNAME(44) + " (move camera down)
<br/>Mouse Move (rotate camera)
<br/>Mouse Wheel Up (increase camera speed)
<br/>Mouse Wheel Down (decrease camera speed)
<br/>Shift + " + _WASD + " (move camera around faster)
<br/>" + AKEYNAME("ShowMap") + " (open/close map - click on map to teleport camera)
"
]];

player createDiaryRecord ["infos",
[
"Player hotkeys",
"
<br/>List of player hotkeys and functions:
<br/>
<br/>" + NKEYNAME(41) + " (open player menu)
<br/>" + NKEYNAME(207) + " (toggle earplugs)
<br/>" + NKEYNAME(199) + ", " + NKEYNAME(219) + ", " + NKEYNAME(220) + " (toggle player names)
<br/>Ctrl + " + AKEYNAME("GetOut") + " (emergency eject)
<br/>" + AKEYNAME("GetOver") + " (open parachute)
<br/>Shift + " + NKEYNAME(201) + " / " + NKEYNAME(209) + " (adjust nightvision)
"
]];

player createDiaryRecord ["infos",
[
"Hints and Tips",
"
<br/><font size='18'>A3Wasteland</font>
<br/>
<br/>* At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.
<br/>
<br/>* When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, map-bound bases, etc. remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.
<br/>
<br/>* If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.
<br/>
<br/>* Always be on the lookout for nightvision. they are located in the ammo crates, and there are pairs scattered throughout vehicles. You can also purchase them from the gunstores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.
<br/>
<br/>* When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.
<br/>
<br/>* There are very aggressive AI characters that spawn with most missions and will protect the mission objectives with deadly force, be aware of them.
"
]];

player createDiaryRecord ["infos",
[
"About Wasteland",
"
<br/>Wasteland is a team versus team versus team sandbox survival experience. The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions. It is survival at its best! Keep in mind this is a work in progress, please direct your reports to http://forums.a3wasteland.com/
<br/>
<br/>FAQ:
<br/>
<br/>Q. What am I supposed to do here?
<br/>A. See the above description
<br/>
<br/>Q. Where can I get a gun?
<br/>A. Weapons are found in one of three places, first in ammo crates that come as rewards from missions, inside and outside buildings, and second, in the gear section of the vehicles, which also randomly spawn around the map. The last place to find a gun would be at the gunshops located throughout the map. You can also find them on dead players whose bodies have not yet been looted.
<br/>
<br/>Q. What are the blue circles on the map?
<br/>A. The circles represent town limits. If friendly soldiers are in a town, you can spawn there from the re-spawn menu; however if there is an enemy presence, you will not be able to spawn there.
<br/>
<br/>Q. Why is it so dark, I cant see.
<br/>A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or use your Nightvision Goggles as the darkness sets in.
<br/>
<br/>Q. Is it ok for me to shoot my team mates?
<br/>A. If you are member of BLUFOR or OPFOR teams, then you are NOT allowed to shoot or steal items and vehicles from other players. If you play as Independent, you are free to engage anyone as well as team up with anyone you want.
<br/>
<br/>Q. Whats with the canisters, baskets and big bags?
<br/>A. This game has a food and water system that you must stay on top of if you hope to survive. You can collect food and water from food sacks and wells, or baskets and plastic canisters dropped by dead players. Food and water will also randomly spawn around the map.
<br/>
<br/>Q. I saw someone breaking a rule, what do I do?
<br/>A. Simply go into global chat and get the attention of one of the admins or visit our forums, and make a report if the offense is serious.
"
]];
