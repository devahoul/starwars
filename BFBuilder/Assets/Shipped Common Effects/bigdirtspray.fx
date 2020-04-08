
ParticleEmitter("BigDirtSpray")
{
	MaxParticles(12);
	StartDelay(0);
	BurstDelay(0.0, 0.0);
	BurstCount(1);

	Spawner()
	{
		Spread()
		{
			PositionX(-1, 1);
			PositionY(0.0, 0.8);
			PositionZ(-1, 1);
		}

		Offset();
		{
			PositionX(0);
			PositionY(0);
			PositionZ(0);
		}
		PositionScale(1.0);
		VelocityScale(5.0);
		Size(0,  0.3, 0.35);
		Red(0,  100, 120);
		Green(0,  100, 120);
		Blue(0,  100, 120);
		Alpha(0,  255, 255);
		StartRotation(0,   0, 360);
		RotationVelocity(0,   -100, 100);
	}

	Transformer()
	{
		LifeTime(2);
		Position()
		{
			LifeTime(2);
			Accelerate(0, -10, 0);
		}

		Size(0)
		{
			LifeTime(2.0);
			Scale(2.0);
		}

		Color(0)
		{
			LifeTime(2.0);
			Reach(50,50,50,0);
		}
	}

	Geometry()
	{
		Texture("dirtspray");
	}
	
	
	ParticleEmitter("Smoke")
	{
		MaxParticles(20);
		StartDelay(0);
		BurstDelay(0.0, 0.0);
		BurstCount(10);
	
		Spawner()
		{
			Spread()
			{
				PositionX(-1, 1);
				PositionY(0.0, 0.3);
				PositionZ(-1, 1);
			}
	
			Offset();
			{
				PositionX(0);
				PositionY(0);
				PositionZ(0);
			}
			PositionScale(0.5);
			VelocityScale(3.0);
			Size(0,  0.5, 1.0);
			Red(0,  255, 255);
			Green(0,  255, 255);
			Blue(0,  255, 255);
			Alpha(0,  60, 60);
			StartRotation(0,   0, 360);
			RotationVelocity(0,   -100, 100);
		}
	
		Transformer()
		{
			LifeTime(3);
			Position()
			{
				LifeTime(2);
				Scale(0.1);
			}
	
			Size(0)
			{
				LifeTime(3.0);
				Scale(3.0);
			}
	
			Color(0)
			{
				LifeTime(3.0);
				Reach(50,50,50,0);
			}
		}
	
		Geometry()
		{
			Texture("blacksmoke");
		}
	}
}