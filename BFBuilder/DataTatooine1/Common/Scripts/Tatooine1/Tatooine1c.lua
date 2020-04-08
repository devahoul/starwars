--start header
function ScriptInit()
local CIS = 1
local REP = 2
local ATT = 1
local DEF = 2
--end header
--start objectives
AddMissionObjective(REP,"red", "level.Tatooine1.objectives.1");
AddMissionObjective(REP,"orange", "level.Tatooine1.objectives.2");
AddMissionObjective(REP,"orange", "level.Tatooine1.objectives.3");
AddMissionObjective(CIS,"red", "level.Tatooine1.objectives.1");
AddMissionObjective(CIS,"orange", "level.Tatooine1.objectives.2");
AddMissionObjective(CIS,"orange","level.Tatooine1.objectives.3");
--end objectives
--start soundlvl
ReadDataFile("sound\\tat.lvl;tat1cw");
--end soundlvl

-- Start sidelvls
ReadDataFile("SIDE\\cis.lvl",
"cis_inf_basic",
"cis_inf_countdooku",
"cis_inf_droideka");
ReadDataFile("SIDE\\rep.lvl",
"rep_inf_basic",
"rep_inf_macewindu",
"rep_inf_jet_trooper");
--end sidelvls
--start loadouts
SetTeamName(CIS, "CIS")
SetTeamIcon(CIS, "cis_icon")
AddUnitClass(CIS, "cis_inf_battledroid",10)
AddUnitClass(CIS, "cis_inf_assault",1)
AddUnitClass(CIS, "cis_inf_pilotdroid",2)
AddUnitClass(CIS, "cis_inf_assassindroid",2)
AddUnitClass(CIS, "cis_inf_droideka",1)
SetHeroClass(CIS, "cis_inf_countdooku")
SetTeamName(REP, "Republic")
SetTeamIcon(REP, "rep_icon")
AddUnitClass(REP, "rep_inf_clone_trooper",10)
AddUnitClass(REP, "rep_inf_arc_trooper",1)
AddUnitClass(REP, "rep_inf_clone_pilot",2)
AddUnitClass(REP, "rep_inf_clone_sharpshooter",2)
AddUnitClass(REP, "rep_inf_jet_trooper",1)
SetHeroClass(REP, "rep_inf_macewindu")
--end loadouts
--start teamstats
SetUnitCount(ATT, 16)
SetReinforcementCount(ATT, 200)
SetUnitCount(DEF, 16)
SetReinforcementCount(DEF, 200)
--end teamstats
--start alliances
SetTeamAsFriend(ATT, 1)
SetTeamAsEnemy(ATT, 2)
SetTeamAsFriend(DEF, 2)
SetTeamAsEnemy(DEF, 1)
SetAttackingTeam(ATT);
--end alliances

--start memorypools
ClearWalkers()
AddWalkerType(0, 4)-- special -> droidekas
AddWalkerType(1, 4)-- 1x2 (1 pair of legs)
AddWalkerType(2, 0)-- 2x2 (2 pairs of legs)
AddWalkerType(3, 0)-- 3x2 (3 pairs of legs)
SetMemoryPoolSize("PowerupItem", 60)
SetMemoryPoolSize("EntityMine", 40)
--end memorypools
--start worldlvl
ReadDataFile("dc:Tatooine1\\Tatooine1.lvl")
--end worldlvl
--start spawndelay
SetSpawnDelay(10.0, 0.25)
--end spawndelay
--start flyheight
--end flyheight
--start ainotify
--end ainotify
--start stayinturrets
--end stayinturrets
--start denseenvironment
SetDenseEnvironment("false")
--end denseenvironment
--start birdsandfish
--end birdsandfish
--start deathregions
--end deathregions

--start soundconfig
OpenAudioStream("sound\\tat.lvl","tatcw_music");
OpenAudioStream("sound\\tat.lvl","tat1");
OpenAudioStream("sound\\tat.lvl","tat1");
OpenAudioStream("sound\\cw.lvl","cw_vo");
OpenAudioStream("sound\\cw.lvl","cw_tac_vo");
OpenAudioStream("sound\\tat.lvl","tat1_emt");
SetBleedingVoiceOver(CIS,CIS,"cis_off_com_report_us_overwhelmed",1);
SetBleedingVoiceOver(CIS,REP,"cis_off_com_report_enemy_losing",1);
SetBleedingVoiceOver(REP,CIS,"rep_off_com_report_enemy_losing",1);
SetBleedingVoiceOver(REP,REP,"rep_off_com_report_us_overwhelmed",1);
SetLowReinforcementsVoiceOver(CIS, CIS, "cis_off_defeat_im", .1,1);
SetLowReinforcementsVoiceOver(CIS, REP, "cis_off_victory_im", .1,1);
SetLowReinforcementsVoiceOver(REP, REP, "rep_off_defeat_im", .1,1);
SetLowReinforcementsVoiceOver(REP, CIS, "rep_off_victory_im", .1,1);
SetOutOfBoundsVoiceOver(2,"Allleaving");
SetOutOfBoundsVoiceOver(1,"Impleaving");
SetAmbientMusic(CIS,1.0,"cis_tat_amb_start",0,1);
SetAmbientMusic(CIS,0.99,"cis_tat_amb_middle",1,1);
SetAmbientMusic(CIS,0.1,"cis_tat_amb_end",2,1);
SetAmbientMusic(REP,1.0,"rep_tat_amb_start",0,1);
SetAmbientMusic(REP,0.99,"rep_tat_amb_middle",1,1);
SetAmbientMusic(REP,0.1,"rep_tat_amb_end",2,1);
SetVictoryMusic(CIS,"cis_tat_amb_victory");
SetDefeatMusic (CIS,"cis_tat_amb_defeat");
SetVictoryMusic(REP,"rep_tat_amb_victory");
SetDefeatMusic (REP,"rep_tat_amb_defeat");
SetSoundEffect("ScopeDisplayZoomIn","binocularzoomin");
SetSoundEffect("ScopeDisplayZoomOut","binocularzoomout");
SetSoundEffect("SpawnDisplayUnitChange","shell_select_unit");
SetSoundEffect("SpawnDisplayUnitAccept","shell_menu_enter");
SetSoundEffect("SpawnDisplaySpawnPointChange","shell_select_change");
SetSoundEffect("SpawnDisplaySpawnPointAccept","shell_menu_enter");
SetSoundEffect("SpawnDisplayBack","shell_menu_exit");
SetPlanetaryBonusVoiceOver(REP,REP,0,"rep_bonus_rep_medical");
SetPlanetaryBonusVoiceOver(REP,CIS,0,"rep_bonus_cis_medical");
SetPlanetaryBonusVoiceOver(REP,REP,1,"");
SetPlanetaryBonusVoiceOver(REP,CIS,1,"");
SetPlanetaryBonusVoiceOver(REP,REP,2,"rep_bonus_rep_sensors");
SetPlanetaryBonusVoiceOver(REP,CIS,2,"rep_bonus_cis_sensors");
SetPlanetaryBonusVoiceOver(REP,REP,3,"rep_bonus_rep_hero");
SetPlanetaryBonusVoiceOver(REP,CIS,3,"rep_bonus_cis_hero");
SetPlanetaryBonusVoiceOver(REP,REP,4,"rep_bonus_rep_reserves");
SetPlanetaryBonusVoiceOver(REP,CIS,4,"rep_bonus_cis_reserves");
SetPlanetaryBonusVoiceOver(REP,REP,5,"rep_bonus_rep_sabotage");--sabotage
SetPlanetaryBonusVoiceOver(REP,CIS,5,"rep_bonus_cis_sabotage");
SetPlanetaryBonusVoiceOver(REP,REP,6,"");
SetPlanetaryBonusVoiceOver(REP,CIS,6,"");
SetPlanetaryBonusVoiceOver(REP,REP,7,"rep_bonus_rep_training");--advanced training
SetPlanetaryBonusVoiceOver(REP,CIS,7,"rep_bonus_cis_training");--advanced training
SetPlanetaryBonusVoiceOver(CIS,CIS,0,"cis_bonus_cis_medical");
SetPlanetaryBonusVoiceOver(CIS,REP,0,"cis_bonus_rep_medical");
SetPlanetaryBonusVoiceOver(CIS,CIS,1,"");
SetPlanetaryBonusVoiceOver(CIS,REP,1,"");
SetPlanetaryBonusVoiceOver(CIS,CIS,2,"cis_bonus_cis_sensors");
SetPlanetaryBonusVoiceOver(CIS,REP,2,"cis_bonus_rep_sensors");
SetPlanetaryBonusVoiceOver(CIS,CIS,3,"cis_bonus_cis_hero");
SetPlanetaryBonusVoiceOver(CIS,REP,3,"cis_bonus_rep_hero");
SetPlanetaryBonusVoiceOver(CIS,CIS,4,"cis_bonus_cis_reserves");
SetPlanetaryBonusVoiceOver(CIS,REP,4,"cis_bonus_rep_reserves");
SetPlanetaryBonusVoiceOver(CIS,CIS,5,"cis_bonus_cis_sabotage");--sabotage
SetPlanetaryBonusVoiceOver(CIS,REP,5,"cis_bonus_rep_sabotage");
SetPlanetaryBonusVoiceOver(CIS,CIS,6,"");
SetPlanetaryBonusVoiceOver(CIS,REP,6,"");
SetPlanetaryBonusVoiceOver(CIS,CIS,7,"cis_bonus_cis_training");--advanced training
SetPlanetaryBonusVoiceOver(CIS,REP,7,"cis_bonus_rep_training");--advanced training
--end soundconfig

--start activebonus
--end activebonus

--start camerashots
AddCameraShot(-0.404895, 0.000992, -0.914360, -0.002240, -85.539894, 20.536297, 141.699493);
AddCameraShot(0.040922, 0.004049, -0.994299, 0.098381, -139.729523, 17.546598, -34.360893);
AddCameraShot(-0.312360, 0.016223, -0.948547, -0.049263, -217.381485, 20.150953, 54.514324);
--end camerashots

--start footer
end
--end footer



