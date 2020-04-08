ParticleEmitter("SmokePuff")
{
	MaxParticles(20.0000,20.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(40.0000,40.0000);
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
			PositionY(0.1000,0.2000);
			PositionZ(-1.0000,1.0000);
		}
		Offset()
		{
			PositionX(-1.0000,1.0000);
			PositionY(0.0000,2.0000);
			PositionZ(-1.0000,1.0000);
		}
		PositionScale(1.0000,1.0000);
		VelocityScale(3.0000,3.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 2.0000, 2.5000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, -50.0000, 0.0000);
		RotationVelocity(0, -40.0000, 40.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(6.0000);
		Position()
		{
			LifeTime(4.0000)
			Scale(0.0000);
		}
		Size(0)
		{
			LifeTime(6.0000)
			Scale(1.5000);
		}
		Color(0)
		{
			LifeTime(2.0000)
			Move(255.0000,255.0000,255.0000,255.0000);
			Next()
			{
				LifeTime(3.5000)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("NORMAL");
		Type("PARTICLE");
		Texture("blacksmoke");
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
	ParticleEmitter("SmokeTrail")
	{
		MaxParticles(3.0000,3.0000);
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
			Circle()
			{
				PositionX(-1.0000,1.0000);
				PositionY(0.5000,0.5000);
				PositionZ(-1.0000,1.0000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(2.0000,2.0000);
			VelocityScale(25.0000,25.0000);
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
			LifeTime(5.0000);
			Position()
			{
				LifeTime(5.0000)
				Accelerate(0.0000, -80.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(5.0000)
				Scale(1.0000);
			}
			Color(0)
			{
				LifeTime(1.0000)
				Move(255.0000,255.0000,255.0000,255.0000);
				Next()
				{
					LifeTime(4.0000)
					Reach(255.0000,255.0000,255.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("EMITTER");
			Texture("underlitesmoke2");
			ParticleEmitter("Smoke")
			{
				MaxParticles(30.0000,30.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0250, 0.0750);
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
					Size(0, 0.5000, 0.7000);
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
						LifeTime(4.0000)
						Scale(4.0000);
					}
					Color(0)
					{
						LifeTime(0.7000)
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
					Texture("blacksmoke");
				}
			}
		}
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
				ParticleEmitter("Flare")
				{
					MaxParticles(2.0000,2.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.0000, 0.0000);
					BurstCount(1.0000,1.0000);
					MaxLodDist(50.0000);
					MinLodDist(10.0000);
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
						Size(0, 2.0000, 5.0000);
						Red(0, 255.0000, 255.0000);
						Green(0, 255.0000, 255.0000);
						Blue(0, 150.0000, 150.0000);
						Alpha(0, 32.0000, 32.0000);
						StartRotation(0, 0.0000, 360.0000);
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
							LifeTime(0.1000)
							Scale(4.0000);
						}
						Color(0)
						{
							LifeTime(0.1000)
							Reach(255.0000,255.0000,150.0000,0.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("cs_flare1");
					}
					ParticleEmitter("Embers")
					{
						MaxParticles(20.0000,20.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0000, 0.0000);
						BurstCount(20.0000,20.0000);
						MaxLodDist(50.0000);
						MinLodDist(10.0000);
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
								PositionX(-0.5000,0.5000);
								PositionY(0.5000,1.5000);
								PositionZ(-0.5000,0.5000);
							}
							Offset()
							{
								PositionX(0.0000,0.0000);
								PositionY(0.0000,0.0000);
								PositionZ(0.0000,0.0000);
							}
							PositionScale(2.0000,2.0000);
							VelocityScale(8.0000,8.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.5000, 2.5000);
							Red(0, 255.0000, 255.0000);
							Green(0, 189.0000, 255.0000);
							Blue(0, 89.0000, 128.0000);
							Alpha(0, 255.0000, 255.0000);
							StartRotation(0, 0.0000, 360.0000);
							RotationVelocity(0, -90.0000, 90.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(1.5000);
							Position()
							{
								LifeTime(2.0000)
								Accelerate(0.0000, -25.0000, 0.0000);
							}
							Size(0)
							{
								LifeTime(2.0000)
								Scale(1.5000);
							}
							Color(0)
							{
								LifeTime(1.5000)
								Reach(193.0000,116.0000,0.0000,0.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("dirt");
						}
						ParticleEmitter("Shockwave")
						{
							MaxParticles(1.0000,1.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.0000, 0.0000);
							BurstCount(1.0000,1.0000);
							MaxLodDist(50.0000);
							MinLodDist(10.0000);
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
								Size(0, 4.0000, 4.0000);
								Red(0, 255.0000, 255.0000);
								Green(0, 255.0000, 255.0000);
								Blue(0, 128.0000, 128.0000);
								Alpha(0, 64.0000, 64.0000);
								StartRotation(0, 0.0000, 360.0000);
								RotationVelocity(0, 0.0000, 0.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(0.2500);
								Position()
								{
									LifeTime(0.2500)
								}
								Size(0)
								{
									LifeTime(0.2500)
									Scale(10.0000);
								}
								Color(0)
								{
									LifeTime(0.2500)
									Reach(255.0000,255.0000,200.0000,0.0000);
								}
							}
							Geometry()
							{
								BlendMode("BLUR");
								BlurValue(0.1000);
								BlurRes(0.0000);
								Type("PARTICLE");
								Texture("flare4");
							}
							ParticleEmitter("Flare")
							{
								MaxParticles(1.0000,1.0000);
								StartDelay(0.0000,0.0000);
								BurstDelay(0.1000, 0.2000);
								BurstCount(1.0000,1.0000);
								MaxLodDist(50.0000);
								MinLodDist(10.0000);
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
									Size(0, 16.0000, 16.0000);
									Red(0, 255.0000, 255.0000);
									Green(0, 255.0000, 255.0000);
									Blue(0, 200.0000, 200.0000);
									Alpha(0, 200.0000, 200.0000);
									StartRotation(0, 0.0000, 0.0000);
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
										Scale(1.0000);
									}
									Color(0)
									{
										LifeTime(0.2000)
										Reach(255.0000,255.0000,200.0000,0.0000);
									}
								}
								Geometry()
								{
									BlendMode("ADDITIVE");
									Type("PARTICLE");
									Texture("flare0");
								}
							}
						}
					}
				}
			}
		}
	}
}
