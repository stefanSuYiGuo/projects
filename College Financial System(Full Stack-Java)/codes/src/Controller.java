/**
 * This is a Controller class
 */

/**
 * @author Stefan_SU
 *
 */
public class Controller {
	protected FinanceOffice m;// the protected variable m type FinanceOffice

	// Create a constructor
	public Controller(FinanceOffice m) {
		this.m = m;// Assign m
	}

	// Create a protected void method called shutdown
	protected void shutdown() {
		m.saveData();// call the saveData
		System.exit(0); // exit program in a normal way
	}
}
