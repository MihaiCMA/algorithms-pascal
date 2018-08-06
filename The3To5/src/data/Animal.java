package data;

public class Animal {
	
	private String sound;
	
	public Animal(String newName, String newSound) {
		System.out.println("Animal created!");
		sound = newSound;
	}

	
	public void MakeSound(){
		 System.out.println(sound);
	}
}
