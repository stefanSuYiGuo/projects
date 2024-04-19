import java.io.Serializable;

/**
 * This is an extended class of Person class called Student
 */

/**
 * @author Stefan_SU
 *
 */
public class Student extends Person implements Serializable {

	// Create a constructor Student with String name and integer debt
	public Student(String name, int debt) {
		super(name, debt);// assign name and debt via inheriting from Person class
	}

	@Override
	// Override a void method called pay to decrease the amount of debt that the
	// student has
	public void pay(int amount) {
		// set debt via getting the amount of debt and minus it with amount and then
		// assign it to setDebt()
		super.setDebt(getDebt() - amount);
	}

	public static void testStudent() {// Create a static void method called testStudent()
		System.out.println();
		System.out.println("=====Student=====");
		// testing Student object and related methods
		Person student = new Student("Stefan", 10000);// create a Student object student and initialize it
		System.out.println((student.getName()).equals("Stefan"));// test getName() method
		System.out.println(student.getDebt() == 10000);// test getDebt() method
		((Student)student).pay(5000);// call pay() method
		System.out.println(student.getDebt() == 5000);// test pay() method works or not and debt should be 5000
		student.setDebt(80000);// call setDebt() method
		System.out.println(student.getDebt() == 80000);// test setDebt() method works or not and debt should be 80000
	}
}
