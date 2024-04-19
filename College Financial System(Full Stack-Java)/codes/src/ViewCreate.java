import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 * This is ViewCreate class  extends View<ControllerCreate> 
 */

/**
 * @author Stefan_SU
 *
 */
public class ViewCreate extends View<ControllerCreate> {
	private JTextField t1;// Declare a JTextField variable called t1
	private JTextField t2;// Declare a JTextField variable called t2
	private JComboBox<String> cb;// Declare a JComboBox variable called cb
	
	// Create a constructor
	public ViewCreate(FinanceOffice m, ControllerCreate c) {
		super(m, c);// super m and c
		this.setTitle("View Create");// set the title as "View Create"
		this.setSize(600, 200);// set the size of frame as 600 * 200
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);// kill the program while closing frame
		this.setLayout(new GridLayout(4, 1));// set Layout as GridLayout
		
		t1 = new JTextField("Type a new payer name here");// initialize t1
		t2 = new JTextField("Type an amount of money here");// initialize t2
		cb = new JComboBox<String>(new String[] { "Student", "Employee", "Faculty Member" });// initialize cb
		JButton button = new JButton("Create");// Create a JButton button
		
		this.add(t1);// Add t1
		this.add(t2);// Add t2
		this.add(cb);// Add cb
		this.add(button);// Add button
		
		button.addActionListener(new ActionListener() {// Add an action listener
			
			@Override
			public void actionPerformed(ActionEvent e) {// Override actionPerformed() method
				// TODO Auto-generated method stub
				String name = t1.getText(); // Declare a String name and get the text from field
				String amount = t2.getText(); // Declare a String variable amount and get the text from field
				int index = cb.getSelectedIndex(); // set the index with integer
				String message = c.create(name, amount, index);
				if (message != "") { // if message is not ""
					JOptionPane.showMessageDialog(null, message, "Message", JOptionPane.INFORMATION_MESSAGE);
				}
			}
		});
		
		this.setVisible(true);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		// do nothing
	}
}
