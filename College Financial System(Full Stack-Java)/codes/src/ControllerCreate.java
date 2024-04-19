/**
 * 
 */

/**
 * @author asus_Pc
 *
 */
public class ControllerCreate extends Controller {

	public ControllerCreate(FinanceOffice m) {
		super(m);
	}
	
	public String create(String name, String amount, int type) {
		int money = Integer.parseInt(amount); // transform string to integer
		String ret = "";
		try {
			switch(type) {
			case 0:
				Student student = new Student(name, money);
				m.addPayer(student);
				ret = "";
				break;
			case 1:
				Employee employee = new Employee(name, money);
				m.addPayer(employee);
				ret = "";
				break;
			case 2:
				FacultyMember facultyMember = new FacultyMember(name, money);
				m.addPayer(facultyMember);
				ret = "";
				break;
			default:
				break;
			}
		} catch (NegativeSalaryException e) { // if salary of employ is negative
			return e.getMessage();
		} catch (NumberFormatException e) { // if input is not an integer
			return e.getMessage();
		}
		return ret;
	}
}
