import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 * This is ViewPay class that allows the user of the software to pay money to a specific payer.
 */

/**
 * @author Stefan_SU
 *
 */
public class ViewPay extends View<ControllerPay> {
	private JTextField t1;// Define JTextField variable t1
	private JTextField t2;// Define JTextField variable t2

	// Create a constructor
	public ViewPay(FinanceOffice m, ControllerPay c) {
		super(m, c);// assign m and c
		this.setTitle("View Pay");// set the title as "View Pay"
		this.setSize(450, 200);// Set the size of the frame as 450 * 200
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);// kill the program while closing it
		this.setLayout(new GridLayout(3, 1));// set the GridLayout as 3 * 1

		t1 = new JTextField("Type a payer name here");// initialize t1 with "Type a payer name here"
		t2 = new JTextField("Type an amount of money here");// initialize t2 with "Type an amount of money here"
		JButton button = new JButton("Pay");// Create a button with "Pay"

		this.add(t1);// Add t1
		this.add(t2);// Add t2
		this.add(button);// Add the button

		// Create an action listener
		button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {// Override the actionPerformed() method
				// TODO Auto-generated method stub
				String name = t1.getText();// Declare a String variable called name
				String amount = t2.getText();// Declare a String variable called amount
				String message = c.pay(name, amount);// Declare a String variable called message
				if (message != "") {// if the message is not empty
					// show message in a window
					JOptionPane.showMessageDialog(null, message, "Message", JOptionPane.INFORMATION_MESSAGE);
				}
			}
		});
		this.update();// Call update() method
		this.setVisible(true);// Set all the windows are visible
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		// do nothing
	}
}
