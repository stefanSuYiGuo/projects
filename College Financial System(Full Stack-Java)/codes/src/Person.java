import java.io.Serializable;

/**
 * This is a Person class 
 */

/**
 * @author Stefan_SU
 *
 */
public abstract class Person implements Payer, Serializable {
	private String name;// define a String variable called name
	private int debt;// define an integer variable called debt

	public Person(String name, int debt) {// create a constructor Person
		this.name = name;// assign name
		this.debt = debt;// assign debt
	}

	@Override
	public String getName() {// override the String method called getName()
		return name;// return the name
	}

	@Override
	public int getDebt() {// override the integer method called getDebt()
		return debt;// return the debt
	}

	@Override
	// Create an abstract void method called pay
	public abstract void pay(int amount) throws NegativeSalaryException;// Because we don't know which kind of person it is

	// Create a protected void method called seDebt()
	protected void setDebt(int debt) {// Because only subclass of Person class can use this method
		this.debt = debt;// set variable as this parameter
	}

	public static void testPerson() {// Create a static void method called testPerson()
		System.out.println();
		System.out.println("=====Person=====");
	}
}
