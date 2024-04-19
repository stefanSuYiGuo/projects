/**
 * This is an interface of any payer's information getter.
 */

/**
 * @author Stefan_SU
 *
 */
public interface Payer {

	// create a String getName() method in Payer interface to get name
	public String getName();

	// create an integer getDebt() method in Payer interface to get debt
	public int getDebt();

	// create a void pay() method with parameter integer amount in Payer interface to do pay action
	public void pay(int amount) throws NegativeSalaryException;
}
