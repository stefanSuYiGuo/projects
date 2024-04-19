import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * This is a Command Line Interface class
 */

/**
 * @author Stefan_SU
 *
 */
public class CLI {
	// Declare a private static variable input and use standard input
	private static Scanner input = new Scanner(System.in);

	/**
	 * @param args
	 */
	public static void main(String[] args) throws NegativeSalaryException, UnknownPayerException {
		// TODO Auto-generated method stub
		// Create a new FinanceOffice object with name "UIC FO"
		FinanceOffice financeOffice = new FinanceOffice("UIC FO");
		while (true) {
			// Store "Type an action (total:1 add:2 get:3 give:4 take:5 quit:6): " to a
			// String
			String str0 = "Type an action (total:1 add:2 get:3 give:4 take:5 quit:6): ";
			int action = readPosInt(str0);// Declare an integer variable to read the input integer
			// Do a switch-case for the option
			switch (action) {
			case 1:
				// output the total debt
				System.out.println("Total amount of debt: " + financeOffice.totalDebt());
				break;
			case 2:
				// Store "Enter the payer type (Student:1 employee:2 faculty member:3): " into
				// str1
				String str1 = "Enter the payer type (Student:1 employee:2 faculty member:3): ";
				// Declare an integer variable to read the input integer
				int subAction = readPosInt(str1);
				// Judge the input integer is valid or not
				if (subAction < 1) {
					// show the message if it is negative
					System.out.println("Positive integers only!");
					break;
				} else if (subAction > 3) { // if it is larger than action number 3
					// show the message "Unknown type of payer!"
					System.out.println("Unknown type of payer!");
					break;
				} else { // while it is valid input
					// Store "Enter the name of the payer: " into a string
					String str2 = "Enter the name of the payer: ";
					// Store "Enter the initial amount of money: " into a string
					String str3 = "Enter the initial amount of money: ";
					switch (subAction) {// Do a switch-case
					case 1:
						String name1 = readLine(str2); // call readLine() method and read a name
						int debt1 = readPosInt(str3);// call reaPosInt() method and read an action number
						Student student = new Student(name1, debt1);// Declare a Student object
						financeOffice.addPayer(student);// add the object into financeOffice
						// Output the corresponding message
						System.out.println("Student \"" + name1 + "\" with " + debt1 + " yuan of debt added");
						break;
					case 2:
						String name2 = readLine(str2);// call readLine() method and read a name
						int salary = readPosInt(str3);// call reaPosInt() method and read an action number
						try {
							Employee employee = new Employee(name2, salary);// Declare an Employee object
							financeOffice.addPayer(employee);// add the object into financeOffice
							// Output the corresponding message
							System.out.println("Employee \"" + name2 + "\" with " + salary + " yuan of salary added");
						} catch (NegativeSalaryException e) {
							// TODO: handle exception
							// while it is a negative input, show this message
							System.out.println("BUG! This must never happen!");
							System.exit(1);// kill the program and exit
						}
						break;
					case 3:
						String name3 = readLine(str2);// call readLine() method and read a name
						int salary1 = readPosInt(str3);// call reaPosInt() method and read an action number
						try {
							FacultyMember facultyMember = new FacultyMember(name3, salary1);
							financeOffice.addPayer(facultyMember);// add the object into financeOffice
							// Output the corresponding message
							System.out.println(
									"Faculty member \"" + name3 + "\" with " + salary1 + " yuan of salary added");
						} catch (NegativeSalaryException e) {
							// TODO: handle exception
							// while it is a negative input, show this message
							System.out.println("BUG! This must never happen!");
							System.exit(1);// kill the program and exit
						}
					default:
						break;
					}
				}
				break;
			case 3:
				// Store "Enter the name of the payer: " into a string
				String str4 = "Enter the name of the payer: ";
				String name4 = readLine(str4);// call readLine() method and read a name
				try {
					// call getDebt() method and output corresponding method
					System.out.println(name4 + " has " + financeOffice.getDebt(name4) + " yuans of debt");
				} catch (UnknownPayerException e) {
					// TODO: handle exception
					System.out.println(e.getMessage());// show the corresponding message
				}
				break;
			case 4:
				// Store "Enter the name of the payer: " into a string
				String str5 = "Enter the name of the payer: ";
				// Store "Enter the amount of money: " into a string
				String str6 = "Enter the amount of money: ";
				String name5 = readLine(str5);
				int amount1 = readPosInt(str6);
				try {
					financeOffice.pay(name5, amount1);
				} catch (UnknownPayerException e) {
					// TODO: handle exception
					System.out.println(e.getMessage());// show the corresponding message
				} catch (NegativeSalaryException e) {
					// TODO: handle exception
					System.out.println(e.getMessage());// show the corresponding message
				}
				break;
			case 5:
				// Store "Enter the name of the payer: " into a string
				String str7 = "Enter the name of the payer: ";
				String str8 = "Enter the amount of money: ";
				String name6 = readLine(str7);// call readLine() method and read a name
				// call reaPosInt() method and read an amount number and set it as negative
				int amount2 = -readPosInt(str8);
				try {
					financeOffice.pay(name6, amount2);// call pay() method
				} catch (UnknownPayerException e) {
					// TODO: handle exception
					System.out.println(e.getMessage());// show the corresponding message
				} catch (NegativeSalaryException e) {
					// TODO: handle exception
					System.out.println("BUG! This must never happen!");// show the corresponding message
					System.exit(1);// kill the program and exit
				}
				break;
			case 6:
				financeOffice.saveData();// Call the saveData() method
				System.out.println("Goodbye!");// show the corresponding message "Goodbye"
				System.exit(0);// kill the program and exit
				break;
			default:
				// show the corresponding message "Unknown action!"
				System.out.println("Unknown action!");
				break;
			}

		}
	}

	// Create a private static String method called readLine()
	private static String readLine(String inputStr) {
		System.out.print(inputStr);// print the initial sentence
		String inputMessage = input.nextLine();// read the String input
		return inputMessage;// return inputMessage
	}

	// Create a private static integer method called readPosInt()
	private static int readPosInt(String inputInt) {
		while (true) {
			System.out.print(inputInt);// output the initial message
			int inputInteger = 0;// initialize inputInteger as 0
			try {
				inputInteger = input.nextInt();// get the integer as input
			} catch (InputMismatchException e) {// determine it is an exception or not
				// TODO: handle exception
				System.out.println("You must type a integer!");// show the wrong message
				input.nextLine();// if wrong, get the next input
				continue;// end this time's while loop and start next loop
			}
			input.nextLine();// if wrong, get the next input
			if (inputInteger < 0) {// Determine the inputInteger is larger than or equal to 0
				System.out.println("Positive integers only!");// show the wrong message
			} else {
				return inputInteger;// return the inputInteger
			}
		}
	}

}
