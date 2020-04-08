ParticleEmitter("SmokeEmitter")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1500, 0.1500);
	BurstCount(1.0000,1.0000);
	Size(1.0000, 1.0000);
	Hue(255.0000, 255.0000);
	Saturation(255.0000, 255.0000);
	Value(255.0000, 255.0000);
	Alpha(255.0000, 255.0000);
	Spawner()
	{
		Spread()
		{
			PositionX(-0.0500,0.0500);
			PositionY(1.0000,1.0000);
			PositionZ(-0.0500,0.0500);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(1.0000,1.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.1000, 0.1000);
		Red(0, 40.0000, 40.0000);
		Green(0, 40.0000, 40.0000);
		Blue(0, 40.0000, 40.0000);
		Alpha(0, 0.0000, 50.0000);
		StartRotation(0, -0.1000, -0.1000);
		RotationVelocity(0, 0.1000, 0.1000);
		FadeInTime(0.00);
	}
	Transformer()
	{
		LifeTime(5.0000);
		Position()
		{
			LifeTime(5.0000)
			Accelerate(1.0000, 0.0000, 1.0000);
		}
		Size(0)
		{
			LifeTime(3.0000)
		}
		Color(0)
		{
			LifeTime(1.0000)
			Move(0.0000,0.0000,0.0000,120.0000);
			Next()
			{
				LifeTime(2.0000)
				Move(0.0000,0.0000,0.0000,-170.0000);
			}
		}
	}
	Geometry()
	{
		Texture("cs_bubble");
		BlendMode("NORMAL");
		Type("STREAK");
		ParticleEmitter("SmokeTrail")
		{
			MaxParticles(20.0000,20.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
			BurstCount(1.0000,1.0000);
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
				Size(0, 0.2500, 0.2500);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 245.0000, 255.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, -1.0000, -1.0000);
				RotationVelocity(0, 1.0000, 1.0000);
				FadeInTime(0.50);
			}
			Transformer()
			{
				LifeTime(3.0000);
				Position()
				{
					LifeTime(3.0000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(3.0000)
					Scale(5.0000);
				}
				Color(0)
				{
					LifeTime(0.1500)
					Reach(255.0000,160.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(0.2000)
						Reach(50.0000,0.0000,0.0000,90.0000);
						Next()
						{
							LifeTime(2.7000)
							Reach(0.0000,0.0000,0.0000,0.0000);
						}
					}
				}
			}
			Geometry()
			{
				Texture("smoketrail");
				BlendMode("NORMAL");
				Type("STREAK");
			}
		}
	}
}
