ParticleEmitter("explosion")
{
	MaxParticles(20.00,20.00);
	StartDelay(0.00,0.10);
	BurstDelay(0.10, 0.10);
	BurstCount(200.00,200.00);
	Size(1.00, 1.00);
	Hue(255.00, 255.00);
	Saturation(255.00, 255.00);
	Value(255.00, 255.00);
	Alpha(255.00, 255.00);
	Spawner()
	{
		Circle()
		{
			PositionX(-1.00,1.00);
			PositionY(-0.50,1.50);
			PositionZ(-1.00,1.00);
		}
		Offset()
		{
			PositionX(0.00,0.00);
			PositionY(0.00,0.00);
			PositionZ(0.00,0.00);
		}
		PositionScale(2.00,2.00);
		VelocityScale(4.00,5.00);
		Size(0, 2.00, 3.00);
		Red(0, 255.00, 255.00);
		Green(0, 100.00, 100.00);
		Blue(0, 0.00, 0.00);
		Alpha(0, 200.00, 200.00);
		StartRotation(0, 0.00, 360.00);
		RotationVelocity(0, -20.00, 20.00);
		FadeInTime(0.00);
	}
	Transformer()
	{
		LifeTime(4.00);
		Position()
		{
			LifeTime(1.20)
			Reach(0.00, 2.00, 0.00);
		}
		Size(0)
		{
			LifeTime(0.20)
			Scale(2.00);
			Next()
			{
				LifeTime(4.00)
				Scale(0.25);
			}
		}
		Color(0)
		{
			LifeTime(1.00)
			Reach(255.00,255.00,255.00,80.00);
			Next()
			{
				LifeTime(2.60)
				Reach(200.00,200.00,200.00,0.00);
			}
		}
	}
	Geometry()
	{
		Texture("litsmoke");
		BlendMode("NORMAL");
		Type("PARTICLE");
	}
	ParticleEmitter("DirtSpray")
	{
		MaxParticles(80.00,100.00);
		StartDelay(0.00,0.00);
		BurstDelay(0.00, 4.00);
		BurstCount(100.00,100.00);
		Size(1.00, 1.00);
		Hue(255.00, 255.00);
		Saturation(255.00, 255.00);
		Value(255.00, 255.00);
		Alpha(255.00, 255.00);
		Spawner()
		{
			Spread()
			{
				PositionX(-1.00,1.00);
				PositionY(0.20,3.00);
				PositionZ(-1.00,1.00);
			}
			Offset()
			{
				PositionX(-1.00,1.00);
				PositionY(-1.00,1.00);
				PositionZ(1.00,1.00);
			}
			PositionScale(0.00,0.00);
			VelocityScale(5.00,10.00);
			Size(0, 0.80, 1.00);
			Red(0, 0.00, 0.00);
			Green(0, 0.00, 0.00);
			Blue(0, 0.00, 0.00);
			Alpha(0, 100.00, 100.00);
			StartRotation(0, 0.00, 360.00);
			RotationVelocity(0, -200.00, 200.00);
			FadeInTime(0.00);
		}
		Transformer()
		{
			LifeTime(3.00);
			Position()
			{
				LifeTime(3.00)
				Accelerate(0.00, -50.00, 0.00);
			}
			Size(0)
			{
				LifeTime(2.00)
				Scale(0.10);
			}
			Color(0)
			{
				LifeTime(2.00)
				Reach(0.00,0.00,0.00,0.00);
			}
		}
		Geometry()
		{
			Texture("dirtspray");
			BlendMode("NORMAL");
			Type("PARTICLE");
		}
		ParticleEmitter("Fire")
		{
			MaxParticles(25.00,30.00);
			StartDelay(0.00,0.00);
			BurstDelay(0.10, 0.10);
			BurstCount(200.00,200.00);
			Size(1.00, 1.00);
			Hue(255.00, 255.00);
			Saturation(255.00, 255.00);
			Value(255.00, 255.00);
			Alpha(255.00, 255.00);
			Spawner()
			{
				Circle()
				{
					PositionX(-1.00,1.00);
					PositionY(-1.00,1.00);
					PositionZ(-1.00,1.00);
				}
				Offset()
				{
					PositionX(0.00,0.00);
					PositionY(0.00,0.00);
					PositionZ(0.00,0.00);
				}
				PositionScale(1.00,1.00);
				VelocityScale(10.00,15.00);
				Size(0, 1.00, 2.00);
				Red(0, 255.00, 255.00);
				Green(0, 200.00, 200.00);
				Blue(0, 200.00, 200.00);
				Alpha(0, 150.00, 150.00);
				StartRotation(0, 0.00, 360.00);
				RotationVelocity(0, -100.00, 100.00);
				FadeInTime(0.00);
			}
			Transformer()
			{
				LifeTime(1.50);
				Position()
				{
					LifeTime(1.00)
				}
				Size(0)
				{
					LifeTime(0.30)
					Scale(2.00);
				}
				Color(0)
				{
					LifeTime(0.15)
					Reach(255.00,100.00,100.00,150.00);
					Next()
					{
						LifeTime(0.30)
						Reach(0.00,0.00,0.00,0.00);
					}
				}
			}
			Geometry()
			{
				Texture("explode3");
				BlendMode("ADDITIVE");
				Type("PARTICLE");
			}
			ParticleEmitter("Flare")
			{
				MaxParticles(2.00,2.00);
				StartDelay(0.00,0.00);
				BurstDelay(0.00, 0.00);
				BurstCount(1.00,1.00);
				Size(1.00, 1.00);
				Hue(255.00, 255.00);
				Saturation(255.00, 255.00);
				Value(255.00, 255.00);
				Alpha(255.00, 255.00);
				Spawner()
				{
					Spread()
					{
						PositionX(0.00,0.00);
						PositionY(0.00,0.00);
						PositionZ(0.00,0.00);
					}
					Offset()
					{
						PositionX(-1.00,1.00);
						PositionY(-1.00,1.00);
						PositionZ(0.00,1.00);
					}
					PositionScale(0.00,0.00);
					VelocityScale(0.00,0.00);
					Size(0, 8.00, 13.00);
					Red(0, 255.00, 255.00);
					Green(0, 200.00, 255.00);
					Blue(0, 50.00, 200.00);
					Alpha(0, 255.00, 255.00);
					StartRotation(0, 0.00, 360.00);
					RotationVelocity(0, 0.00, 0.00);
					FadeInTime(0.00);
				}
				Transformer()
				{
					LifeTime(0.50);
					Position()
					{
						LifeTime(1.00)
					}
					Size(0)
					{
						LifeTime(0.10)
						Scale(4.00);
					}
					Color(0)
					{
						LifeTime(0.10)
						Reach(255.00,200.00,0.00,0.00);
					}
				}
				Geometry()
				{
					Texture("exploflare");
					BlendMode("ADDITIVE");
					Type("PARTICLE");
				}
				ParticleEmitter("Shockwave")
				{
					MaxParticles(1.00,1.00);
					StartDelay(0.00,0.00);
					BurstDelay(0.00, 0.00);
					BurstCount(1.00,1.00);
					Size(1.00, 1.00);
					Hue(255.00, 255.00);
					Saturation(255.00, 255.00);
					Value(255.00, 255.00);
					Alpha(255.00, 255.00);
					Spawner()
					{
						Spread()
						{
							PositionX(0.00,0.00);
							PositionY(0.00,0.00);
							PositionZ(0.00,0.00);
						}
						Offset()
						{
							PositionX(-1.00,1.00);
							PositionY(-1.00,1.00);
							PositionZ(0.00,1.00);
						}
						PositionScale(0.00,0.00);
						VelocityScale(0.00,0.00);
						Size(0, 8.00, 13.00);
						Red(0, 255.00, 255.00);
						Green(0, 255.00, 255.00);
						Blue(0, 200.00, 255.00);
						Alpha(0, 25.00, 25.00);
						StartRotation(0, 0.00, 360.00);
						RotationVelocity(0, 0.00, 0.00);
						FadeInTime(0.00);
					}
					Transformer()
					{
						LifeTime(0.50);
						Position()
						{
							LifeTime(1.00)
						}
						Size(0)
						{
							LifeTime(0.30)
							Scale(12.00);
						}
						Color(0)
						{
							LifeTime(0.30)
							Reach(255.00,255.00,100.00,0.00);
						}
					}
					Geometry()
					{
						Texture("flare4");
						BlendMode("ADDITIVE");
						Type("PARTICLE");
					}
					ParticleEmitter("Fire")
					{
						MaxParticles(50.00,55.00);
						StartDelay(0.05,0.15);
						BurstDelay(0.10, 0.10);
						BurstCount(200.00,200.00);
						Size(1.00, 1.00);
						Hue(255.00, 255.00);
						Saturation(255.00, 255.00);
						Value(255.00, 255.00);
						Alpha(255.00, 255.00);
						Spawner()
						{
							Circle()
							{
								PositionX(-4.00,4.00);
								PositionY(-4.00,4.00);
								PositionZ(-4.00,4.00);
							}
							Offset()
							{
								PositionX(0.00,0.00);
								PositionY(0.00,0.00);
								PositionZ(0.00,0.00);
							}
							PositionScale(2.00,2.00);
							VelocityScale(2.00,2.50);
							Size(0, 0.10, 2.10);
							Red(0, 255.00, 255.00);
							Green(0, 150.00, 150.00);
							Blue(0, 200.00, 200.00);
							Alpha(0, 0.00, 0.00);
							StartRotation(0, 200.00, 560.00);
							RotationVelocity(0, -180.00, 180.00);
							FadeInTime(0.00);
						}
						Transformer()
						{
							LifeTime(2.50);
							Position()
							{
								LifeTime(2.50)
							}
							Size(0)
							{
								LifeTime(0.30)
								Scale(1.50);
							}
							Color(0)
							{
								LifeTime(0.15)
								Reach(255.00,75.00,50.00,200.00);
								Next()
								{
									LifeTime(1.30)
									Reach(0.00,0.00,0.00,0.00);
								}
							}
						}
						Geometry()
						{
							Texture("explode3");
							BlendMode("ADDITIVE");
							Type("PARTICLE");
						}
					}
				}
			}
		}
	}
}
