ParticleEmitter("Mesh")
{
	MaxParticles(-1.0000,-1.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(1.0000, 1.0000);
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
		Size(0, 1.0000, 1.0000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.0000);
		Position()
		{
			LifeTime(1.0000)
		}
		Size(0)
		{
			LifeTime(1.5000)
		}
		Color(0)
		{
			LifeTime(0.0001)
			Reach(255.0000,255.0000,255.0000,255.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("GEOMETRY");
		Model("all_inf_luke");
	}
	ParticleEmitter("Smoke")
	{
		MaxParticles(50.0000,50.0000);
		StartDelay(0.0500,0.0500);
		BurstDelay(0.0100, 0.0100);
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
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(-0.5000,0.5000);
				PositionY(0.0000,2.0000);
				PositionZ(-0.5000,0.5000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(1.5000,1.5000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.5000, 0.7000);
			Red(0, 128.0000, 255.0000);
			Green(0, 128.0000, 128.0000);
			Blue(0, 0.0000, 64.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -40.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.7500);
			Position()
			{
				LifeTime(0.7500)
				Accelerate(0.0000, 2.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(0.7500)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.7500)
				Move(0.0000,0.0000,0.0000,-255.0000);
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("thicksmoke2");
		}
		ParticleEmitter("Flare")
		{
			MaxParticles(10.0000,10.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(10.0000,10.0000);
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
					PositionY(1.0000,1.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 2.0000, 2.0000);
				Red(0, 255.0000, 255.0000);
				Green(0, 128.0000, 128.0000);
				Blue(0, 0.0000, 64.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 1.0000, 1.9000);
				RotationVelocity(0, 0.0000, 0.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.5000);
				Position()
				{
					LifeTime(1.0000)
				}
				Size(0)
				{
					LifeTime(0.7500)
				}
				Color(0)
				{
					LifeTime(0.5000)
					Move(0.0000,0.0000,0.0000,-255.0000);
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("BILLBOARD");
				Texture("starburst");
			}
			ParticleEmitter("Streamers")
			{
				MaxParticles(3.0000,3.0000);
				StartDelay(0.1000,0.1000);
				BurstDelay(0.1000, 0.4000);
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
						PositionY(2.0000,2.0000);
						PositionZ(0.0000,0.0000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.2000,0.6000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(1.5000,1.5000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.2000, 0.3000);
					Red(0, 255.0000, 255.0000);
					Green(0, 128.0000, 128.0000);
					Blue(0, 0.0000, 64.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, 25.0000, 25.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.5000);
					Position()
					{
						LifeTime(1.0000)
					}
					Size(0)
					{
						LifeTime(0.5000)
						Scale(1.5000);
					}
					Color(0)
					{
						LifeTime(0.0100)
						Move(0.0000,0.0000,0.0000,64.0000);
						Next()
						{
							LifeTime(0.4900)
							Move(0.0000,0.0000,0.0000,-64.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("GEOMETRY");
					Model("streamer");
				}
				ParticleEmitter("Flares")
				{
					MaxParticles(50.0000,50.0000);
					StartDelay(0.0500,0.0500);
					BurstDelay(0.0100, 0.0350);
					BurstCount(1.0000,2.0000);
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
							PositionY(1.0000,1.0000);
							PositionZ(0.0000,0.0000);
						}
						Offset()
						{
							PositionX(-0.5000,0.5000);
							PositionY(0.2000,2.0000);
							PositionZ(-0.5000,0.5000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(2.0000,2.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.5000, 1.5000);
						Red(0, 128.0000, 128.0000);
						Green(0, 200.0000, 200.0000);
						Blue(0, 255.0000, 255.0000);
						Alpha(0, 0.0000, 0.0000);
						StartRotation(0, 128.0000, 128.0000);
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
							Scale(3.0000);
						}
						Color(0)
						{
							LifeTime(0.0100)
							Move(0.0000,0.0000,0.0000,255.0000);
							Next()
							{
								LifeTime(0.1900)
								Reach(0.0000,0.0000,0.0000,-255.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("flare5");
					}
				}
			}
		}
	}
}
