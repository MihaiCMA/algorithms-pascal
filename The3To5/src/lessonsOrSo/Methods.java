package lessonsOrSo;

public class Methods {


	public static int x, y;

	public static void main(String[] args) {
		char bool= 'X';
		x = Number(7,9);
		System.out.println("X: " + x + ", Y:" + y);
		VoidExample();
		System.out.println(Number(Number(1,3),1) + " that was number, " + BooleanExample(bool));
		System.out.println("End of main method");
	}
	
	public static void VoidExample(){
		System.out.println("Void example called!");
	}
	
	public static int Number(int a,int b) {
		
		return a + b;
		
	}
	public static boolean BooleanExample(char bool){
		if (bool == 'X')
			return true;
		else
			return false;
	}
}
