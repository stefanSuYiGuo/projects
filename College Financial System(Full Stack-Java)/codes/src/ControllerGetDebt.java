/**
 * This is a ControllerGetDebt class extend from Controller class
 */

/**
 * @author Stefan_SU
 *
 */
public class ControllerGetDebt extends Controller {

	public ControllerGetDebt(FinanceOffice m) {// Create a constructor
		super(m);// assign m
	}

	// Create a String method called getDebt
	public String getDebt(String name) {
		try {
			String debt = Integer.toString(m.getDebt(name));// get debt
			return debt;// return debt
		} catch (UnknownPayerException e) {
			// TODO: handle exception
			// if the person is unknown, then output this sentence
			return "Payer " + name + " Unknow";
		}
	}
}
