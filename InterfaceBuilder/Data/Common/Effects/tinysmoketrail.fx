ParticleEmitter("Flame_Emitter")
{
    MaxParticles(-1.0000,-1.0000);
    StartDelay(0.0000,0.0000);
    BurstDelay(0.0500, 0.0500);
    BurstCount(1.0000,1.0000);
    MaxLodDist(1000.0000);
    MinLodDist(800.0000);
    SoundName("com_amb_fire defer")
    Size(1.0000, 1.0000);
    Hue(255.0000, 255.0000);
    Saturation(255.0000, 255.0000);
    Value(255.0000, 255.0000);
    Alpha(255.0000, 255.0000);
    WorldAligned();
    Spawner()
    {
        Circle()
        {
            PositionX(0.0000,0.0000);
            PositionY(1.0000,1.0000);
            PositionZ(0.0000,0.0000);
        }
        Offset()
        {
            PositionX(-0.1000,0.1000);
            PositionY(-0.1000,0.1000);
            PositionZ(-0.1000,0.1000);
        }
        PositionScale(0.2500,0.2500);
        VelocityScale(1.0000,3.0000);
        InheritVelocityFactor(0.0000,0.0000);
        Size(0, 0.1000, 0.4000);
        Red(0, 255.0000, 255.0000);
        Green(0, 255.0000, 255.0000);
        Blue(0, 255.0000, 255.0000);
        Alpha(0, 0.0000, 0.0000);
        StartRotation(0, 0.0000, 0.0000);
        RotationVelocity(0, -40.0000, 40.0000);
        FadeInTime(0.0000);
    }
    Transformer()
    {
        LifeTime(0.5000);
        Position()
        {
            LifeTime(0.5000)
        }
        Size(0)
        {
            LifeTime(0.5000)
            Scale(0.5000);
        }
        Color(0)
        {
            LifeTime(0.1000)
            Reach(255.0000,255.0000,255.0000,255.0000);
            Next()
            {
                LifeTime(0.5000)
                Reach(200.0000,0.0000,0.0000,0.0000);
            }
        }
    }
    Geometry()
    {
        BlendMode("ADDITIVE");
        Type("PARTICLE");
        Texture("flames1");
    }
    ParticleEmitter("Flame_Emitter")
    {
        MaxParticles(-1.0000,-1.0000);
        StartDelay(0.0000,0.0000);
        BurstDelay(0.0600, 0.0600);
        BurstCount(1.0000,1.0000);
        MaxLodDist(1000.0000);
        MinLodDist(800.0000);
        SoundName("")
        Size(1.0000, 1.0000);
        Hue(255.0000, 255.0000);
        Saturation(255.0000, 255.0000);
        Value(255.0000, 255.0000);
        Alpha(255.0000, 255.0000);
        WorldAligned();
        Spawner()
        {
            Circle()
            {
                PositionX(0.0000,0.0000);
                PositionY(1.0000,1.0000);
                PositionZ(0.0000,0.0000);
            }
            Offset()
            {
                PositionX(-0.1000,0.1000);
                PositionY(-0.1000,0.1000);
                PositionZ(-0.1000,0.1000);
            }
            PositionScale(0.2500,0.2500);
            VelocityScale(1.0000,3.0000);
            InheritVelocityFactor(0.0000,0.0000);
            Size(0, 0.1000, 0.4000);
            Red(0, 255.0000, 255.0000);
            Green(0, 255.0000, 255.0000);
            Blue(0, 255.0000, 255.0000);
            Alpha(0, 0.0000, 0.0000);
            StartRotation(0, 0.0000, 0.0000);
            RotationVelocity(0, -40.0000, 40.0000);
            FadeInTime(0.0000);
        }
        Transformer()
        {
            LifeTime(0.5000);
            Position()
            {
                LifeTime(0.5000)
            }
            Size(0)
            {
                LifeTime(0.5000)
                Scale(0.5000);
            }
            Color(0)
            {
                LifeTime(0.1000)
                Reach(255.0000,255.0000,255.0000,255.0000);
                Next()
                {
                    LifeTime(0.5000)
                    Reach(200.0000,0.0000,0.0000,0.0000);
                }
            }
        }
        Geometry()
        {
            BlendMode("ADDITIVE");
            Type("PARTICLE");
            Texture("flames2");
        }
        ParticleEmitter("Flame_Emitter")
        {
            MaxParticles(-1.0000,-1.0000);
            StartDelay(0.0000,0.0000);
            BurstDelay(0.0700, 0.0700);
            BurstCount(1.0000,1.0000);
            MaxLodDist(1000.0000);
            MinLodDist(800.0000);
            SoundName("")
            Size(1.0000, 1.0000);
            Hue(255.0000, 255.0000);
            Saturation(255.0000, 255.0000);
            Value(255.0000, 255.0000);
            Alpha(255.0000, 255.0000);
            WorldAligned();
            Spawner()
            {
                Circle()
                {
                    PositionX(0.0000,0.0000);
                    PositionY(1.0000,1.0000);
                    PositionZ(0.0000,0.0000);
                }
                Offset()
                {
                    PositionX(-0.1000,0.1000);
                    PositionY(-0.1000,0.1000);
                    PositionZ(-0.1000,0.1000);
                }
                PositionScale(0.2500,0.2500);
                VelocityScale(1.0000,3.0000);
                InheritVelocityFactor(0.0000,0.0000);
                Size(0, 0.1000, 0.4000);
                Red(0, 255.0000, 255.0000);
                Green(0, 255.0000, 255.0000);
                Blue(0, 255.0000, 255.0000);
                Alpha(0, 0.0000, 0.0000);
                StartRotation(0, 0.0000, 0.0000);
                RotationVelocity(0, -40.0000, 40.0000);
                FadeInTime(0.0000);
            }
            Transformer()
            {
                LifeTime(0.5000);
                Position()
                {
                    LifeTime(0.5000)
                }
                Size(0)
                {
                    LifeTime(0.5000)
                    Scale(0.5000);
                }
                Color(0)
                {
                    LifeTime(0.1000)
                    Reach(255.0000,255.0000,255.0000,255.0000);
                    Next()
                    {
                        LifeTime(0.5000)
                        Reach(200.0000,0.0000,0.0000,0.0000);
                    }
                }
            }
            Geometry()
            {
                BlendMode("ADDITIVE");
                Type("PARTICLE");
                Texture("flames3");
            }
        }
    }
}
