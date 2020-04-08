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
--  Empire Attacking (attacker is always #1)
    local ALL = 2
    local IMP = 1
--  These variables do not change
    local ATT = 1
    local DEF = 2


      SetTeamName(ALL, "Alliance")
      SetTeamName(IMP, "Empire")
      SetTeamName(3, "Locals")

        AddMissionObjective(IMP, "orange", "level.naboo1.objectives.1a");
    AddMissionObjective(IMP, "red", "level.naboo1.objectives.4a");
    --AddMissionObjective(IMP, "red", "level.naboo1.objectives.5a");
    AddMissionObjective(ALL, "orange", "level.naboo1.objectives.1a");
    --AddMissionObjective(ALL, "red", "level.naboo1.objectives.2a");
    AddMissionObjective(ALL, "red", "level.naboo1.objectives.3a");

    SetTeamAggressiveness(ALL, 1.0)
    SetTeamAggressiveness(IMP, 0.75)

    SetMaxFlyHeight(-40)
    SetMaxPlayerFlyHeight(-40)


    ReadDataFile("sound\\nab.lvl;nab1gcw");

    ReadDataFile("SIDE\\all.lvl",
        "all_hover_combatspeeder",
        "all_inf_basic",
        "all_inf_lukeskywalker",
        "all_inf_smuggler"
--        "all_fly_xwing"
        )
    ReadDataFile("SIDE\\imp.lvl",
        "imp_fly_destroyer_dome",
        "imp_inf_basic",
        "imp_inf_dark_trooper",
        "imp_inf_darthvader",
        "imp_hover_speederbike",
        "imp_walk_atst"
--        "imp_fly_tiefighter"
        )
    ReadDataFile("SIDE\\gun.lvl",
        "gun_inf_basic",
        "gun_walk_kaadu")



--  Level Stats
    ClearWalkers()
    SetMemoryPoolSize ("EntityWalker",-1)
    AddWalkerType(0, 0) -- 8 droidekas (special case: 0 leg pairs)
    AddWalkerType(1, 6) --
    AddWalkerType(2, 1) -- 2 spider walkers with 2 leg pairs each
    AddWalkerType(3, 0) -- 2 attes with 3 leg pairs each
    SetMemoryPoolSize ("Weapon", 280)
    SetMemoryPoolSize ("CommandHover",0)
    SetMemoryPoolSize("EntityFlyer", 2)
--  SetMemoryPoolSize("EntityTauntaun", 0)
    SetMemoryPoolSize("EntityHover", 5)
    SetMemoryPoolSize("EntityCarrier", 0)
     SetMemoryPoolSize("MountedTurret", 55)
    SetMemoryPoolSize("EntityBuildingArmedDynamic", 0);
    SetMemoryPoolSize("PowerupItem", 40)
    SetMemoryPoolSize("EntityMine", 40)
    SetMemoryPoolSize("OrdnanceTowCable", 0)
    SetMemoryPoolSize("Aimer", 220)

ReadDataFile("NAB\\nab1.lvl")
--  Alliance Stats

      SetTeamIcon(ALL, "all_icon")
      AddUnitClass(ALL, "all_inf_soldier",11)
      AddUnitClass(ALL, "all_inf_vanguard",3)
      AddUnitClass(ALL, "all_inf_pilot",4)
      AddUnitClass(ALL, "all_inf_marksman",4)
      AddUnitClass(ALL, "all_inf_smuggler",3)
    SetHeroClass(ALL, "all_inf_lukeskywalker")

--    Imperial Stats

      SetTeamIcon(IMP, "imp_icon")
      AddUnitClass(IMP, "imp_inf_storm_trooper",11)
      AddUnitClass(IMP, "imp_inf_shock_trooper",3)
      AddUnitClass(IMP, "imp_inf_pilotatst",4)
      AddUnitClass(IMP, "imp_inf_scout_trooper",4)
      AddUnitClass(IMP, "imp_inf_dark_trooper",3)
    SetHeroClass(IMP, "imp_inf_darthvader")


--  Local Stats
    SetTeamIcon(ALL, "all_icon")
    AddUnitClass(3, "gun_inf_soldier", 5)
    AddUnitClass(3, "gun_inf_rider", 2)
    SetUnitCount(3, 7)
    SetTeamAsEnemy(3,ATT)
    SetTeamAsFriend(3,DEF)





--  Attacker Stats
    SetUnitCount(ATT, 25)
    SetReinforcementCount(ATT, 200)
    AddBleedThreshold(ATT, 31, 0.0)
    AddBleedThreshold(ATT, 21, 0.75)
    AddBleedThreshold(ATT, 11, 2.25)
    AddBleedThreshold(ATT, 1, 3.0)
    SetTeamAsEnemy(ATT,3)

--  Defender Stats
    SetUnitCount(DEF, 25)
    SetReinforcementCount(DEF, 200)
    AddBleedThreshold(DEF, 31, 0.0)
    AddBleedThreshold(DEF, 21, 0.75)
    AddBleedThreshold(DEF, 11, 2.25)
    AddBleedThreshold(DEF, 1, 3.0)
    SetTeamAsFriend(DEF,3)

    SetSpawnDelay(10.0, 0.25)
    SetDenseEnvironment("false")

--  Birdies
    SetNumBirdTypes(1);
    SetBirdType(0,1.0,"bird");





--  Sound
    OpenAudioStream("sound\\nab.lvl",  "nabgcw_music");
    OpenAudioStream("sound\\gcw.lvl",  "gcw_vo");
    OpenAudioStream("sound\\gcw.lvl",  "gcw_tac_vo");
    OpenAudioStream("sound\\nab.lvl",  "nab1");
    OpenAudioStream("sound\\nab.lvl",  "nab1");

    SetBleedingVoiceOver(ALL, ALL, "all_off_com_report_us_overwhelmed", 1);
    SetBleedingVoiceOver(ALL, IMP, "all_off_com_report_enemy_losing",   1);
    SetBleedingVoiceOver(IMP, ALL, "imp_off_com_report_enemy_losing",   1);
    SetBleedingVoiceOver(IMP, IMP, "imp_off_com_report_us_overwhelmed", 1);

    SetLowReinforcementsVoiceOver(ALL, ALL, "all_off_defeat_im", .1, 1);
    SetLowReinforcementsVoiceOver(ALL, IMP, "all_off_victory_im", .1, 1);
    SetLowReinforcementsVoiceOver(IMP, IMP, "imp_off_defeat_im", .1, 1);
    SetLowReinforcementsVoiceOver(IMP, ALL, "imp_off_victory_im", .1, 1);

    SetOutOfBoundsVoiceOver(2, "Allleaving");
    SetOutOfBoundsVoiceOver(1, "Impleaving");

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

    SetAttackingTeam(ATT);

--Opening Satalite Shot
--Nab1 Plains
--Hill
AddCameraShot(0.983066, -0.039190, 0.178868, 0.007131, 44.779041, -92.555016, 223.609207);
--Pillars
AddCameraShot(0.558071, -0.004864, -0.829747, -0.007232, -99.522423, -104.189438, 102.993027);
--Center
AddCameraShot(-0.180345, 0.002299, -0.983521, -0.012535, 38.772453, -105.314598, 24.777697);


end

