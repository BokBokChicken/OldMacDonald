void setup()
{
	Farm a = new Farm();
	a.animalSounds();
}
interface Animal
{
	public String getSound();
	public String getType();
}
class Cow implements Animal
{
	protected String cSound, cType;
	public Cow(String type, String sound)
	{
		cSound = sound;
		cType = type;
	}
	public Cow()
	{
		cSound = "unknown";
		cType = "unknown";
	}
	public String getSound()
	{
		return cSound;
	}
	public String getType()
	{
		return cType;
	}
}
class Chick implements Animal
{
	private String chSound, chType;
	public Chick(String type, String sound)
	{
		chSound = sound;
		chType = type;
	}
	public Chick(String type, String soundOne, String soundTwo)
	{
		chType = type;
		if(Math.random() < .5)
		{
			chSound = soundOne;
		}
		else
		{
			chSound = soundTwo;
		}
	}
	public String getSound()
	{
		return chSound;
	}
	public String getType()
	{
		return chType;
	}
}
class Pig implements Animal
{
	private String pSound, pType;
	public Pig(String type, String sound)
	{
		pSound = sound;
		pType = type;
	}
	public String getSound()
	{
		return pSound;
	}
	public String getType()
	{
		return pType;
	}
}
class Farm
{
	private Animal[] aBunchOfAnimals = new Animal[3];
	public Farm()
	{
		aBunchOfAnimals[0] = new NamedCow("cow", "Elsie", "moo");
		aBunchOfAnimals[1] = new Chick("chick","cluck","cheep");
		aBunchOfAnimals[2] = new Pig("pig","oink");
	}
	public void animalSounds()
	{
		for(int i = 0; i < aBunchOfAnimals.length; i++)
		{
			System.out.println(aBunchOfAnimals[i].getType() + " goes " + aBunchOfAnimals[i].getSound());
		}
		System.out.println("The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName());
	}
}
class NamedCow extends Cow
{
	String ncName;
	NamedCow(String type, String name, String sound)
	{
		ncName = name;
		cType = type;
		cSound = sound;
	}
	public String getName()
	{
		return ncName;
	}
}
