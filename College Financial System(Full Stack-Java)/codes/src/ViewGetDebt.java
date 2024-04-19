import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 * This is ViewGetDebt class
 */

/**
 * @author Stefan_SU
 *
 */
public class ViewGetDebt extends View<ControllerGetDebt> {
	private JTextField t;// Declare a JTextField variable called t

	// Create a constructor
	public ViewGetDebt(FinanceOffice m, ControllerGetDebt c) {
		super(m, c);// assign m and c via super() method
		this.setTitle("View Debt");// set the title as "View Debt"
		this.setSize(300, 200);// set the size of the frame as 300 * 200
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);// kill the program while closing the windows
		this.setLayout(new GridLayout(2, 1));// Set the layout of the ViewGetDebt frame

		// Create a new JTextField variable called t and initialize it with "Type a
		// payer name here"
		t = new JTextField("Type a payer name here");
		// Create a new JButton variable button and initialize it with "Tell me the
		// debt"
		JButton button = new JButton("Tell me the debt");

		this.add(t);// Add t into this frame
		this.add(button);// Add button into this frame

		// Add action listener
		button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {// Override actionPerformed method
				// TODO Auto-generated method stub
				String name = t.getText();// get the input content in the TextField
				String debt = c.getDebt(name);// get the debt as String
				// Show the output in a window
				JOptionPane.showMessageDialog(null, debt, "Message", JOptionPane.INFORMATION_MESSAGE);
			}
		});
		this.update();// call the update() method
		this.setVisible(true);// set all the windows as visible
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		// do nothing
	}
}
