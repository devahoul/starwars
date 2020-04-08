ParticleEmitter("FireballsSmall")
{
	MaxParticles(40.0000,40.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0200, 0.0300);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	SoundName("")
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Circle()
		{
			PositionX(-1.0000,1.0000);
			PositionY(0.1000,0.5000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(-1.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(2.0000,2.0000);
		VelocityScale(4.0000,6.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.8000, 1.2000);
		Red(0, 255.0000, 255.0000);
		Green(0, 180.0000, 200.0000);
		Blue(0, 80.0000, 80.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, -50.0000, 0.0000);
		RotationVelocity(0, -200.0000, 200.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.5000);
		Position()
		{
			LifeTime(0.5000)
			Reach(0.0000, 1.0000, 0.0000);
		}
		Size(0)
		{
			LifeTime(5.0000)
			Scale(2.0000);
		}
		Color(0)
		{
			LifeTime(0.5000)
			Reach(255.0000,180.0000,70.0000,200.0000);
			Next()
			{
				LifeTime(0.5000)
				Reach(100.0000,50.0000,50.0000,200.0000);
				Next()
				{
					LifeTime(0.5000)
					Reach(100.0000,50.0000,50.0000,0.0000);
				}
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("explosion");
		ParticleEmitter("Smoke")
		{
			MaxParticles(15.0000,15.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.2000);
			BurstCount(1.0000,1.0000);
			MaxLodDist(1000.0000);
			MinLodDist(800.0000);
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
					PositionX(-1.0000,1.0000);
					PositionY(-1.0000,1.0000);
					PositionZ(-1.0000,1.0000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.1000,0.1000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.6000, 0.9000);
				Red(0, 240.0000, 255.0000);
				Green(0, 240.0000, 255.0000);
				Blue(0, 240.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, -50.0000, 0.0000);
				RotationVelocity(0, -50.0000, 50.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(10.0000);
				Position()
				{
					LifeTime(3.0000)
				}
				Size(0)
				{
					LifeTime(3.0000)
					Scale(3.0000);
				}
				Color(0)
				{
					LifeTime(0.5000)
					Move(255.0000,255.0000,255.0000,255.0000);
					Next()
					{
						LifeTime(10.0000)
						Reach(255.0000,255.0000,255.0000,255.0000);
						Next()
						{
							LifeTime(0.0000)
							Reach(255.0000,255.0000,255.0000,0.0000);
						}
					}
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("underlitesmoke2");
			}
		}
	}
	ParticleEmitter("FireBallsBig")
	{
		MaxParticles(6.0000,6.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0500, 0.0500);
		BurstCount(1.0000,1.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
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
				PositionX(-1.0000,1.0000);
				PositionY(0.1000,0.5000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(-1.0000,1.0000);
				PositionY(0.0000,1.0000);
				PositionZ(-1.0000,1.0000);
			}
			PositionScale(1.0000,1.0000);
			VelocityScale(1.0000,1.5000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.6000, 0.8000);
			Red(0, 255.0000, 255.0000);
			Green(0, 180.0000, 200.0000);
			Blue(0, 80.0000, 80.0000);
			Alpha(0, 200.0000, 200.0000);
			StartRotation(0, -200.0000, 0.0000);
			RotationVelocity(0, -200.0000, 200.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.7000);
			Position()
			{
				LifeTime(0.5000)
				Reach(0.0000, 1.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(1.0000)
				Scale(6.0000);
			}
			Color(0)
			{
				LifeTime(0.7000)
				Reach(255.0000,180.0000,70.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("explosion");
			ParticleEmitter("Smoke")
			{
				MaxParticles(15.0000,15.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.1000, 0.2000);
				BurstCount(1.0000,1.0000);
				MaxLodDist(1000.0000);
				MinLodDist(800.0000);
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
						PositionX(-1.0000,1.0000);
						PositionY(-1.0000,1.0000);
						PositionZ(-1.0000,1.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.1000,0.1000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.6000, 0.9000);
					Red(0, 240.0000, 255.0000);
					Green(0, 240.0000, 255.0000);
					Blue(0, 240.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, -50.0000, 0.0000);
					RotationVelocity(0, -50.0000, 50.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(10.0000);
					Position()
					{
						LifeTime(3.0000)
					}
					Size(0)
					{
						LifeTime(3.0000)
						Scale(3.0000);
					}
					Color(0)
					{
						LifeTime(0.5000)
						Move(255.0000,255.0000,255.0000,255.0000);
						Next()
						{
							LifeTime(10.0000)
							Reach(255.0000,255.0000,255.0000,255.0000);
							Next()
							{
								LifeTime(0.0000)
								Reach(255.0000,255.0000,255.0000,0.0000);
							}
						}
					}
				}
				Geometry()
				{
					BlendMode("NORMAL");
					Type("PARTICLE");
					Texture("underlitesmoke2");
				}
			}
		}
	}
}
