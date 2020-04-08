ParticleEmitter("lrg_weap_discharge")
{
	MaxParticles(8.00,8.00);
	StartDelay(0.00,0.00);
	BurstDelay(0.02, 0.05);
	BurstCount(20.00,20.00);
	Size(1.00, 1.00);
	Hue(255.00, 255.00);
	Saturation(255.00, 255.00);
	Value(255.00, 255.00);
	Alpha(255.00, 255.00);
	Spawner()
	{
		Spread()
		{
			PositionX(-1.00,1.00);
			PositionY(0.00,0.30);
			PositionZ(-1.00,1.00);
		}
		Offset()
		{
			PositionX(0.00,0.00);
			PositionY(0.00,0.00);
			PositionZ(0.00,0.00);
		}
		PositionScale(0.50,0.50);
		VelocityScale(1.50,1.50);
		Size(0, 1.50, 4.50);
		Red(0, 255.00, 255.00);
		Green(0, 255.00, 255.00);
		Blue(0, 255.00, 255.00);
		Alpha(0, 60.00, 60.00);
		StartRotation(0, 0.00, 360.00);
		RotationVelocity(0, -100.00, 100.00);
		FadeInTime(0.00);
	}
	Transformer()
	{
		LifeTime(2.50);
		Position()
		{
			LifeTime(2.00)
			Scale(0.00);
		}
		Size(0)
		{
			LifeTime(2.50)
		}
		Color(0)
		{
			LifeTime(3.00)
			Reach(50.00,50.00,50.00,0.00);
		}
	}
	Geometry()
	{
		Texture("blacksmoke");
		BlendMode("NORMAL");
		Type("PARTICLE");
	}
}
