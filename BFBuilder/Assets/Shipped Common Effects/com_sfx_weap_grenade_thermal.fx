ParticleEmitter("com_sfx_weap_grenade_thermal")
{
	MaxParticles(500.00,500.00);
	StartDelay(0.00,0.00);
	BurstDelay(0.20, 0.20);
	BurstCount(1.00,1.00);
	NoRegisterStep();
	BoundingRadius(30.0);
	Size(1.00, 1.00);
	Hue(255.00, 255.00);
	Saturation(255.00, 255.00);
	Value(255.00, 255.00);
	Alpha(255.00, 255.00);
	Spawner()
	{
		Circle()
		{
			PositionX(0.00,0.00);
			PositionY(0.00,0.00);
			PositionZ(0.00,0.00);
		}
		Offset()
		{
			PositionX(0.00,0.00);
			PositionY(0.00,0.00);
			PositionZ(0.00,0.00);
		}
		PositionScale(0.00,0.00);
		VelocityScale(0.00,0.00);
		Size(0, 1.00, 1.30);
		Red(0, 255.00, 255.00);
		Green(0, 0.00, 89.00);
		Blue(0, 0.00, 89.00);
		Alpha(0, 20.00, 20.00);
		StartRotation(0, 0.00, 360.00);
		RotationVelocity(0, 100.00, 500.00);
		FadeInTime(0.00);
	}
	Transformer()
	{
		LifeTime(1.50);
		Position()
		{
			LifeTime(1.50)
			Scale(0.00);
		}
		Size(0)
		{
			LifeTime(1.50)
			Scale(2.00);
		}
		Color(0)
		{
			LifeTime(0.75)
			Reach(255.00,154.00,53.00,20.00);
			Next()
			{
				LifeTime(0.75)
				Reach(255.00,197.00,138.00,20.00);
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
