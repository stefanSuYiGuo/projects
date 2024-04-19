/**
 * This is GUI class to run that code on the event dispatch thread.
 */

/**
 * @author Stefan_SU
 *
 */
public class GUI {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		javax.swing.SwingUtilities.invokeLater(new Runnable() {

			@Override
			public void run() {// Override run() method
				// TODO Auto-generated method stub
				// Create a new FinanceOffice object
				FinanceOffice finaceOffice = new FinanceOffice("UIC FO");

//				System.out.println("***********TESTING*************");
//				Student student = new Student("Stefan", 1000);
//				try {
//					Employee employee = new Employee("Constance", 50000);
//					finaceOffice.addPayer(employee);
//				} catch (NegativeSalaryException e) {
//					// TODO Auto-generated catch block
//					System.out.println(e.getMessage());
//				}
//				try {
//					FacultyMember facultyMember = new FacultyMember("Eli", 20000);
//					finaceOffice.addPayer(facultyMember);
//				} catch (NegativeSalaryException e) {
//					// TODO Auto-generated catch block
//					System.out.println(e.getMessage());
//				}
//				finaceOffice.addPayer(student);
//				System.out.println("*********END OF TESTING*********");

				// Create a new ControllerSimple object
				ControllerSimple controllerSimple = new ControllerSimple(finaceOffice);
				// Create a new ControllerGetDebt object
				ControllerGetDebt controllerGetDebt = new ControllerGetDebt(finaceOffice);
				// Create a new ControllerPay object
				ControllerPay controllerPay = new ControllerPay(finaceOffice);
				// Create a new ControllerCreate object
				ControllerCreate controllerCreate = new ControllerCreate(finaceOffice);
				// Create a new ControllerHistory object
				ControllerHistory controllerHistory = new ControllerHistory(finaceOffice);

				// Create a new ViewSimple object
				ViewSimple viewSimple = new ViewSimple(finaceOffice, controllerSimple);
				// Create a new ViewGetDebt object
				ViewGetDebt viewGetDebt = new ViewGetDebt(finaceOffice, controllerGetDebt);
				// Create a new ViewPay object
				ViewPay viewPay = new ViewPay(finaceOffice, controllerPay);
				// Create a new ViewCreate object
				ViewCreate viewCreate = new ViewCreate(finaceOffice, controllerCreate);
				// Create a new ViewHistory object
				ViewHistory viewHistory = new ViewHistory(finaceOffice, controllerHistory);
			}
		});
	}

}
