--start header
function ScriptInit()
local ALL = 1
local IMP = 2
local ATT = 1
local DEF = 2
--end header
--start objectives
AddMissionObjective(IMP,"red", "level.Geonosis.objectives.1");
AddMissionObjective(IMP,"orange", "level.Geonosis.objectives.2");
AddMissionObjective(IMP,"orange", "level.Geonosis.objectives.3");
AddMissionObjective(ALL,"red", "level.Geonosis.objectives.1");
AddMissionObjective(ALL,"orange", "level.Geonosis.objectives.2");
AddMissionObjective(ALL,"orange","level.Geonosis.objectives.3");
--end objectives
--start soundlvl
ReadDataFile("sound\\tat.lvl;tat1gcw");
--end soundlvl

-- Start sidelvls
ReadDataFile("SIDE\\all.lvl",
"all_inf_basicdesert",
"all_inf_lukeskywalker",
"all_inf_smuggler");
ReadDataFile("SIDE\\imp.lvl",
"imp_inf_basic_tie",
"imp_inf_darthvader",
"imp_inf_dark_trooper");
--end sidelvls
--start loadouts
SetTeamName(ALL, "Alliance")
SetTeamIcon(ALL, "all_icon")
AddUnitClass(ALL, "all_inf_soldierdesert",10)
AddUnitClass(ALL, "all_inf_vanguard",1)
AddUnitClass(ALL, "all_inf_pilot",2)
AddUnitClass(ALL, "all_inf_marksman",2)
AddUnitClass(ALL, "all_inf_smuggler",1)
SetHeroClass(ALL, "all_inf_lukeskywalker")
SetTeamName(IMP, "Empire")
SetTeamIcon(IMP, "imp_icon")
AddUnitClass(IMP, "imp_inf_storm_trooper",10)
AddUnitClass(IMP, "imp_inf_shock_trooper",1)
AddUnitClass(IMP, "imp_inf_pilottie",2)
AddUnitClass(IMP, "imp_inf_scout_trooper",2)
AddUnitClass(IMP, "imp_inf_dark_trooper",1)
SetHeroClass(IMP, "imp_inf_darthvader")
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
AddWalkerType(0, 0)-- special -> droidekas
AddWalkerType(1, 0)-- 1x2 (1 pair of legs)
AddWalkerType(2, 0)-- 2x2 (2 pairs of legs)
AddWalkerType(3, 0)-- 3x2 (3 pairs of legs)
SetMemoryPoolSize("PowerupItem", 60)
SetMemoryPoolSize("EntityMine", 40)
--end memorypools
--start worldlvl
ReadDataFile("dc:Geonosis\\Geonosis.lvl")
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
OpenAudioStream("sound\\tat.lvl","tatgcw_music");
OpenAudioStream("sound\\tat.lvl","tat1");
OpenAudioStream("sound\\tat.lvl","tat1");
OpenAudioStream("sound\\gcw.lvl","gcw_vo");
OpenAudioStream("sound\\gcw.lvl","gcw_tac_vo");
OpenAudioStream("sound\\tat.lvl","tat1_emt");
SetBleedingVoiceOver(ALL,ALL,"all_off_com_report_us_overwhelmed",1);
SetBleedingVoiceOver(ALL,IMP,"all_off_com_report_enemy_losing",1);
SetBleedingVoiceOver(IMP,ALL,"imp_off_com_report_enemy_losing",1);
SetBleedingVoiceOver(IMP,IMP,"imp_off_com_report_us_overwhelmed",1);
SetLowReinforcementsVoiceOver(ALL, ALL, "all_off_defeat_im", .1,1);
SetLowReinforcementsVoiceOver(ALL, IMP, "all_off_victory_im", .1,1);
SetLowReinforcementsVoiceOver(IMP, IMP, "imp_off_defeat_im", .1,1);
SetLowReinforcementsVoiceOver(IMP, ALL, "imp_off_victory_im", .1,1);
SetOutOfBoundsVoiceOver(2,"Allleaving");
SetOutOfBoundsVoiceOver(1,"Impleaving");
SetAmbientMusic(ALL,1.0,"all_tat_amb_start",0,1);
SetAmbientMusic(ALL,0.99,"all_tat_amb_middle",1,1);
SetAmbientMusic(ALL,0.1,"all_tat_amb_end",2,1);
SetAmbientMusic(IMP,1.0,"imp_tat_amb_start",0,1);
SetAmbientMusic(IMP,0.99,"imp_tat_amb_middle",1,1);
SetAmbientMusic(IMP,0.1,"imp_tat_amb_end",2,1);
SetVictoryMusic(ALL,"all_tat_amb_victory");
SetDefeatMusic (ALL,"all_tat_amb_defeat");
SetVictoryMusic(IMP,"imp_tat_amb_victory");
SetDefeatMusic (IMP,"imp_tat_amb_defeat");
SetSoundEffect("ScopeDisplayZoomIn","binocularzoomin");
SetSoundEffect("ScopeDisplayZoomOut","binocularzoomout");
SetSoundEffect("SpawnDisplayUnitChange","shell_select_unit");
SetSoundEffect("SpawnDisplayUnitAccept","shell_menu_enter");
SetSoundEffect("SpawnDisplaySpawnPointChange","shell_select_change");
SetSoundEffect("SpawnDisplaySpawnPointAccept","shell_menu_enter");
SetSoundEffect("SpawnDisplayBack","shell_menu_exit");
SetPlanetaryBonusVoiceOver(IMP,IMP,0,"imp_bonus_imp_medical");
SetPlanetaryBonusVoiceOver(IMP,ALL,0,"imp_bonus_all_medical");
SetPlanetaryBonusVoiceOver(IMP,IMP,1,"");
SetPlanetaryBonusVoiceOver(IMP,ALL,1,"");
SetPlanetaryBonusVoiceOver(IMP,IMP,2,"imp_bonus_imp_sensors");
SetPlanetaryBonusVoiceOver(IMP,ALL,2,"imp_bonus_all_sensors");
SetPlanetaryBonusVoiceOver(IMP,IMP,3,"imp_bonus_imp_hero");
SetPlanetaryBonusVoiceOver(IMP,ALL,3,"imp_bonus_all_hero");
SetPlanetaryBonusVoiceOver(IMP,IMP,4,"imp_bonus_imp_reserves");
SetPlanetaryBonusVoiceOver(IMP,ALL,4,"imp_bonus_all_reserves");
SetPlanetaryBonusVoiceOver(IMP,IMP,5,"imp_bonus_imp_sabotage");--sabotage
SetPlanetaryBonusVoiceOver(IMP,ALL,5,"imp_bonus_all_sabotage");
SetPlanetaryBonusVoiceOver(IMP,IMP,6,"");
SetPlanetaryBonusVoiceOver(IMP,ALL,6,"");
SetPlanetaryBonusVoiceOver(IMP,IMP,7,"imp_bonus_imp_training");--advanced training
SetPlanetaryBonusVoiceOver(IMP,ALL,7,"imp_bonus_all_training");--advanced training
SetPlanetaryBonusVoiceOver(ALL,ALL,0,"all_bonus_all_medical");
SetPlanetaryBonusVoiceOver(ALL,IMP,0,"all_bonus_imp_medical");
SetPlanetaryBonusVoiceOver(ALL,ALL,1,"");
SetPlanetaryBonusVoiceOver(ALL,IMP,1,"");
SetPlanetaryBonusVoiceOver(ALL,ALL,2,"all_bonus_all_sensors");
SetPlanetaryBonusVoiceOver(ALL,IMP,2,"all_bonus_imp_sensors");
SetPlanetaryBonusVoiceOver(ALL,ALL,3,"all_bonus_all_hero");
SetPlanetaryBonusVoiceOver(ALL,IMP,3,"all_bonus_imp_hero");
SetPlanetaryBonusVoiceOver(ALL,ALL,4,"all_bonus_all_reserves");
SetPlanetaryBonusVoiceOver(ALL,IMP,4,"all_bonus_imp_reserves");
SetPlanetaryBonusVoiceOver(ALL,ALL,5,"all_bonus_all_sabotage");--sabotage
SetPlanetaryBonusVoiceOver(ALL,IMP,5,"all_bonus_imp_sabotage");
SetPlanetaryBonusVoiceOver(ALL,ALL,6,"");
SetPlanetaryBonusVoiceOver(ALL,IMP,6,"");
SetPlanetaryBonusVoiceOver(ALL,ALL,7,"all_bonus_all_training");--advanced training
SetPlanetaryBonusVoiceOver(ALL,IMP,7,"all_bonus_imp_training");--advanced training
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



