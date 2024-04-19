import javax.swing.JLabel;

/**
 * This is a ViewSimple class to show the windows
 */

/**
 * @author Stefan_SU
 *
 */
public class ViewSimple extends View implements ModelListener {
	private JLabel label;// Declare a JLabel variable called label

	public ViewSimple(FinanceOffice m, ControllerSimple c) {// Create a constructor
		super(m, c);
		this.label = new JLabel();// initialize label
		//m.addListener(this);// add a listener
		this.setTitle("View Simple");// set the title as "View Simple"
		this.setSize(400, 300);// set the size as 400 * 300
		this.update();// call the update() method to update the text in the label
		this.add(label);// add a label
		//this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);// kill the program while closing the window
		this.setVisible(true);// set the view window is visible
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		// set text of the label
		label.setText("Total Debt: " + m.totalDebt());
	}
}
