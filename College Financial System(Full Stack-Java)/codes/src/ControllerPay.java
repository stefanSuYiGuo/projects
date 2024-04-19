/**
 * This is a ControllerPay class that extends Controller 
 */

/**
 * @author Stefan_SU
 *
 */
public class ControllerPay extends Controller {

	public ControllerPay(FinanceOffice m) {// Create a constructor
		super(m);// assign m
	}

	// Create a String method called pay()
	public String pay(String name, String amount) {
		try {
			int money = Integer.parseInt(amount);// Declare an integer variable money
			m.pay(name, money);// do the pay() method
			return "";// return nothing
		} catch (UnknownPayerException e) {// If this payer is unknown
			// TODO: handle exception
			return e.getMessage();// return the message
		} catch (NegativeSalaryException e) {// If this is negative amount of salary
			// TODO: handle exception
			return e.getMessage();// return the message
		} catch (NumberFormatException e) {// If it is not an integer
			// TODO: handle exception
			return e.getMessage();// return the message
		}
	}
}
