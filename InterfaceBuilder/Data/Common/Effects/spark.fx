
ParticleEmitter("Spark")
{
	MaxParticles(6);
	StartDelay(0);
	BurstDelay(0.0);
	BurstCount(10);

	Spawner()
	{
		Spread()
		{
			PositionX(-0.3, 0.3);
			PositionY(-0.3, 0.3);
			PositionZ(0.8, 1.0);
		}

		Offset();
		{
			PositionX(-0.1, 0.1);
			PositionY(-0.1, 0.1);
			PositionZ(-0.1, 0.1);
		}
		PositionScale(0);
		VelocityScale(1);
		Size(0,  0.2, 0.25);
		Red(0,  255, 255);
		Green(0,  255, 255);
		Blue(0,  100, 150);
		Alpha(0,  255, 255);
		StartRotation(0,   0, 360);
		RotationVelocity(0,   -100, 100);
	}

	Transformer()
	{
		LifeTime(0.5);

		Size(0)
		{
			LifeTime(0.5);
			Scale(2.0);
		}

		Color(0)
		{
			LifeTime(0.5);
			Reach(255,255,100,0);
		}
	}

	Geometry()
	{
		BlendMode("ADDITIVE");
		Texture("dirtspray");
	}	
}