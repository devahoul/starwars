---------------------------------------------------------------------------
-- FUNCTION:    ScriptInit
-- PURPOSE:     This function is only run once
-- INPUT:
-- OUTPUT:
-- NOTES:       The name, 'ScriptInit' is a chosen convention, and each
--              mission script must contain a version of this function, as
--              it is called from C to start the mission.
---------------------------------------------------------------------------
function ScriptInit()
--  Attacker is always #1
    local ALL = 1
    local IMP = 2
--  These variables do not change
    local ATT = 1
    local DEF = 2


    AddMissionObjective(IMP, "orange", "level.naboo2.objectives.1");
    AddMissionObjective(IMP, "red", "level.naboo2.objectives.2");
    AddMissionObjective(ALL, "orange", "level.naboo2.objectives.1");
    AddMissionObjective(ALL, "red", "level.naboo2.objectives.3");

    ReadDataFile("sound\\nab.lvl;nab2gcw");
    ReadDataFile("SIDE\\all.lvl",
        "all_hover_combatspeeder",
        "all_inf_basicurban",
        "all_inf_lukeskywalker",
        "all_inf_smuggler");
    ReadDataFile("SIDE\\imp.lvl",
        "imp_hover_fightertank",
        "imp_inf_basic",
        "imp_inf_dark_trooper",
        "imp_inf_darthvader");

    SetAttackingTeam(ATT);

--              Alliance Stats
        SetTeamName(ALL, "Alliance")
        SetTeamIcon(ALL, "all_icon")
    AddUnitClass(ALL, "all_inf_soldierurban",40)
    AddUnitClass(ALL, "all_inf_vanguard",15)
    AddUnitClass(ALL, "all_inf_pilot",15)
    AddUnitClass(ALL, "all_inf_marksman",15)
    AddUnitClass(ALL, "all_inf_smuggler",15)
    SetHeroClass(ALL, "all_inf_lukeskywalker")

--              Imperial Stats
        SetTeamName(IMP, "Empire")
        SetTeamIcon(IMP, "imp_icon")
    AddUnitClass(IMP, "imp_inf_storm_trooper",40)
    AddUnitClass(IMP, "imp_inf_shock_trooper",15)
    AddUnitClass(IMP, "imp_inf_pilotatst",15)
    AddUnitClass(IMP, "imp_inf_scout_trooper",15)
    AddUnitClass(IMP, "imp_inf_dark_trooper",15)
        SetHeroClass(IMP, "imp_inf_darthvader")

--  Attacker Stats
    SetUnitCount(ATT, 100)
    SetReinforcementCount(ATT, 500)
    AddBleedThreshold(ATT, 31, 0.0)
    AddBleedThreshold(ATT, 21, 0.75)
    AddBleedThreshold(ATT, 11, 2.25)
    AddBleedThreshold(ATT, 1, 3.0)

--  Defender Stats
    SetUnitCount(DEF, 100)
    SetReinforcementCount(DEF, 500)
    AddBleedThreshold(DEF, 31, 0.0)
    AddBleedThreshold(DEF, 21, 0.75)
    AddBleedThreshold(DEF, 11, 2.25)
    AddBleedThreshold(DEF, 1, 3.0)

--  Level Stats
    ClearWalkers()
    AddWalkerType(1, 0) -- 0 atsts with 1 leg pairs each
    SetMemoryPoolSize("EntityHover", 6)
    SetMemoryPoolSize("MountedTurret", 20)
    SetSpawnDelay(10.0, 0.25);
    ReadDataFile("NAB\\nab2.lvl")
    SetDenseEnvironment("true")
    AddDeathRegion("Water");
    AddDeathRegion("Waterfall");
    SetMaxFlyHeight(-20)

--  Birdies
    SetNumBirdTypes(1);
    SetBirdType(0,1.0,"bird");
    SetBirdFlockMinHeight(-28.0);

--  Sound
    OpenAudioStream("sound\\nab.lvl",  "nabgcw_music");
    OpenAudioStream("sound\\gcw.lvl",  "gcw_vo");
    OpenAudioStream("sound\\gcw.lvl",  "gcw_tac_vo");
    OpenAudioStream("sound\\nab.lvl",  "nab2");
    OpenAudioStream("sound\\nab.lvl",  "nab2");
    OpenAudioStream("sound\\nab.lvl",  "nab2_emt");

    SetBleedingVoiceOver(ALL, ALL, "all_off_com_report_us_overwhelmed", 1);
    SetBleedingVoiceOver(ALL, IMP, "all_off_com_report_enemy_losing", 1);
    SetBleedingVoiceOver(IMP, ALL, "imp_off_com_report_enemy_losing", 1);
    SetBleedingVoiceOver(IMP, IMP, "imp_off_com_report_us_overwhelmed", 1);

    SetLowReinforcementsVoiceOver(ALL, ALL, "all_off_defeat_im", .1, 1);
    SetLowReinforcementsVoiceOver(ALL, IMP, "all_off_victory_im", .1, 1);
    SetLowReinforcementsVoiceOver(IMP, IMP, "imp_off_defeat_im", .1, 1);
    SetLowReinforcementsVoiceOver(IMP, ALL, "imp_off_victory_im", .1, 1);

    SetOutOfBoundsVoiceOver(1, "allleaving");
    SetOutOfBoundsVoiceOver(2, "impleaving");

    SetAmbientMusic(ALL, 1.0, "all_nab_amb_start",  0,1);
    SetAmbientMusic(ALL, 0.99, "all_nab_amb_middle", 1,1);
    SetAmbientMusic(ALL, 0.1,"all_nab_amb_end",    2,1);
    SetAmbientMusic(IMP, 1.0, "imp_nab_amb_start",  0,1);
    SetAmbientMusic(IMP, 0.99, "imp_nab_amb_middle", 1,1);
    SetAmbientMusic(IMP, 0.1,"imp_nab_amb_end",    2,1);

    SetVictoryMusic(ALL, "all_nab_amb_victory");
    SetDefeatMusic (ALL, "all_nab_amb_defeat");
    SetVictoryMusic(IMP, "imp_nab_amb_victory");
    SetDefeatMusic (IMP, "imp_nab_amb_defeat");

    SetSoundEffect("ScopeDisplayZoomIn",  "binocularzoomin");
    SetSoundEffect("ScopeDisplayZoomOut", "binocularzoomout");
    --SetSoundEffect("WeaponUnableSelect",  "com_weap_inf_weaponchange_null");
    --SetSoundEffect("WeaponModeUnableSelect",  "com_weap_inf_modechange_null");
    SetSoundEffect("SpawnDisplayUnitChange",       "shell_select_unit");
    SetSoundEffect("SpawnDisplayUnitAccept",       "shell_menu_enter");
    SetSoundEffect("SpawnDisplaySpawnPointChange", "shell_select_change");
    SetSoundEffect("SpawnDisplaySpawnPointAccept", "shell_menu_enter");
    SetSoundEffect("SpawnDisplayBack",             "shell_menu_exit");

    SetPlanetaryBonusVoiceOver(IMP, IMP, 0, "imp_bonus_imp_medical");
    SetPlanetaryBonusVoiceOver(IMP, ALL, 0, "imp_bonus_all_medical");
    SetPlanetaryBonusVoiceOver(IMP, IMP, 1, "");
    SetPlanetaryBonusVoiceOver(IMP, ALL, 1, "");
    SetPlanetaryBonusVoiceOver(IMP, IMP, 2, "imp_bonus_imp_sensors");
    SetPlanetaryBonusVoiceOver(IMP, ALL, 2, "imp_bonus_all_sensors");
    SetPlanetaryBonusVoiceOver(IMP, IMP, 3, "imp_bonus_imp_hero");
    SetPlanetaryBonusVoiceOver(IMP, ALL, 3, "imp_bonus_all_hero");
    SetPlanetaryBonusVoiceOver(IMP, IMP, 4, "imp_bonus_imp_reserves");
    SetPlanetaryBonusVoiceOver(IMP, ALL, 4, "imp_bonus_all_reserves");
    SetPlanetaryBonusVoiceOver(IMP, IMP, 5, "imp_bonus_imp_sabotage");--sabotage
    SetPlanetaryBonusVoiceOver(IMP, ALL, 5, "imp_bonus_all_sabotage");
    SetPlanetaryBonusVoiceOver(IMP, IMP, 6, "");
    SetPlanetaryBonusVoiceOver(IMP, ALL, 6, "");
    SetPlanetaryBonusVoiceOver(IMP, IMP, 7, "imp_bonus_imp_training");--advanced training
    SetPlanetaryBonusVoiceOver(IMP, ALL, 7, "imp_bonus_all_training");--advanced training

    SetPlanetaryBonusVoiceOver(ALL, ALL, 0, "all_bonus_all_medical");
    SetPlanetaryBonusVoiceOver(ALL, IMP, 0, "all_bonus_imp_medical");
    SetPlanetaryBonusVoiceOver(ALL, ALL, 1, "");
    SetPlanetaryBonusVoiceOver(ALL, IMP, 1, "");
    SetPlanetaryBonusVoiceOver(ALL, ALL, 2, "all_bonus_all_sensors");
    SetPlanetaryBonusVoiceOver(ALL, IMP, 2, "all_bonus_imp_sensors");
    SetPlanetaryBonusVoiceOver(ALL, ALL, 3, "all_bonus_all_hero");
    SetPlanetaryBonusVoiceOver(ALL, IMP, 3, "all_bonus_imp_hero");
    SetPlanetaryBonusVoiceOver(ALL, ALL, 4, "all_bonus_all_reserves");
    SetPlanetaryBonusVoiceOver(ALL, IMP, 4, "all_bonus_imp_reserves");
    SetPlanetaryBonusVoiceOver(ALL, ALL, 5, "all_bonus_all_sabotage");--sabotage
    SetPlanetaryBonusVoiceOver(ALL, IMP, 5, "all_bonus_imp_sabotage");
    SetPlanetaryBonusVoiceOver(ALL, ALL, 6, "");
    SetPlanetaryBonusVoiceOver(ALL, IMP, 6, "");
    SetPlanetaryBonusVoiceOver(ALL, ALL, 7, "all_bonus_all_training");--advanced training
    SetPlanetaryBonusVoiceOver(ALL, IMP, 7, "all_bonus_imp_training");--advanced training


--  Camera Stats
--Nab2 Theed
--Palace
AddCameraShot(-0.007592, -0.000002, -0.999971, 0.000209, -168.559723, -45.250122, 13.399481);
--Fountain
AddCameraShot(0.255033, 0.003789, -0.966818, 0.014365, -45.806969, -47.785381, -45.429058);
--Rotunda
AddCameraShot(0.621417, -0.119417, -0.760412, -0.146128, -276.067444, -18.259653, -77.929230);
end