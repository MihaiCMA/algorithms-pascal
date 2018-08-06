package classandobject;

public class TestEmployee {

	public static void main(String[] args) {
		
/*		Employee alex, linda;
		
		alex = new Employee();
		linda = new Employee();
		john = new Employee();*/

		Employee alex = new Employee();
		Employee linda = new Employee();
		
		alex.salary = 90000;
		alex.bonus = 20000;
		alex.calculateTotalPay();
		
		linda.salary = 12;
		linda.bonus = 10;
		linda.calculateTotalPay();
		
		
		
	}

}
