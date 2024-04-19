import java.io.Serializable;

/**
 * This is an extended class of Employee called FacultyMember
 */

/**
 * @author Stefan_SU
 *
 */
public class FacultyMember extends Employee implements Serializable {

	public FacultyMember(String name, int salary) throws NegativeSalaryException {
		super(name, salary);
	}

	public void pay(int amount) {// override a void method called pay
		this.setDebt(getDebt() + amount);// compute the salary UIC owes to employees
	}

	public static void testFacultyMember() {// Create a static void method called testFacultyMember()
		System.out.println();
		System.out.println("=====Faculty Member=====");
		// Testing FacultyMember objects and related methods
		try {
			// Create a FacultyMember object facultyMember with name and positive salary
			Person facultyMember = new FacultyMember("facultyMember", 10000);
			// test getName() method
			System.out.println("Faculty member's name is \"facultyMember\" is " + (facultyMember.getName() == "facultyMember"));
			// test getDebt() method
			System.out.println("Faculty has 10000 yuan as salary is " + (facultyMember.getDebt() == -10000));
			// Downcast facultyMember and test pay() method in this FacultyMember class
			((FacultyMember) facultyMember).pay(2000);
			// test debt is 8000 or not
			System.out.println("After pay 2000 yuan to faculty, faculty has 8000 yuan debt is " + (facultyMember.getDebt() == -8000));
			try {
				facultyMember.pay(2000);// call pay() method inherited from Employee class
				// test debt is 6000 or not
				System.out.println("After paying 2000 yuan to faculty, faculty has 6000 yuan debt is " + (facultyMember.getDebt() == -6000));
				facultyMember.pay(8000);// call the pay() method with overflow parameter
			} catch (NegativeSalaryException ex) {// call corresponding exception
				// test whether we get an over-paid exception or not
				System.out.println("If pay more than 6000, then show message is " + (ex.getMessage()).equals("An employee cannot be overpaid by 2000 yuans!"));
			}
			// Create an overflow FacultyMember object with salary -10000
			Person facultyMember1 = new FacultyMember("facultyMember1", -10000);
		} catch (NegativeSalaryException ex) {// call corresponding exception
			System.out.println("If salary is minus, then show message is " + (ex.getMessage()).equals("An employee cannot have a negative salary!"));
		}
	}
}
