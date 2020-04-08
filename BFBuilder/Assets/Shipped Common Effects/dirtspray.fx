ParticleEmitter("DirtSprayHigh")
{
	MaxParticles(6.0000,6.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	SoundName("")
	Size(0.5000, 0.5000);
	Red(255.0000, 255.0000);
	Green(255.0000, 255.0000);
	Blue(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(-0.0500,0.0500);
			PositionY(0.3000,0.6000);
			PositionZ(-0.0500,0.0500);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.2500,0.2500);
		VelocityScale(5.0000,5.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2000, 0.2625);
		Red(0, 202.0000, 202.0000);
		Green(0, 162.0000, 162.0000);
		Blue(0, 120.0000, 120.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -50.0000, 50.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(1.0000)
			Accelerate(0.0000, -5.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(1.5000)
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(1.0000)
			Reach(149.0000,114.0000,49.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("dirt");
	}
	ParticleEmitter("DirtSprayLow")
	{
		MaxParticles(6.0000,6.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0100);
		BurstCount(1.0000,1.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
		SoundName("")
		Size(1.0000, 1.0000);
		Red(255.0000, 255.0000);
		Green(255.0000, 255.0000);
		Blue(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Circle()
			{
				PositionX(-0.2000,0.2000);
				PositionY(0.1250,0.2000);
				PositionZ(-0.2000,0.2000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.2500,0.2500);
			VelocityScale(1.0000,1.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.2000, 0.3250);
			Red(0, 202.0000, 202.0000);
			Green(0, 162.0000, 162.0000);
			Blue(0, 120.0000, 120.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -50.0000, 50.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.5000);
			Position()
			{
				LifeTime(0.5000)
				Accelerate(0.0000, -2.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(1.0000)
				Scale(2.0000);
			}
			Color(0)
			{
				LifeTime(0.5000)
				Reach(50.0000,50.0000,50.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("dirt");
		}
		ParticleEmitter("Smoke")
		{
			MaxParticles(10.0000,10.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0200, 0.0500);
			BurstCount(10.0000,10.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
			SoundName("")
			Size(1.0000, 1.0000);
			Red(255.0000, 255.0000);
			Green(255.0000, 255.0000);
			Blue(255.0000, 255.0000);
			Alpha(255.0000, 255.0000);
			Spawner()
			{
				Circle()
				{
					PositionX(-0.0500,0.0500);
					PositionY(0.1000,0.1500);
					PositionZ(-0.0500,0.0520);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.5000,1.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.2000, 0.3250);
				Red(0, 128.0000, 128.0000);
				Green(0, 128.0000, 128.0000);
				Blue(0, 128.0000, 128.0000);
				Alpha(0, 64.0000, 64.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -180.0000, 180.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.5000);
				Position()
				{
					LifeTime(1.5000)
				}
				Size(0)
				{
					LifeTime(1.5000)
					Scale(3.0000);
				}
				Color(0)
				{
					LifeTime(1.0000)
					Reach(128.0000,128.0000,128.0000,32.0000);
					Next()
					{
						LifeTime(0.5000)
						Reach(128.0000,128.0000,128.0000,0.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("thicksmoke2");
			}
		}
	}
}
