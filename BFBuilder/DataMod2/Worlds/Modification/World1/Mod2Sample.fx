
Effect("Godray")
{
    Enable(1);
    MaxGodraysInWorld(5000);
    MaxGodraysOnScreen(10);
    OffsetAngle(0.000000);
    DustVelocity(0.0, -0.1, 0.0);
    MaxViewDistance(150);
    MaxViewDistance(130);
}

Effect("Blur")
{
    Enable(1);
    Mode(1)
    ConstantBlend(0.3)
    DownSizeFactor(0.25)
}

Effect("MotionBlur")
{
    Enable(1);
}

Effect("ScopeBlur")
{
    Enable(1);
}
Effect("Water")
{

    // general parameters
    PatchDivisions(8,8);
    Tile(2.0,2.0);

    // ocean parameters
    OceanEnable(0);

    // water event parameters
    WaterRingColor(148, 170, 192,255);
    WaterWakeColor(192, 192, 192,255);
    WaterSplashColor((192, 192, 192,255);
    OscillationEnable(0);

    DisableLowRes();


    // PC parameters
    PC()
    {
        Velocity(0.01,0.02);
        MainTexture("tat3_water.tga");
        LODDecimation(1);

        RefractionColor(101, 136, 140, 255);
        ReflectionColor(150,150,150,150);
        UnderwaterColor(128, 130, 128, 64);
        FresnelMinMax(0.2,0.7)

        NormalMapTextures("water_normalmap_",16,8.0);
        BumpMapTextures("water_bumpmap_",16,8.0);
        SpecularMaskTextures("water_specularmask_",25, 2.0);
        SpecularMaskTile(4.0,4.0);
        SpecularMaskScrollSpeed(0.0,0.0);
    }

}


