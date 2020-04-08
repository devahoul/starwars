ParticleEmitter("Shockwave")
{
	MaxParticles(2.0000,2.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0500, 0.0500);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(30.0);
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
		Size(0, 1.0000, 1.0000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 128.0000, 128.0000);
		StartRotation(0, 0.0000, 0.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.4000);
		Position()
		{
			LifeTime(0.2500)
		}
		Size(0)
		{
			LifeTime(0.4000)
			Scale(10.0000);
		}
		Color(0)
		{
			LifeTime(0.4000)
			Reach(255.0000,255.0000,255.0000,0.0000);
		}
	}
	Geometry()
	{
		BlendMode("BLUR");
		BlurValue(0.1500);
		BlurRes(0.0000);
		Type("PARTICLE");
		Texture("flare4");
	}
	ParticleEmitter("Explosion_Fast")
	{
		MaxParticles(10.0000,10.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.1000, 0.1000);
		BurstCount(5.0000,5.0000);
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
				PositionX(-0.2500,0.2500);
				PositionY(0.0000,1.0000);
				PositionZ(-0.2500,0.2500);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(1.0000,1.0000);
			VelocityScale(6.0000,12.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.0000);
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
			LifeTime(2.0000);
			Position()
			{
				LifeTime(0.2500)
			}
			Size(0)
			{
				LifeTime(1.5000)
				Scale(0.1000);
			}
			Color(0)
			{
				LifeTime(0.0500)
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
				MaxParticles(4.0000,4.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.1000, 0.1000);
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
						PositionX(-1.0000,1.0000);
						PositionY(-1.0000,1.0000);
						PositionZ(-1.0000,1.0000);
					}
					Offset()
					{
						PositionX(-0.5000,0.5000);
						PositionY(-0.5000,0.5000);
						PositionZ(-0.5000,0.5000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(1.0000,1.0000);
					InheritVelocityFactor(0.5000,0.5000);
					Size(0, 0.4000, 0.6000);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -160.0000, 160.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.5000);
					Position()
					{
						LifeTime(0.5000)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.6250)
						Scale(4.0000);
					}
					Color(0)
					{
						LifeTime(0.5000)
						Reach(255.0000,255.0000,255.0000,0.0000);
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
					MaxParticles(3.0000,3.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.1000, 0.1000);
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
							PositionX(-1.0000,1.0000);
							PositionY(-1.0000,1.0000);
							PositionZ(-1.0000,1.0000);
						}
						Offset()
						{
							PositionX(-0.1500,0.1500);
							PositionY(-0.1500,0.1500);
							PositionZ(-0.1500,0.1500);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(1.0000,2.0000);
						InheritVelocityFactor(0.5000,0.5000);
						Size(0, 0.3000, 0.5000);
						Red(0, 255.0000, 255.0000);
						Green(0, 200.0000, 200.0000);
						Blue(0, 100.0000, 100.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 0.0000, 360.0000);
						RotationVelocity(0, -100.0000, 100.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(0.3750);
						Position()
						{
							LifeTime(0.3750)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(0.5000)
							Scale(4.0000);
						}
						Color(0)
						{
							LifeTime(0.4000)
							Reach(255.0000,255.0000,100.0000,0.0000);
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("boom5");
					}
				}
			}
		}
		ParticleEmitter("Explosion_Med")
		{
			MaxParticles(3.0000,3.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
			BurstCount(3.0000,3.0000);
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
					PositionX(-0.5000,0.5000);
					PositionY(0.0000,0.5000);
					PositionZ(-0.5000,0.5000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(1.0000,1.0000);
				VelocityScale(2.0000,8.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 1.0000, 1.0000);
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
				LifeTime(2.0000);
				Position()
				{
					LifeTime(0.5000)
				}
				Size(0)
				{
					LifeTime(3.0000)
					Scale(0.1000);
				}
				Color(0)
				{
					LifeTime(0.1000)
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
					MaxParticles(8.0000,8.0000);
					StartDelay(0.0000,0.0000);
					BurstDelay(0.1000, 0.1000);
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
							PositionX(-1.0000,1.0000);
							PositionY(-1.0000,1.0000);
							PositionZ(-1.0000,1.0000);
						}
						Offset()
						{
							PositionX(-0.5000,0.5000);
							PositionY(-0.5000,0.5000);
							PositionZ(-0.5000,0.5000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(1.0000,1.0000);
						InheritVelocityFactor(0.5000,0.5000);
						Size(0, 0.4000, 0.6000);
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
						LifeTime(1.5000);
						Position()
						{
							LifeTime(1.0000)
							Scale(0.0000);
						}
						Size(0)
						{
							LifeTime(1.2500)
							Scale(4.0000);
						}
						Color(0)
						{
							LifeTime(0.1000)
							Reach(255.0000,255.0000,255.0000,255.0000);
							Next()
							{
								LifeTime(0.3750)
								Reach(50.0000,25.0000,25.0000,255.0000);
								Next()
								{
									LifeTime(1.0000)
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
						MaxParticles(5.0000,5.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.1000, 0.1000);
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
								PositionX(-1.0000,1.0000);
								PositionY(-1.0000,1.0000);
								PositionZ(-1.0000,1.0000);
							}
							Offset()
							{
								PositionX(-0.1500,0.1500);
								PositionY(-0.1500,0.1500);
								PositionZ(-0.1500,0.1500);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(1.0000,2.0000);
							InheritVelocityFactor(0.5000,0.5000);
							Size(0, 0.3000, 0.5000);
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
							LifeTime(0.7500);
							Position()
							{
								LifeTime(0.7500)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(1.0000)
								Scale(4.0000);
							}
							Color(0)
							{
								LifeTime(0.0500)
								Reach(255.0000,255.0000,100.0000,200.0000);
								Next()
								{
									LifeTime(0.7000)
									Reach(200.0000,0.0000,0.0000,0.0000);
								}
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("boom5");
						}
					}
				}
			}
			ParticleEmitter("Explosion_Slow")
			{
				MaxParticles(4.0000,4.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.1000, 0.1000);
				BurstCount(4.0000,4.0000);
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
						PositionX(-0.5000,0.5000);
						PositionY(0.0000,1.0000);
						PositionZ(-0.5000,0.5000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(1.0000,1.0000);
					VelocityScale(2.0000,8.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 1.0000, 1.0000);
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
					LifeTime(3.5000);
					Position()
					{
						LifeTime(1.0000)
					}
					Size(0)
					{
						LifeTime(6.0000)
						Scale(0.1000);
					}
					Color(0)
					{
						LifeTime(0.2000)
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
						MaxParticles(8.0000,8.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.1000, 0.1000);
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
								PositionX(-1.0000,1.0000);
								PositionY(-1.0000,1.0000);
								PositionZ(-1.0000,1.0000);
							}
							Offset()
							{
								PositionX(-0.5000,0.5000);
								PositionY(-0.5000,0.5000);
								PositionZ(-0.5000,0.5000);
							}
							PositionScale(0.0000,0.0000);
							VelocityScale(1.0000,1.0000);
							InheritVelocityFactor(0.5000,0.5000);
							Size(0, 0.4000, 0.6000);
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
							LifeTime(2.5000);
							Position()
							{
								LifeTime(2.0000)
								Scale(0.0000);
							}
							Size(0)
							{
								LifeTime(2.5000)
								Scale(4.0000);
							}
							Color(0)
							{
								LifeTime(0.2000)
								Reach(255.0000,255.0000,255.0000,255.0000);
								Next()
								{
									LifeTime(0.7500)
									Reach(50.0000,25.0000,25.0000,255.0000);
									Next()
									{
										LifeTime(1.5000)
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
							MaxParticles(5.0000,5.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.1000, 0.1000);
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
									PositionX(-1.0000,1.0000);
									PositionY(-1.0000,1.0000);
									PositionZ(-1.0000,1.0000);
								}
								Offset()
								{
									PositionX(-0.1500,0.1500);
									PositionY(-0.1500,0.1500);
									PositionZ(-0.1500,0.1500);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(1.0000,2.0000);
								InheritVelocityFactor(0.5000,0.5000);
								Size(0, 0.3000, 0.5000);
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
								LifeTime(1.5000);
								Position()
								{
									LifeTime(1.5000)
									Scale(0.0000);
								}
								Size(0)
								{
									LifeTime(2.0000)
									Scale(4.0000);
								}
								Color(0)
								{
									LifeTime(0.1000)
									Reach(255.0000,255.0000,100.0000,200.0000);
									Next()
									{
										LifeTime(1.4000)
										Reach(200.0000,0.0000,0.0000,0.0000);
									}
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("PARTICLE");
								Texture("boom5");
							}
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
						Size(0, 5.0000, 5.0000);
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
							PositionScale(1.0000,1.0000);
							VelocityScale(8.0000,8.0000);
							InheritVelocityFactor(0.0000,0.0000);
							Size(0, 0.2500, 1.2500);
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
						ParticleEmitter("Flare")
						{
							MaxParticles(1.0000,1.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.1000, 0.2000);
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
								Blue(0, 200.0000, 200.0000);
								Alpha(0, 128.0000, 128.0000);
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
									Reach(255.0000,255.0000,100.0000,0.0000);
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("PARTICLE");
								Texture("flare0");
							}
							ParticleEmitter("SmokeTrail")
							{
								MaxParticles(5.0000,5.0000);
								StartDelay(0.0000,0.0000);
								BurstDelay(0.0500, 0.0500);
								BurstCount(5.0000,5.0000);
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
										PositionX(-1.0000,1.0000);
										PositionY(1.0000,2.0000);
										PositionZ(-1.0000,1.0000);
									}
									Offset()
									{
										PositionX(0.0000,0.0000);
										PositionY(0.0000,0.0000);
										PositionZ(0.0000,0.0000);
									}
									PositionScale(1.0000,1.0000);
									VelocityScale(5.0000,15.0000);
									InheritVelocityFactor(0.0000,0.0000);
									Size(0, 1.0000, 1.0000);
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
									LifeTime(4.0000);
									Position()
									{
										LifeTime(4.0000)
										Accelerate(0.0000, -20.0000, 0.0000);
									}
									Size(0)
									{
										LifeTime(5.0000)
										Scale(1.0000);
									}
									Color(0)
									{
										LifeTime(3.0000)
										Next()
										{
											LifeTime(1.0000)
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
										MaxParticles(-1.0000,-1.0000);
										StartDelay(0.0000,0.0000);
										BurstDelay(0.0250, 0.1250);
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
											Spread()
											{
												PositionX(-0.5000,0.5000);
												PositionY(-0.5000,0.5000);
												PositionZ(-0.5000,0.5000);
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
											Size(0, 0.1000, 0.2000);
											Red(0, 255.0000, 255.0000);
											Green(0, 255.0000, 255.0000);
											Blue(0, 255.0000, 255.0000);
											Alpha(0, 128.0000, 128.0000);
											StartRotation(0, 0.0000, 360.0000);
											RotationVelocity(0, -100.0000, 100.0000);
											FadeInTime(0.0000);
										}
										Transformer()
										{
											LifeTime(2.0000);
											Position()
											{
												LifeTime(2.0000)
												Accelerate(0.0000, 1.0000, 0.0000);
											}
											Size(0)
											{
												LifeTime(2.0000)
												Scale(8.0000);
											}
											Color(0)
											{
												LifeTime(1.0000)
												Move(-200.0000,-200.0000,-200.0000,-100.0000);
												Next()
												{
													LifeTime(1.0000)
													Move(0.0000,0.0000,0.0000,-28.0000);
												}
											}
										}
										Geometry()
										{
											BlendMode("NORMAL");
											Type("PARTICLE");
											Texture("boom4");
										}
										ParticleEmitter("Smoke")
										{
											MaxParticles(-1.0000,-1.0000);
											StartDelay(0.0000,0.0000);
											BurstDelay(0.0300, 0.0300);
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
												Spread()
												{
													PositionX(-0.5000,0.5000);
													PositionY(-0.5000,0.5000);
													PositionZ(-0.5000,0.5000);
												}
												Offset()
												{
													PositionX(0.0000,0.0000);
													PositionY(0.0000,0.0000);
													PositionZ(0.0000,0.0000);
												}
												PositionScale(0.0000,0.0000);
												VelocityScale(0.0000,0.0000);
												InheritVelocityFactor(1.0000,1.0000);
												Size(0, 0.1000, 0.1000);
												Red(0, 255.0000, 255.0000);
												Green(0, 255.0000, 255.0000);
												Blue(0, 255.0000, 255.0000);
												Alpha(0, 255.0000, 255.0000);
												StartRotation(0, 0.0000, 360.0000);
												RotationVelocity(0, -100.0000, 100.0000);
												FadeInTime(0.0000);
											}
											Transformer()
											{
												LifeTime(0.2000);
												Position()
												{
													LifeTime(0.0000)
												}
												Size(0)
												{
													LifeTime(0.2000)
													Scale(0.1000);
												}
												Color(0)
												{
													LifeTime(0.2000)
													Reach(255.0000,255.0000,255.0000,0.0000);
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
							}
						}
					}
				}
			}
		}
	}
}
