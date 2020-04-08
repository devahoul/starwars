ParticleEmitter("Schrap")
{
	MaxParticles(20.0000,20.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(1.0000,1.0000);
	MaxLodDist(50.0000);
	MinLodDist(10.0000);
	BoundingRadius(30.0);
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
			PositionX(-0.1125,0.1125);
			PositionY(-0.1125,0.1125);
			PositionZ(-0.1125,0.1125);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(3.3750,3.3750);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.2250, 0.6750);
		Red(0, 255.0000, 255.0000);
		Green(0, 0.0000, 2.0000);
		Blue(0, 10.0000, 10.0000);
		Alpha(0, 16.0000, 64.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, -20.0000, 20.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.2500);
		Position()
		{
			LifeTime(1.8750)
			Accelerate(0.0000, -5.6250, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.1250)
			Scale(3.0000);
			Next()
			{
				LifeTime(1.7500)
				Scale(2.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.0000)
			Reach(255.0000,0.0000,10.0000,200.0000);
			Next()
			{
				LifeTime(0.6250)
				Reach(255.0000,0.0000,255.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("dirt");
	}
	ParticleEmitter("Lightning")
	{
		MaxParticles(120.0000,120.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0100);
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
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			Offset()
			{
				PositionX(-3.0000,3.0000);
				PositionY(-3.0000,3.0000);
				PositionZ(-3.0000,3.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(0.0000,0.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 0.0750, 0.5250);
			Red(0, 255.0000, 255.0000);
			Green(0, 220.0000, 220.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 128.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, -5.0000, 5.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.1250);
			Position()
			{
				LifeTime(1.2500)
			}
			Size(0)
			{
				LifeTime(0.1250)
				Scale(1.2500);
			}
			Color(0)
			{
				LifeTime(0.0125)
				Reach(255.0000,100.0000,255.0000,255.0000);
				Next()
				{
					LifeTime(0.0625)
					Reach(60.0000,0.0000,255.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("GEOMETRY");
			Model("lightning1");
		}
		ParticleEmitter("Lightning")
		{
			MaxParticles(25.0000,25.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
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
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				Offset()
				{
					PositionX(-1.5000,1.5000);
					PositionY(-1.5000,1.5000);
					PositionZ(-1.5000,1.5000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(0.0000,0.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.1500, 0.6000);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 0.0000, 0.0000);
				StartRotation(0, 0.0000, 10.0000);
				RotationVelocity(0, 0.1000, 0.6000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.1250);
				Position()
				{
					LifeTime(1.2500)
				}
				Size(0)
				{
					LifeTime(0.1250)
					Scale(1.0000);
				}
				Color(0)
				{
					LifeTime(0.0125)
					Reach(255.0000,255.0000,255.0000,255.0000);
					Next()
					{
						LifeTime(0.0625)
						Reach(200.0000,0.0000,0.0000,0.0000);
					}
				}
			}
			Geometry()
			{
				BlendMode("ADDITIVE");
				Type("GEOMETRY");
				Model("lightning1");
			}
			ParticleEmitter("Lightning")
			{
				MaxParticles(28.0000,28.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.2000, 0.2000);
				BurstCount(2.0000,3.0000);
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
						PositionX(-1.1250,1.1250);
						PositionY(-1.1250,1.1250);
						PositionZ(-1.1250,1.1250);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(0.0000,0.0000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.1500, 0.6000);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 0.0000, 0.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -5.0000, 5.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.1250);
					Position()
					{
						LifeTime(1.2500)
					}
					Size(0)
					{
						LifeTime(0.1250)
						Scale(1.0000);
					}
					Color(0)
					{
						LifeTime(0.0125)
						Reach(255.0000,255.0000,255.0000,128.0000);
						Next()
						{
							LifeTime(0.0875)
							Reach(255.0000,255.0000,220.0000,0.0000);
						}
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("GEOMETRY");
					Model("lightning2");
				}
				ParticleEmitter("Flare")
				{
					MaxParticles(2.0000,2.0000);
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
						Size(0, 5.2500, 5.2500);
						Red(0, 255.0000, 255.0000);
						Green(0, 200.0000, 200.0000);
						Blue(0, 255.0000, 255.0000);
						Alpha(0, 255.0000, 255.0000);
						StartRotation(0, 0.0000, 0.0000);
						RotationVelocity(0, 0.0000, 0.0000);
						FadeInTime(0.0000);
					}
					Transformer()
					{
						LifeTime(2.5000);
						Position()
						{
							LifeTime(1.2500)
						}
						Size(0)
						{
							LifeTime(2.5000)
							Scale(0.5000);
						}
						Color(0)
						{
							LifeTime(1.2500)
							Reach(255.0000,60.0000,120.0000,200.0000);
							Next()
							{
								LifeTime(1.2500)
								Reach(255.0000,60.0000,120.0000,0.0000);
							}
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("PARTICLE");
						Texture("flare1");
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
							Size(0, 3.0000, 3.0000);
							Red(0, 255.0000, 255.0000);
							Green(0, 20.0000, 20.0000);
							Blue(0, 20.0000, 255.0000);
							Alpha(0, 64.0000, 64.0000);
							StartRotation(0, 0.0000, 0.0000);
							RotationVelocity(0, 0.0000, 0.0000);
							FadeInTime(0.0000);
						}
						Transformer()
						{
							LifeTime(0.9375);
							Position()
							{
								LifeTime(1.2500)
							}
							Size(0)
							{
								LifeTime(0.9375)
								Scale(3.0000);
							}
							Color(0)
							{
								LifeTime(0.9375)
								Reach(255.0000,0.0000,100.0000,0.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("PARTICLE");
							Texture("flare4");
						}
						ParticleEmitter("Energy")
						{
							MaxParticles(20.0000,20.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.0200, 0.0200);
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
									PositionX(-1.5000,1.5000);
									PositionY(-1.5000,1.5000);
									PositionZ(-1.5000,1.5000);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(4.5000,4.5000);
								InheritVelocityFactor(0.0000,0.0000);
								Size(0, 0.7500, 1.0500);
								Red(0, 255.0000, 255.0000);
								Green(0, 30.0000, 50.0000);
								Blue(0, 0.0000, 200.0000);
								Alpha(0, 128.0000, 128.0000);
								StartRotation(0, 0.0000, 360.0000);
								RotationVelocity(0, -100.0000, 100.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(0.3125);
								Position()
								{
									LifeTime(1.8750)
								}
								Size(0)
								{
									LifeTime(0.3125)
									Scale(5.0000);
								}
								Color(0)
								{
									LifeTime(0.3125)
									Reach(255.0000,0.0000,50.0000,0.0000);
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("PARTICLE");
								Texture("flare4");
							}
							ParticleEmitter("Sparks")
							{
								MaxParticles(50.0000,50.0000);
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
									Circle()
									{
										PositionX(-0.1500,0.1500);
										PositionY(-0.1500,0.1500);
										PositionZ(-0.1500,0.1500);
									}
									Offset()
									{
										PositionX(0.0000,0.0000);
										PositionY(0.0000,0.0000);
										PositionZ(0.0000,0.0000);
									}
									PositionScale(1.5000,4.5000);
									VelocityScale(15.0000,45.0000);
									InheritVelocityFactor(0.0000,0.0000);
									Size(0, 0.0750, 0.1950);
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
									LifeTime(0.3125);
									Position()
									{
										LifeTime(0.9375)
										Accelerate(0.0000, -3.0000, 0.0000);
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
									SparkLength(0.0500);
									Texture("redlaser");
								}
							}
						}
					}
				}
			}
		}
	}
}

