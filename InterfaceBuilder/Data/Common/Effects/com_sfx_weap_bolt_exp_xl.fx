ParticleEmitter("Smoke")
{
	MaxParticles(15.0000,15.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0010, 0.0010);
	BurstCount(15.0000,15.0000);
	MaxLodDist(1000.0000);
	MinLodDist(800.0000);
	BoundingRadius(20.0);
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
			PositionY(1.4000,2.8000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(1.4000,1.4000);
		VelocityScale(2.0000,10.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 2.0000);
		Hue(0, 128.0000, 128.0000);
		Saturation(0, 0.0000, 0.0000);
		Value(0, 100.0000, 200.0000);
		Alpha(0, 128.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -90.0000, 90.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.8750);
		Position()
		{
			LifeTime(1.8750)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(1.8750)
			Scale(3.0000);
		}
		Color(0)
		{
			LifeTime(1.8750)
			Move(0.0000,0.0000,0.0000,-255.0000);
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("thicksmoke3");
		ParticleEmitter("BlackSmoke")
		{
			MaxParticles(4.0000,4.0000);
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
					PositionX(-2.8000,2.8000);
					PositionY(-2.8000,2.8000);
					PositionZ(-2.8000,2.8000);
				}
				Offset()
				{
					PositionX(-0.1400,0.1400);
					PositionY(-0.1400,0.1400);
					PositionZ(-0.1400,0.1400);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(2.8000,2.8000);
				InheritVelocityFactor(0.2000,0.2000);
				Size(0, 1.4000, 1.9600);
				Hue(0, 12.0000, 20.0000);
				Saturation(0, 5.0000, 10.0000);
				Value(0, 200.0000, 220.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, -20.0000, 20.0000);
				RotationVelocity(0, -20.0000, 20.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.8750);
				Position()
				{
					LifeTime(1.8750)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(2.5000)
					Scale(6.0000);
				}
				Color(0)
				{
					LifeTime(0.1250)
					Move(0.0000,0.0000,0.0000,255.0000);
					Next()
					{
						LifeTime(1.7500)
						Move(0.0000,0.0000,0.0000,-255.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("thicksmoke3");
			}
		}
	}
	ParticleEmitter("Heat")
	{
		MaxParticles(4.0000,4.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0010, 0.0010);
		BurstCount(4.0000,4.0000);
		MaxLodDist(1000.0000);
		MinLodDist(800.0000);
		BoundingRadius(30.0);
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
				PositionX(-0.8000,0.8000);
				PositionY(0.4000,2.0000);
				PositionZ(-0.8000,0.8000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(1.0000,3.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.4000);
			Red(0, 255.0000, 255.0000);
			Green(0, 204.0000, 233.0000);
			Blue(0, 98.0000, 185.0000);
			Alpha(0, 128.0000, 255.0000);
			StartRotation(0, 0.0000, 255.0000);
			RotationVelocity(0, -160.0000, 160.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.6250);
			Position()
			{
				LifeTime(0.3125)
			}
			Size(0)
			{
				LifeTime(1.2500)
				Scale(3.0000);
			}
			Color(0)
			{
				LifeTime(0.3125)
				Move(0.0000,-40.0000,-50.0000,-128.0000);
				Next()
				{
					LifeTime(0.3125)
					Move(128.0000,-50.0000,-50.0000,-128.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("thicksmoke3");
			ParticleEmitter("BlackSmoke")
			{
				MaxParticles(3.0000,3.0000);
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
						PositionX(-2.8000,2.8000);
						PositionY(-2.8000,2.8000);
						PositionZ(-2.8000,2.8000);
					}
					Offset()
					{
						PositionX(-0.1400,0.1400);
						PositionY(-0.1400,0.1400);
						PositionZ(-0.1400,0.1400);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(4.0000,4.0000);
					InheritVelocityFactor(0.1000,0.1000);
					Size(0, 0.5600, 1.1200);
					Red(0, 254.0000, 255.0000);
					Green(0, 172.0000, 179.0000);
					Blue(0, 75.0000, 89.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, -20.0000, 20.0000);
					RotationVelocity(0, -20.0000, 20.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(1.5625);
					Position()
					{
						LifeTime(1.8750)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(1.5625)
						Scale(5.0000);
					}
					Color(0)
					{
						LifeTime(0.0125)
						Move(0.0000,0.0000,0.0000,48.0000);
						Next()
						{
							LifeTime(1.5500)
							Move(0.0000,0.0000,0.0000,-64.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("thicksmoke3");
				}
			}
		}
		ParticleEmitter("Flames")
		{
			MaxParticles(8.0000,8.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0010, 0.0010);
			BurstCount(8.0000,8.0000);
			MaxLodDist(1000.0000);
			MinLodDist(800.0000);
			BoundingRadius(30.0);
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
					PositionX(-0.6000,0.6000);
					PositionY(0.5000,2.0000);
					PositionZ(-0.6000,0.6000);
				}
				Offset()
				{
					PositionX(-0.2000,0.2000);
					PositionY(-0.2000,0.2000);
					PositionZ(-0.2000,0.2000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(1.0000,3.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.5000, 1.0000);
				Red(0, 255.0000, 255.0000);
				Green(0, 204.0000, 233.0000);
				Blue(0, 98.0000, 185.0000);
				Alpha(0, 128.0000, 255.0000);
				StartRotation(0, 0.0000, 255.0000);
				RotationVelocity(0, -160.0000, 160.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(1.2500);
				Position()
				{
					LifeTime(0.3125)
				}
				Size(0)
				{
					LifeTime(1.2500)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(0.6250)
					Move(0.0000,-40.0000,-50.0000,-128.0000);
					Next()
					{
						LifeTime(0.6250)
						Move(128.0000,-50.0000,-50.0000,-128.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("PARTICLE");
				Texture("boom5");
				ParticleEmitter("BlackSmoke")
				{
					MaxParticles(3.0000,3.0000);
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
							PositionX(-2.8000,2.8000);
							PositionY(-2.8000,2.8000);
							PositionZ(-2.8000,2.8000);
						}
						Offset()
						{
							PositionX(-0.1400,0.1400);
							PositionY(-0.1400,0.1400);
							PositionZ(-0.1400,0.1400);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(4.0000,4.0000);
						InheritVelocityFactor(0.1000,0.1000);
						Size(0, 0.5600, 1.1200);
						Red(0, 254.0000, 255.0000);
						Green(0, 172.0000, 179.0000);
						Blue(0, 75.0000, 89.0000);
						Alpha(0, 0.0000, 0.0000);
						StartRotation(0, -20.0000, 20.0000);
						RotationVelocity(0, -20.0000, 20.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(1.5625);
						Position()
						{
							LifeTime(1.8750)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(1.5625)
							Scale(5.0000);
						}
						Color(0)
						{
							LifeTime(0.0125)
							Move(0.0000,0.0000,0.0000,48.0000);
							Next()
							{
								LifeTime(1.5500)
								Move(0.0000,0.0000,0.0000,-64.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("thicksmoke3");
					}
				}
			}
			ParticleEmitter("Flash")
			{
				MaxParticles(1.0000,1.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0010, 0.0010);
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
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 8.0000, 8.0000);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 220.0000, 220.0000);
					Alpha(0, 200.0000, 200.0000);
					StartRotation(0, 0.0000, 255.0000);
					RotationVelocity(0, 0.0000, 0.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.2500);
					Position()
					{
						LifeTime(1.2500)
					}
					Size(0)
					{
						LifeTime(0.2500)
					}
					Color(0)
					{
						LifeTime(0.2500)
						Reach(255.0000,150.0000,0.0000,0.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("starburst");
				}
				ParticleEmitter("Embers")
				{
					MaxParticles(5.0000,5.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.0010, 0.0010);
					BurstCount(5.0000,5.0000);
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
							PositionX(-0.4000,0.4000);
							PositionY(3.0000,4.0000);
							PositionZ(-0.4000,0.4000);
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
						Size(0, 0.8000, 1.6000);
						Red(0, 255.0000, 255.0000);
						Green(0, 128.0000, 208.0000);
						Blue(0, 0.0000, 121.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.9375);
						Position()
						{
							LifeTime(0.9375)
							Accelerate(0.0000, -8.0000, 0.0000);
						}
						Size(0)
						{
							LifeTime(0.9375)
							Scale(3.0000);
						}
						Color(0)
						{
							LifeTime(0.9375)
							Reach(100.0000,0.0000,0.0000,0.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("dirt");
					}
					ParticleEmitter("Sparks")
					{
						MaxParticles(8.0000,8.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0010, 0.0010);
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
								PositionX(-0.2000,0.2000);
								PositionY(0.1000,0.2000);
								PositionZ(-0.2000,0.2000);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.1000,0.1000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(16.0000,56.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.0200, 0.0600);
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
							LifeTime(0.9375);
							Position()
							{
								LifeTime(0.9375)
								Accelerate(0.0000, -10.0000, 0.0000);
							}
							Size(0)
							{
								LifeTime(0.2500)
								Scale(1.0000);
							}
							Color(0)
							{
								LifeTime(0.0125)
								Reach(255.0000,244.0000,147.0000,128.0000);
								Next()
								{
									LifeTime(0.8625)
									Reach(242.0000,121.0000,0.0000,128.0000);
									Next()
									{
										LifeTime(0.1250)
										Reach(242.0000,36.0000,0.0000,0.0000);
									}
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
					}
				}
			}
		}
	}
}