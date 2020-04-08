ParticleEmitter("Sparks")
{
	MaxParticles(10.0000,10.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0050, 0.0050);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(5.0);
	SoundName("")
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(-0.1000,0.1000);
			PositionY(-0.1000,0.2000);
			PositionZ(0.0500,0.2000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0500,0.0500);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(5.0000,15.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.0100, 0.0100);
		Red(0, 255.0000, 255.0000);
		Green(0, 184.0000, 200.0000);
		Blue(0, 17.0000, 32.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.3000);
		Position()
		{
			LifeTime(0.5000)
			Accelerate(0.0000, -5.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.3000)
			Scale(1.0000);
		}
		Color(0)
		{
			LifeTime(0.0100)
			Reach(255.0000,244.0000,147.0000,128.0000);
			Next()
			{
				LifeTime(0.2900)
				Reach(255.0000,244.0000,147.0000,128.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("SPARK");
		SparkLength(0.0300);
		Texture("redlaser");
	}
	ParticleEmitter("Flare")
	{
		MaxParticles(2.0000,2.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0500, 0.0500);
		BurstCount(2.0000,2.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
		BoundingRadius(5.0);
		SoundName("")
		Size(1.0000, 1.0000);
		Hue(255.0000, 255.0000);
		Saturation(255.0000, 255.0000);
		Value(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Spread()
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
			Size(0, 0.0100, 0.0200);
			Red(0, 138.0000, 168.0000);
			Green(0, 138.0000, 168.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 128.0000, 128.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.2000);
			Position()
			{
				LifeTime(1.0000)
			}
			Size(0)
			{
				LifeTime(0.1000)
				Scale(4.0000);
				Next()
				{
					LifeTime(0.1000)
					Scale(0.1000);
				}
			}
			Color(0)
			{
				LifeTime(0.1000)
				Reach(136.0000,136.0000,255.0000,255.0000);
				Next()
				{
					LifeTime(0.1000)
					Reach(255.0000,255.0000,255.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("exploflare");
		}
		ParticleEmitter("FlareRing")
		{
			MaxParticles(1.0000,1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.5000, 0.5000);
			BurstCount(1.0000,1.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
			BoundingRadius(5.0);
			SoundName("")
			Size(1.0000, 1.0000);
			Red(255.0000, 255.0000);
			Green(255.0000, 255.0000);
			Blue(255.0000, 255.0000);
			Alpha(255.0000, 255.0000);
			Spawner()
			{
				Spread()
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
				Size(0, 0.2000, 0.2200);
				Red(0, 100.0000, 100.0000);
				Green(0, 100.0000, 100.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 16.0000, 16.0000);
				StartRotation(0, 0.0000, 0.0000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.1000);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(1.0000)
					Scale(1.5000);
				}
				Color(0)
				{
					LifeTime(0.5000)
					Reach(0.0000,100.0000,255.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("flare3");
			}
			ParticleEmitter("Flare")
			{
				MaxParticles(9.0000,9.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0500, 0.0500);
				BurstCount(5.0000,5.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
				BoundingRadius(5.0);
				SoundName("")
				Size(1.0000, 1.0000);
				Hue(255.0000, 255.0000);
				Saturation(255.0000, 255.0000);
				Value(255.0000, 255.0000);
				Alpha(255.0000, 255.0000);
				Spawner()
				{
					Spread()
					{
						PositionX(-0.1000,0.1000);
						PositionY(-0.1000,0.1000);
						PositionZ(0.1000,0.2000);
					}
					Offset()
					{
						PositionX(-0.0100,0.0100);
						PositionY(-0.0100,0.0100);
						PositionZ(-0.0140,0.0100);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(2.0000,7.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.0100, 0.0300);
					Red(0, 255.0000, 255.0000);
					Green(0, 184.0000, 184.0000);
					Blue(0, 17.0000, 17.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.2000);
					Position()
					{
						LifeTime(1.0000)
					}
					Size(0)
					{
						LifeTime(0.2000)
						Scale(7.0000);
					}
					Color(0)
					{
						LifeTime(0.2000)
						Reach(255.0000,184.0000,17.0000,200.0000);
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
}
