package SomeRandomPackage;

public class ExampleAndOr {

	public static void main(String[] args) {
		int x, y;
		x = -10;
		y = 10;
		if(x > 0 && y > 0){
			 System.out.println("Amandoua sunt numere pozitive");			 
		}else if(x > 0 || y > 0){
			 System.out.println("Cel putin un numar este pozitiv"); 
		}else {System.out.println("Niciun numar nu este pozitiv");

	       }

      }
}
