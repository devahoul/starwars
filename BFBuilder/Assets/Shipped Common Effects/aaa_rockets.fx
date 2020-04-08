ParticleEmitter("BlackSmoke")
{
	MaxParticles(-1.0000,-1.0000);
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
			PositionY(-0.1000,0.5000);
			PositionZ(0.0000,0.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.5000,0.5000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(1.0000,3.0000);
		InheritVelocityFactor(0.5000,0.5000);
		Size(0, 1.6000, 2.6000);
		Hue(0, 127.5000, 127.5000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 50.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -40.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(2.0000)
			Accelerate(0.0000, -0.0100, 0.0000);
		}
		Size(0)
		{
			LifeTime(2.0000)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(0.1000)
			Reach(127.5000,0.0000,200.0000,120.0000);
			Next()
			{
				LifeTime(0.9000)
				Reach(0.0000,0.0000,0.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		Texture("thicksmoke2");
		BlendMode("NORMAL");
		Type("PARTICLE");
	}
	ParticleEmitter("BlackSmoke")
	{
		MaxParticles(-1.0000,-1.0000);
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
				PositionY(-0.1000,0.5000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(-0.5000,-0.5000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(1.0000,3.0000);
			InheritVelocityFactor(0.5000,0.5000);
			Size(0, 1.6000, 2.6000);
			Hue(0, 127.5000, 127.5000);
			Saturation(0, 0.0000, 0.0000);
			Value(0, 255.0000, 255.0000);
			Alpha(0, 0.0000, 50.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -40.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.0000);
			Position()
			{
				LifeTime(2.0000)
				Accelerate(0.0000, -0.0100, 0.0000);
			}
			Size(0)
			{
				LifeTime(2.0000)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.1000)
				Reach(127.5000,0.0000,200.0000,120.0000);
				Next()
				{
					LifeTime(0.9000)
					Reach(0.0000,0.0000,0.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			Texture("thicksmoke2");
			BlendMode("NORMAL");
			Type("PARTICLE");
		}
		ParticleEmitter("Spark_Emitter")
		{
			MaxParticles(-1.0000,-1.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0100, 0.0100);
			BurstCount(1.0000,1.0000);
			Size(1.0000, 1.0000);
			Hue(255.0000, 255.0000);
			Saturation(255.0000, 255.0000);
			Value(255.0000, 255.0000);
			Alpha(255.0000, 255.0000);
			Spawner()
			{
				Circle()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-0.1000,0.1000);
					PositionY(0.4000,0.6000);
					PositionZ(-0.1000,0.1000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.1000,0.1000);
				Size(0, 0.4000, 0.7000);
				Red(0, 255.0000, 255.0000);
				Green(0, 200.0000, 200.0000);
				Blue(0, 100.0000, 100.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 20.0000);
				RotationVelocity(0, -90.0000, 90.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.2000);
				Position()
				{
					LifeTime(0.2000)
					Reach(0.0000, 0.0000, 0.0000);
				}
				Size(0)
				{
					LifeTime(0.2000)
					Scale(0.2500);
				}
				Color(0)
				{
					LifeTime(0.1000)
					Reach(255.0000,100.0000,0.0000,120.0000);
					Next()
					{
						LifeTime(0.1000)
						Reach(100.0000,0.0000,0.0000,20.0000);
					}
				}
			}
			Geometry()
			{
				Texture("hotspot");
				BlendMode("ADDITIVE");
				Type("PARTICLE");
			}
			ParticleEmitter("Spark_Emitter")
			{
				MaxParticles(-1.0000,-1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0100, 0.0100);
				BurstCount(1.0000,1.0000);
				Size(1.0000, 1.0000);
				Hue(255.0000, 255.0000);
				Saturation(255.0000, 255.0000);
				Value(255.0000, 255.0000);
				Alpha(255.0000, 255.0000);
				Spawner()
				{
					Circle()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(-0.1000,0.1000);
						PositionY(-0.6000,-0.6000);
						PositionZ(-0.1000,0.1000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 0.4000, 0.7000);
					Red(0, 255.0000, 255.0000);
					Green(0, 200.0000, 200.0000);
					Blue(0, 100.0000, 100.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 20.0000);
					RotationVelocity(0, -90.0000, 90.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.2000);
					Position()
					{
						LifeTime(0.2000)
						Reach(0.0000, 0.0000, 0.0000);
					}
					Size(0)
					{
						LifeTime(0.2000)
						Scale(0.2500);
					}
					Color(0)
					{
						LifeTime(0.1000)
						Reach(255.0000,100.0000,0.0000,120.0000);
						Next()
						{
							LifeTime(0.1000)
							Reach(100.0000,0.0000,0.0000,20.0000);
						}
					}
				}
				Geometry()
				{
					Texture("hotspot");
					BlendMode("ADDITIVE");
					Type("PARTICLE");
				}
			}
		}
	}
}
