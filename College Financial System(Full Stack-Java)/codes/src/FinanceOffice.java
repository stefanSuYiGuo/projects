import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

/**
 * This is a class called FinanceOffice
 */

/**
 * @author Stefan_Su
 *
 */
public class FinanceOffice implements Serializable {
	private String name;// define a String variable called name
	private ArrayList<Payer> payers;// define an ArrayList with Payer type called payers
	private ArrayList<ModelListener> listeners;// Declare an ArrayList with ModelListener type called listeners
	private ArrayList<Integer> history;// Declare an ArrayList with Integer type called history
	private File file;

	public FinanceOffice(String name) {// Create a constructor
		this.name = name;// assign name
		this.file = new File(name + ".bin");
		if(file.exists()) {
			try {
				FileInputStream fileInputStream = new FileInputStream(file);
				ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
				this.payers = (ArrayList<Payer>) objectInputStream.readObject();
				this.history = (ArrayList<Integer>) objectInputStream.readObject();
				objectInputStream.close();
				fileInputStream.close();
			} catch (IOException e) {
				// TODO: handle exception
				System.err.println(e.getMessage());
				System.exit(1);
			} catch (ClassNotFoundException e) {
				// TODO: handle exception
				System.err.println(e.getMessage());
				System.exit(1);
			}
		} else {
			payers = new ArrayList<Payer>();// initialize payers
			history = new ArrayList<Integer>();// initialize history
			// ArrayList must be initialized to contain only one value: zero (meaning that,
			// when the finance office is created, its total amount of debt is zero).
			history.add(0);
		}
		listeners = new ArrayList<ModelListener>();// initialize listeners
	}

	public void addListener(ModelListener l) {// Create a void method called addListener()
		this.listeners.add(l);// add a ModelListener to listeners
	}

	// Create a void method called addPayer()
	public void addPayer(Payer payer) {
		payers.add(payer);// Add a new payer
		// call the notifyListeners every time a change is made to the finance office's
		// data
		history.add(this.totalDebt());// Add this total debt into history to store
		notifyListeners();
	}

	public int totalDebt() {// Create an integer method called totalDebt()
		int totalDebt = 0;// Declare an integer variable called totalDebt
		for (Payer p : payers) {// Do an enhanced for loop
			totalDebt += p.getDebt();// Add debt together
		}
		return totalDebt;// return totalDebt
	}

	public int getDebt(String name) throws UnknownPayerException {// Create an integer method called getDebt()
		int flag = 0;// Declare an flag
		int thisDebt = 0;// Declare a integer variable called thisDebt
		for (Payer p : payers) {// Do an enhanced for loop
			if (p.getName().equals(name)) {// determine the name exists or not
				flag++;// change the flag
				thisDebt = p.getDebt();// set thisDebt as current index payer
				break;// jump out of the loop
			}
		}
		if (flag == 0) {// determine if the flag is 0
			throw new UnknownPayerException("Payer " + name + " unknown");// throw out a new UnknownPayerException
		}
		return thisDebt;// return thisDebt
	}

	// Create a void method called pay and throws UnknownPayerException and
	// NegativeSalaryException two exceptions
	public void pay(String name, int amount) throws UnknownPayerException, NegativeSalaryException {
		int flag = 0;// Declare an flag
		for (Payer p : payers) {// Do an enhanced for loop
			if (p.getName().equals(name)) {// determine the name exists or not
				flag++;// change the flag
				p.pay(amount);// call the pay() method of that payer to pay that amount of money to that payer
				history.add(this.totalDebt());// Add this total debt into history to store
				notifyListeners(); // use notifyListeners to let view know the changes of payers
				break;// jump out of the loop
			}
		}
		if (flag == 0) {// determine if the flag is 0
			throw new UnknownPayerException("Payer " + name + " unknown");// throw out a new UnknownPayerException
		}
	}

	private void notifyListeners() {// Create a void method called notifyListeners()
		for (ModelListener l : listeners) {
			l.update();// call update() method while any change happened in the arrayList
		}
	}

	public ArrayList<Integer> getHistory() {// Create an ArrayList<Integer> method called getHistory()
		return this.history;// return this.history
	}

	// call a method to save data
		public void saveData() {
			try {
				// Create FileOutputStream object fileOutputStream
				FileOutputStream fileOutputStream = new FileOutputStream(file);
				// Create ObjectOutputStream object objectOutputStream
				ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
				objectOutputStream.writeObject(payers); // Write the whole arrayList of payers
				objectOutputStream.writeObject(history); // Write the whole arrayList of history
				objectOutputStream.close();// close the Stream
				fileOutputStream.close();// close the Stream
			} catch (IOException e) { // catch IoException
				System.err.println(e.getMessage());// Show the exception message
				System.exit(1); // exit the program
			}
		}
	
	// Create a void method called testFinanceOffice()
	public static void testFinanceOffice() {
		System.out.println();
		System.out.println("=====Finance Office=====");
		// testing of FinaceOffice and related methods
		FinanceOffice finaceOffice = new FinanceOffice("Stefan");// Create a new FinanceOffice object
		Student student = new Student("Stefan", 80000);// Create a new Student object
		finaceOffice.addPayer(student);// Test addPayer() method
		try {
			Employee employee = new Employee("employee1", 10000);// Create a new Employee object
			finaceOffice.addPayer(employee);// Test addPayer() method
		} catch (NegativeSalaryException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());// output exception if needs
		}
		try {
			FacultyMember facultyMember = new FacultyMember("faculty1", 50000);// Create a new FacultyMember object
			finaceOffice.addPayer(facultyMember);// Test addPayer() method
		} catch (NegativeSalaryException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());// output exception if needs
		}
		// test totalDebt() method
		System.out.println("After adding student, employee and faculty with debt respectively, total debt is "
				+ finaceOffice.totalDebt());
		try {
			// test getDebt() method in this class
			System.out.println("Check: the debt of Stefan is " + finaceOffice.getDebt("Stefan"));// Student object
			System.out.println("Check: the debt of employee1 is " + finaceOffice.getDebt("employee1"));// Employee
																										// object
			System.out.println("Check: the debt of faculty1 is " + finaceOffice.getDebt("faculty1"));// Faculty object
			// Test an unknown name and check the exception shows or not
			System.out.println("Check: the debt of employee2 is " + finaceOffice.getDebt("employee2"));
		} catch (UnknownPayerException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		try {
			finaceOffice.pay("Stefan", 50000);// Student pays 50000 to UIC -> Test pay() method
			System.out.println("After Stefan pays 50000 to school, now he has debt: " + finaceOffice.getDebt("Stefan"));
			finaceOffice.pay("employee1", 5000);// UIC pays 5000 to Employee -> Test pay() method
			System.out.println(
					"After employee1 is paid 5000 from school, now he has debt: " + finaceOffice.getDebt("employee1"));
			finaceOffice.pay("faculty1", 40000);// UIC pays 40000 to Faculty -> Test pay() method
			System.out.println(
					"After faculty1 is paid 40000 from school, now he has debt: " + finaceOffice.getDebt("faculty1"));
			finaceOffice.pay("employee2", -40000);
		} catch (UnknownPayerException | NegativeSalaryException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());// output exception if needs
		}
	}
}
