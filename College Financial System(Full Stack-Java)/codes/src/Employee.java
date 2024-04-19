import java.io.Serializable;

/**
 * This is an extended class of Person class called Employee
 */

/**
 * @author Stefan_SU
 *
 */
public class Employee extends Person implements Serializable {

	// Create a constructor Employee and throw NegativeSalaryException
	public Employee(String name, int salary) throws NegativeSalaryException {
		super(name, (-1) * salary);// assign name and salary
		if (salary < 0) {// determine whether salary is less than 0
			throw new NegativeSalaryException("An employee cannot have a negative salary!");// throw an exception
		}
	}

	@Override
	public void pay(int amount) throws NegativeSalaryException {// override a void method called pay
		if (getDebt() + amount > 0) {// determine whether employee is over-paid
			// throw new NegativeSalaryException
			throw new NegativeSalaryException("An employee cannot be overpaid by " + (amount + getDebt()) + " yuans!");
		}
		this.setDebt(getDebt() + amount);// compute the salary UIC owes to employees
		// Although getDebt() - amount is equal to -(-getDebt() + amount), the mean of them is different
	}

	public static void testEmployee() {// Create a static void method called testEmployee()
		System.out.println();
		System.out.println("=====Employee=====");
		// Testing Employee objects and related methods
		try {
			// Create an Employee object with name and salary
			Person employee = new Employee("employee", 10000);
			System.out.println("Employee's name is \"employee\" is " + (employee.getName()).equals("employee"));// test getName() method
			System.out.println("Employee has 10000 yuan debt is " + (employee.getDebt() == -10000));// test getDebt() method
			try {
				employee.pay(2000);// call override method pay()
				// test UIC should pay employee 8000 yuans or not
				System.out.println("After pay 2000 yuan salary, school still owns employee 8000 is " + (employee.getDebt() == -8000));
				employee.pay(9000);// call override method pay() with overflow parameter
			} catch (NegativeSalaryException ex) {// call corresponding exception
				// test whether we get an over-paid exception or not
				System.out.println("If school give employee 9000 yuan, then show message is " + (ex.getMessage()).equals("An employee cannot be overpaid by 1000 yuans!"));
			}
			// Create an overflow Employee object with salary -100
			Person employee1 = new Employee("employ1", -100);
		} catch (NegativeSalaryException e) {// call corresponding exception
			// test whether we get an negative warning
			System.out.println("If the salary is less than 0, then show message is " + (e.getMessage()).equals("An employee cannot have a negative salary!"));
		}
	}
}
