ParticleEmitter("Sparks")
{
	MaxParticles(5.0000,5.0000);
	StartDelay(0.0000,0.0000);
	BurstDelay(0.0100, 0.0100);
	BurstCount(5.0000,5.0000);
	MaxLodDist(1000.0000);
	MinLodDist(600.0000);
	SoundName("")
	BoundingRadius(20.0);
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
			PositionY(-0.0500,0.0500);
			PositionZ(-0.0500,0.0500);
		}
		Offset()
		{
			PositionX(0.0000,0.0000);
			PositionY(0.0000,0.0000);
			PositionZ(0.0000,0.0000);
		}
		PositionScale(0.0000,0.0000);
		VelocityScale(0.5000,0.5000);
		InheritVelocityFactor(0.0000,0.0000);
		Size(0, 0.0030, 0.0130);
		Red(0, 100.0000, 100.0000);
		Green(0, 100.0000, 100.0000);
		Blue(0, 255.0000, 255.0000);
		Alpha(0, 255.0000, 255.0000);
		StartRotation(0, 0.0000, 360.0000);
		RotationVelocity(0, 0.0000, 0.0000);
		FadeInTime(0.0000);
	}
	Transformer()
	{
		LifeTime(0.3000);
		Position()
		{
			LifeTime(0.3000)
			Accelerate(0.0000, -1.2500, 0.0000);
		}
		Size(0)
		{
			LifeTime(0.1000)
			Scale(12.0000);
			Next()
			{
				LifeTime(0.2000)
				Scale(2.0000);
			}
		}
		Color(0)
		{
			LifeTime(0.2000)
			Move(0.0000,0.0000,0.0000,0.0000);
			Next()
			{
				LifeTime(0.1000)
				Reach(0.0000,0.0000,0.0000,0.0000);
			}
		}
	}
	Geometry()
	{
		BlendMode("ADDITIVE");
		Type("PARTICLE");
		Texture("flare0");
	}
	ParticleEmitter("Sparks")
	{
		MaxParticles(10.0000,10.0000);
		StartDelay(0.0000,0.0000);
		BurstDelay(0.0100, 0.0100);
		BurstCount(10.0000,10.0000);
		MaxLodDist(1000.0000);
		MinLodDist(600.0000);
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
				PositionX(-0.0200,0.0200);
				PositionY(0.0100,0.0500);
				PositionZ(-0.0200,0.0200);
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
			Size(0, 0.0030, 0.0130);
			Red(0, 200.0000, 200.0000);
			Green(0, 100.0000, 100.0000);
			Blue(0, 200.0000, 255.0000);
			Alpha(0, 255.0000, 255.0000);
			StartRotation(0, 0.0000, 360.0000);
			RotationVelocity(0, 0.0000, 0.0000);
			FadeInTime(0.0000);
		}
		Transformer()
		{
			LifeTime(0.3000);
			Position()
			{
				LifeTime(0.3000)
				Accelerate(0.0000, -1.2500, 0.0000);
			}
			Size(0)
			{
				LifeTime(0.1000)
				Scale(12.0000);
				Next()
				{
					LifeTime(0.4000)
					Scale(2.0000);
				}
			}
			Color(0)
			{
				LifeTime(0.2000)
				Move(0.0000,0.0000,0.0000,0.0000);
				Next()
				{
					LifeTime(0.1000)
					Reach(0.0000,0.0000,0.0000,0.0000);
				}
			}
		}
		Geometry()
		{
			BlendMode("ADDITIVE");
			Type("PARTICLE");
			Texture("flare0");
		}
		ParticleEmitter("Flare")
		{
			MaxParticles(3.0000,3.0000);
			StartDelay(0.0000,0.0000);
			BurstDelay(0.1000, 0.1000);
			BurstCount(3.0000,3.0000);
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
				Size(0, 0.1000, 0.1000);
				Red(0, 100.0000, 100.0000);
				Green(0, 0.0000, 0.0000);
				Blue(0, 255.0000, 255.0000);
				Alpha(0, 200.0000, 200.0000);
				StartRotation(0, 0.0000, 360.0000);
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
					Scale(10.0000);
				}
				Color(0)
				{
					LifeTime(0.2000)
					Reach(255.0000,0.0000,255.0000,0.0000);
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
