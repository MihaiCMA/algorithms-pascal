package data;

public class First {

	Animal[] animals = new Animal[3];

	public First() {
		System.out.println("First class started!");
		animals[0] = new Animal("Cat", "Meow!");
		animals[1] = new Animal("Giraffe", "...");
		animals[2] = new Animal("Human", "blah blah");
		for (int i = 0; i < animals.length; i++)
			animals[i].MakeSound();

	}

	public static void main(String[] args) {
		new First();
	}
}
