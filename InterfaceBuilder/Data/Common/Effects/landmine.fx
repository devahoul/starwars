ParticleEmitter("BlackSmoke")
{
	MaxParticles(5.0000,5.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.1000, 0.1000);
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
			PositionX(-0.2000,0.2000);
			PositionY(0.1000,0.5000);
			PositionZ(-0.2000,0.2000);
		}
		Offset()
		{
			PositionX(-0.5000,0.5000);
			PositionY(1.0000,1.0000);
			PositionZ(-0.5000,0.5000);
		}
		PositionScale(0.5000,0.5000);
		VelocityScale(4.0000,6.0000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 1.0000, 1.5000);
		Red(0, 255.0000, 255.0000);
		Green(0, 255.0000, 255.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 0.0000, 0.0000);
		StartRotation(0, -70.0000, 0.0000);
		RotationVelocity(0, -40.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(1.5000);
		Position()
		{
			LifeTime(1.5000)
			Accelerate(0.0000, 2.5000, 0.0000);
		}
		Size(0)
		{
			LifeTime(1.5000)
			Scale(5.0000);
		}
		Color(0)
		{
			LifeTime(0.5000)
			Reach(255.0000,255.0000,255.0000,48.0000);
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
		Type("PARTICLE");
		Texture("thicksmoke1");
	}
	ParticleEmitter("Drops")
	{
		MaxParticles(5.0000,5.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0050, 0.0050);
		BurstCount(1.0000,1.0000);
		MaxLodDist(50.0000);
		MinLodDist(10.0000);
		BoundingRadius(5.0);
		SoundName("")
		NoRegisterStep();
		Size(1.0000, 1.0000);
		Hue(255.0000, 255.0000);
		Saturation(255.0000, 255.0000);
		Value(255.0000, 255.0000);
		Alpha(255.0000, 255.0000);
		Spawner()
		{
			Spread()
			{
				PositionX(-0.6000,0.6000);
				PositionY(2.4000,6.0000);
				PositionZ(-0.6000,0.6000);
			}
			Offset()
			{
				PositionX(0.0000,0.0000);
				PositionY(0.0000,0.0000);
				PositionZ(0.0000,0.0000);
			}
			PositionScale(0.0000,0.0000);
			VelocityScale(2.0000,4.0000);
			InheritVelocityFactor(0.0000,0.0000);
			Size(0, 1.0000, 1.9000);
			Red(0, 255.0000, 255.0000);
			Green(0, 255.0000, 255.0000);
			Blue(0, 255.0000, 255.0000);
			Alpha(0, 64.0000, 96.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(1.5000);
			Position()
			{
				LifeTime(1.5000)
				Accelerate(0.0000, -16.0000, 0.0000);
			}
			Size(0)
			{
				LifeTime(1.5000)
				Scale(4.0000);
			}
			Color(0)
			{
				LifeTime(1.5000)
				Reach(255.0000,255.0000,255.0000,0.0000);
			}
		}
		Geometry()
		{
			BlendMode("NORMAL");
			Type("PARTICLE");
			Texture("dirt");
		}
		ParticleEmitter("Cloud")
		{
			MaxParticles(5.0000,5.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.0100, 0.0100);
			BurstCount(1.0000,1.0000);
			MaxLodDist(50.0000);
			MinLodDist(10.0000);
			BoundingRadius(5.0);
			SoundName("")
			NoRegisterStep();
			Size(1.0000, 1.0000);
			Hue(255.0000, 255.0000);
			Saturation(255.0000, 255.0000);
			Value(255.0000, 255.0000);
			Alpha(255.0000, 255.0000);
			Spawner()
			{
				Circle()
				{
					PositionX(-0.3000,0.3000);
					PositionY(-0.3000,0.3000);
					PositionZ(-0.3000,0.3000);
				}
				Offset()
				{
					PositionX(0.0000,0.0000);
					PositionY(0.0000,0.0000);
					PositionZ(0.0000,0.0000);
				}
				PositionScale(0.0000,0.0000);
				VelocityScale(2.0000,2.0000);
				InheritVelocityFactor(0.0000,0.0000);
				Size(0, 0.4000, 1.0000);
				Red(0, 255.0000, 255.0000);
				Green(0, 255.0000, 255.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 255.0000, 255.0000);
				StartRotation(0, 0.0000, 360.0000);
				RotationVelocity(0, -180.0000, 180.0000);
				FadeInTime(0.0000);
			}
			Transformer()
			{
				LifeTime(0.5000);
				Position()
				{
					LifeTime(1.5000)
					Scale(0.0000);
				}
				Size(0)
				{
					LifeTime(0.5000)
					Scale(2.0000);
				}
				Color(0)
				{
					LifeTime(0.5000)
					Reach(0.0000,0.0000,0.0000,0.0000);
				}
			}
			Geometry()
			{
				BlendMode("NORMAL");
				Type("PARTICLE");
				Texture("boom4");
			}
			ParticleEmitter("Cloud")
			{
				MaxParticles(30.0000,30.0000);
				StartDelay(0.0000,0.0000);
				BurstDelay(0.0100, 0.0100);
				BurstCount(1.0000,1.0000);
				MaxLodDist(50.0000);
				MinLodDist(10.0000);
				BoundingRadius(5.0);
				SoundName("")
				NoRegisterStep();
				Size(1.0000, 1.0000);
				Hue(255.0000, 255.0000);
				Saturation(255.0000, 255.0000);
				Value(255.0000, 255.0000);
				Alpha(255.0000, 255.0000);
				Spawner()
				{
					Circle()
					{
						PositionX(-0.3000,0.3000);
						PositionY(0.6000,1.2000);
						PositionZ(-0.3000,0.3000);
					}
					Offset()
					{
						PositionX(0.0000,0.0000);
						PositionY(0.0000,0.0000);
						PositionZ(0.0000,0.0000);
					}
					PositionScale(0.0000,0.0000);
					VelocityScale(2.0000,6.5000);
					InheritVelocityFactor(0.0000,0.0000);
					Size(0, 0.2000, 0.6000);
					Red(0, 255.0000, 255.0000);
					Green(0, 255.0000, 255.0000);
					Blue(0, 255.0000, 255.0000);
					Alpha(0, 255.0000, 255.0000);
					StartRotation(0, 0.0000, 360.0000);
					RotationVelocity(0, -180.0000, 180.0000);
					FadeInTime(0.0000);
				}
				Transformer()
				{
					LifeTime(0.7500);
					Position()
					{
						LifeTime(1.5000)
						Scale(0.0000);
					}
					Size(0)
					{
						LifeTime(0.7500)
						Scale(3.0000);
					}
					Color(0)
					{
						LifeTime(0.7500)
						Reach(0.0000,0.0000,0.0000,0.0000);
					}
				}
				Geometry()
				{
					BlendMode("ADDITIVE");
					Type("PARTICLE");
					Texture("boom4");
				}
				ParticleEmitter("Shrap")
				{
					MaxParticles(8.0000,8.0000);
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
						Circle()
						{
							PositionX(-3.0000,3.0000);
							PositionY(4.0000,6.0000);
							PositionZ(-3.0000,3.0000);
						}
						Offset()
						{
							PositionX(0.0000,0.0000);
							PositionY(-1.2000,-1.2000);
							PositionZ(0.0000,0.0000);
						}
						PositionScale(0.0000,0.0000);
						VelocityScale(6.0000,20.0000);
						InheritVelocityFactor(0.0000,0.0000);
						Size(0, 0.4500, 1.9500);
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
						LifeTime(3.0000);
						Position()
						{
							LifeTime(3.0000)
							Accelerate(0.0000, -30.0000, 0.0000);
						}
						Size(0)
						{
							LifeTime(1.0000)
						}
						Color(0)
						{
							LifeTime(0.2000)
						}
					}
					Geometry()
					{
						BlendMode("ADDITIVE");
						Type("EMITTER");
						Texture("flare0");
						ParticleEmitter("Smoke")
						{
							MaxParticles(0.0000,0.0000);
							StartDelay(0.0000,0.0000);
							BurstDelay(0.0500, 0.0500);
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
									PositionX(-0.3000,0.3000);
									PositionY(-0.3000,0.3000);
									PositionZ(-0.3000,0.3000);
								}
								Offset()
								{
									PositionX(-0.1500,0.1500);
									PositionY(-0.1500,0.1500);
									PositionZ(-0.1500,0.1500);
								}
								PositionScale(0.0000,0.0000);
								VelocityScale(3.0000,3.0000);
								InheritVelocityFactor(0.1000,0.1000);
								Size(0, 0.7500, 0.9000);
								Red(0, 249.0000, 249.0000);
								Green(0, 189.0000, 189.0000);
								Blue(0, 108.0000, 108.0000);
								Alpha(0, 255.0000, 255.0000);
								StartRotation(0, 0.0000, 360.0000);
								RotationVelocity(0, -45.0000, 45.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(3.0000);
								Position()
								{
									LifeTime(3.0000)
									Accelerate(0.0000, -3.0000, 0.0000);
								}
								Size(0)
								{
									LifeTime(1.5000)
									Scale(6.0000);
									Next()
									{
										LifeTime(1.5000)
										Scale(2.0000);
									}
								}
								Color(0)
								{
									LifeTime(0.5000)
									Reach(154.0000,104.0000,37.0000,240.0000);
									Next()
									{
										LifeTime(2.5000)
										Reach(49.0000,49.0000,49.0000,0.0000);
									}
								}
							}
							Geometry()
							{
								BlendMode("NORMAL");
								Type("PARTICLE");
								Texture("thicksmoke1");
							}
							ParticleEmitter("Fire_Norm")
							{
								MaxParticles(0.0000,0.0000);
								StartDelay(0.0000,0.0000);
								BurstDelay(0.0500, 0.0500);
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
										PositionX(-0.3000,0.3000);
										PositionY(-0.3000,0.3000);
										PositionZ(-0.3000,0.3000);
									}
									Offset()
									{
										PositionX(-0.1500,0.1500);
										PositionY(-0.1500,0.1500);
										PositionZ(-0.1500,0.1500);
									}
									PositionScale(0.0000,0.0000);
									VelocityScale(3.0000,3.0000);
									InheritVelocityFactor(0.3000,0.3000);
									Size(0, 0.1500, 0.2500);
									Red(0, 200.0000, 200.0000);
									Green(0, 200.0000, 200.0000);
									Blue(0, 200.0000, 200.0000);
									Alpha(0, 0.0000, 0.0000);
									StartRotation(0, 0.0000, 360.0000);
									RotationVelocity(0, -45.0000, 45.0000);
									FadeInTime(0.0000);
								}
								Transformer()
								{
									LifeTime(1.0000);
									Position()
									{
										LifeTime(1.0000)
										Scale(0.0000);
									}
									Size(0)
									{
										LifeTime(1.0000)
										Scale(4.0000);
									}
									Color(0)
									{
										LifeTime(0.1000)
										Reach(200.0000,200.0000,200.0000,255.0000);
										Next()
										{
											LifeTime(0.9000)
											Reach(10.0000,10.0000,10.0000,0.0000);
										}
									}
								}
								Geometry()
								{
									BlendMode("NORMAL");
									Type("PARTICLE");
									Texture("boom4");
								}
								ParticleEmitter("Fire_Add")
								{
									MaxParticles(100.0000,100.0000);
									StartDelay(0.0000,0.0000);
									BurstDelay(0.0500, 0.0500);
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
											PositionX(-0.3000,0.3000);
											PositionY(-0.3000,0.3000);
											PositionZ(-0.3000,0.3000);
										}
										Offset()
										{
											PositionX(0.0000,0.0000);
											PositionY(0.0000,0.0000);
											PositionZ(0.0000,0.0000);
										}
										PositionScale(0.0000,0.0000);
										VelocityScale(3.0000,3.0000);
										InheritVelocityFactor(0.3000,0.3000);
										Size(0, 0.1000, 0.2000);
										Red(0, 255.0000, 255.0000);
										Green(0, 255.0000, 255.0000);
										Blue(0, 255.0000, 255.0000);
										Alpha(0, 255.0000, 255.0000);
										StartRotation(0, 0.0000, 360.0000);
										RotationVelocity(0, -45.0000, 45.0000);
										FadeInTime(0.0000);
									}
									Transformer()
									{
										LifeTime(0.2000);
										Position()
										{
											LifeTime(0.2000)
										}
										Size(0)
										{
											LifeTime(0.2000)
											Scale(3.0000);
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
					ParticleEmitter("Flare")
					{
						MaxParticles(10.0000,10.0000);
						StartDelay(0.0000,0.0000);
						BurstDelay(0.0001, 0.0001);
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
							Size(0, 3.0000, 6.0000);
							Red(0, 255.0000, 255.0000);
							Green(0, 228.0000, 255.0000);
							Blue(0, 136.0000, 255.0000);
							Alpha(0, 64.0000, 64.0000);
							StartRotation(0, 0.0000, 10.0000);
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
								LifeTime(0.4000)
								Scale(0.5000);
							}
							Color(0)
							{
								LifeTime(0.3000)
								Reach(255.0000,255.0000,255.0000,0.0000);
							}
						}
						Geometry()
						{
							BlendMode("ADDITIVE");
							Type("BILLBOARD");
							Texture("cs_flare1");
						}
						ParticleEmitter("Flare")
						{
							MaxParticles(3.0000,3.0000);
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
								Size(0, 0.3000, 0.9000);
								Red(0, 255.0000, 255.0000);
								Green(0, 128.0000, 228.0000);
								Blue(0, 0.0000, 64.0000);
								Alpha(0, 200.0000, 200.0000);
								StartRotation(0, 0.0000, 10.0000);
								RotationVelocity(0, 0.0000, 0.0000);
								FadeInTime(0.0000);
							}
							Transformer()
							{
								LifeTime(0.4000);
								Position()
								{
									LifeTime(1.0000)
								}
								Size(0)
								{
									LifeTime(0.4000)
									Scale(8.0000);
								}
								Color(0)
								{
									LifeTime(0.4000)
									Reach(255.0000,255.0000,255.0000,0.0000);
								}
							}
							Geometry()
							{
								BlendMode("ADDITIVE");
								Type("PARTICLE");
								Texture("whitesmoke");
							}
							ParticleEmitter("Sparks")
							{
								MaxParticles(50.0000,100.0000);
								StartDelay(0.0000,0.0000);
								BurstDelay(0.0001, 0.0001);
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
										PositionX(-0.1000,0.1000);
										PositionY(0.0000,0.2000);
										PositionZ(-0.1000,0.1000);
									}
									Offset()
									{
										PositionX(0.0000,0.0000);
										PositionY(0.0000,0.0000);
										PositionZ(0.0500,0.0500);
									}
									PositionScale(0.0000,0.0000);
									VelocityScale(5.0000,13.0000);
									InheritVelocityFactor(0.0000,0.0000);
									Size(0, 0.0100, 0.1600);
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
									LifeTime(0.7500);
									Position()
									{
										LifeTime(0.7500)
										Accelerate(0.0000, -10.0000, 0.0000);
									}
									Size(0)
									{
										LifeTime(0.2000)
										Scale(1.0000);
									}
									Color(0)
									{
										LifeTime(0.0100)
										Reach(255.0000,244.0000,147.0000,128.0000);
										Next()
										{
											LifeTime(0.8900)
											Reach(242.0000,121.0000,0.0000,128.0000);
											Next()
											{
												LifeTime(0.1000)
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
								ParticleEmitter("Sparks")
								{
									MaxParticles(50.0000,100.0000);
									StartDelay(0.0000,0.0000);
									BurstDelay(0.0001, 0.0001);
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
											PositionX(-0.1000,0.1000);
											PositionY(0.0000,0.2000);
											PositionZ(-0.1000,0.1000);
										}
										Offset()
										{
											PositionX(0.0000,0.0000);
											PositionY(0.0000,0.0000);
											PositionZ(0.0500,0.0500);
										}
										PositionScale(0.0000,0.0000);
										VelocityScale(5.0000,13.0000);
										InheritVelocityFactor(0.0000,0.0000);
										Size(0, 0.0100, 0.1600);
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
										LifeTime(1.0000);
										Position()
										{
											LifeTime(1.0000)
											Accelerate(0.0000, -10.0000, 0.0000);
										}
										Size(0)
										{
											LifeTime(0.2000)
											Scale(1.0000);
										}
										Color(0)
										{
											LifeTime(0.0100)
											Reach(255.0000,244.0000,147.0000,128.0000);
											Next()
											{
												LifeTime(0.8900)
												Reach(242.0000,121.0000,0.0000,128.0000);
												Next()
												{
													LifeTime(0.1000)
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
		}
	}
}
