ParticleEmitter("waterbulletspray")
{
	MaxParticles(1.00,1.00);
	StartDelay(0.00,0.00);
	BurstDelay(0.00, 0.00);
	BurstCount(1.00,1.00);
	Size(1.00, 1.00);
	Hue(255.00, 255.00);
	Saturation(255.00, 255.00);
	Value(255.00, 255.00);
	Alpha(255.00, 255.00);
	Spawner()
	{
		Spread()
		{
			PositionX(0.00,0.00);
			PositionY(0.00,0.00);
			PositionZ(0.00,1.00);
		}
		Offset()
		{
			PositionX(0.00,0.00);
			PositionY(1.00,1.00);
			PositionZ(0.00,0.10);
		}
		PositionScale(0.00,0.00);
		VelocityScale(0.00,0.00);
		Size(0, 1.00, 1.50);
		Red(0, 255.00, 255.00);
		Green(0, 255.00, 255.00);
		Blue(0, 255.00, 255.00);
		Alpha(0, 255.00, 255.00);
		StartRotation(0, 0.00, 0.00);
		RotationVelocity(0, 0.00, 0.00);
		FadeInTime(0.00);
	}
	Transformer()
	{
		LifeTime(0.50);
		Position()
		{
			LifeTime(1.00)
			Accelerate(0.00, 0.00, 0.00);
		}
		Size(0)
		{
			LifeTime(0.50)
		}
		Color(0)
		{
			LifeTime(0.50)
			Reach(255.00,255.00,100.00,0.00);
		}
	}
	Geometry()
	{
		Texture("splash");
		BlendMode("ADDITIVE");
		Type("PARTICLE");
	}
}
