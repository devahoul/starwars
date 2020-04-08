ParticleEmitter("com_sfx_weap_grenade_thermal")
{
	MaxParticles(500.0000,500.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.2000, 0.2000);
	BurstCount(1.0000,1.0000);
	NoRegisterStep();
	BoundingRadius(30.0);
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Circle()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.0000,0.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 1.3000);
		Red(0, 255.0000, 255.0000);
		Green(0, 0.0000, 89.0000);
		Blue(0, 0.0000, 89.0000);
		Alpha(0, 20.0000, 20.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 100.0000, 500.0000);
		FadeInTime(0.00);
	}
	Transformer()
	{
		LifeTime(1.5000);
		Position()
		{
			LifeTime(1.5000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(1.5000)
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(0.7500)
			Reach(255.0000,10.0000,10.0000,20.0000);
			Next()
			{
				LifeTime(0.7500)
				Reach(255.0000,0.0000,0.0000,20.0000);
			}
		}
	}
	Geometry()
	{
		Texture("lightflare");
		BlendMode("ADDITIVE");
		Type("PARTICLE");
	}
}
