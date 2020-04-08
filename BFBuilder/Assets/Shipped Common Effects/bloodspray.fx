
ParticleEmitter("BloodSpray")
{
	MaxParticles(6);
	StartDelay(0);
	BurstDelay(0.02, 0.05);
	BurstCount(3);

	Spawner()
	{
		Spread()
		{
			PositionX(-1, 1);
			PositionY(0, 1);
			PositionZ(-1, 1);
		}

		Offset();
		{
			PositionX(-0.5, 0.5);
			PositionY(-0.5, 0.5);
			PositionZ(-0.5, 0.5);
		}
		PositionScale(0);
		VelocityScale(3);
		Size(0,  0.1, 0.15);
		Red(0,  150, 200);
		Green(0,  0, 10);
		Blue(0,  0, 10);
		Alpha(0,  200, 255);
		StartRotation(0,   0, 360);
		RotationVelocity(0,   -100, 100);
	}

	Transformer()
	{
		LifeTime(1.5);
		Position()
		{
			LifeTime(1.5);
			Accelerate(0, -10, 0);
		}

		Size(0)
		{
			LifeTime(1.5);
			Scale(1.8);
		}

		Color(0)
		{
			LifeTime(1.5);
			Reach(100,0,0,0);
		}
	}

	Geometry()
	{
		Texture("dirtspray");
	}
}