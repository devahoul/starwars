ParticleEmitter("Explosion_Fast")
{
	MaxParticles(1.0000,1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1250);
	BurstCount(1.0000,1.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(5.0);
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
			PositionX(-0.0125,0.0125);
			PositionY(0.0500,0.1000);
			PositionZ(-0.0125,0.0125);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(-0.1000,-0.1000);
		VelocityScale(3.0000,3.0000);
		InheritVelocityFactor(1.0000,1.0000);
		Size(0, 0.2500, 0.2500);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.8750);
		Position()
		{
			LifeTime(0.3500)
		}
		Size(0)
		{
			LifeTime(2.1000)
			Scale(0.1000);
		}
		Color(0)
		{
			LifeTime(0.0700)
			Reach(255.0000,255.0000,255.0000,255.0000);
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("EMITTER");
		Texture("flare0");
		ParticleEmitter("BlackSmoke")
		{
			MaxParticles(9.0000,9.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0250, 0.0250);
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
					PositionX(0.0000,0.0000);
					PositionY(-1.2500,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-0.1250,0.1250);
					PositionY(-0.1250,0.1250);
					PositionZ(-0.1250,0.1250);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.5000,0.5000);
				InheritVelocityFactor(0.4000,0.4000);
				Size(0, 0.1000, 0.1500);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 20.0000, 20.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -160.0000, 160.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.7000);
				Position()
				{
					LifeTime(0.7000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.8750)
					Scale(4.5000);
				}
				Color(0)
				{
					LifeTime(0.0700)
					Reach(255.0000,255.0000,255.0000,255.0000);
					Next()
					{
						LifeTime(0.2625)
						Reach(50.0000,25.0000,25.0000,255.0000);
						Next()
						{
							LifeTime(0.3500)
							Reach(0.0000,0.0000,0.0000,0.0000);
						}
					}
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("boom4");
			}
			ParticleEmitter("Fire")
			{
				MaxParticles(9.0000,9.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0150, 0.0150);
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
					Circle()
					{
						PositionX(0.0000,0.0000);
						PositionY(-0.7500,-0.7500);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(-0.0375,0.0375);
						PositionY(-0.0375,0.0375);
						PositionZ(-0.0375,0.0375);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.5000,1.0000);
					InheritVelocityFactor(0.4000,0.4000);
					Size(0, 0.0750, 0.1250);
					Red(0, 255.0000, 255.0000);
					Green(0, 200.0000, 200.0000);
					Blue(0, 100.0000, 100.0000);
					Alpha(0, 60.0000, 60.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -100.0000, 100.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.5250);
					Position()
					{
						LifeTime(0.5250)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.7000)
						Scale(4.0000);
					}
					Color(0)
					{
						LifeTime(0.0350)
						Reach(255.0000,255.0000,100.0000,200.0000);
						Next()
						{
							LifeTime(0.4900)
							Reach(200.0000,0.0000,0.0000,0.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("boom4");
				}
			}
		}
	}
	ParticleEmitter("Blast")
	{
		MaxParticles(4.0000,4.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.1000);
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
				PositionY(0.2500,0.2500);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.2000,0.2000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(-0.1250,-0.1250);
			VelocityScale(2.0000,2.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.1000, 0.2000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, -20.0000, 0.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.1750);
			Position()
			{
				LifeTime(0.3500)
			}
			Size(0)
			{
				LifeTime(0.1750)
				Scale(2.0000);
			}
			Color(0)
			{
				LifeTime(0.1750)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("flames1");
		}
		ParticleEmitter("Embers")
		{
			MaxParticles(20.0000,20.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0000, 0.0000);
			BurstCount(20.0000,20.0000);
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
				Circle()
				{
					PositionX(-0.0500,0.0500);
					PositionY(0.1250,0.3750);
					PositionZ(-0.0500,0.0500);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.1750,0.1750);
				VelocityScale(1.5000,2.5000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1500, 0.2500);
				Red(0, 255.0000, 255.0000);
				Green(0, 0.0000, 200.0000);
				Blue(0, 0.0000, 0.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -90.0000, 90.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.5250);
				Position()
				{
					LifeTime(0.7000)
					Accelerate(0.0000, -5.5000, 0.0000);
				}
				Size(0)
				{
					LifeTime(0.7000)
					Scale(1.5000);
				}
				Color(0)
				{
					LifeTime(0.3500)
					Reach(255.0000,100.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(0.1750)
						Reach(255.0000,100.0000,0.0000,0.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("dirt");
			}
		}
	}
}
