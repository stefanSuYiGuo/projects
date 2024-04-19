import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;

/**
 * This is a super View class of all views
 */

/**
 * @author Stefan_SU
 *
 */
public abstract class View<T extends Controller> extends JFrame implements ModelListener {
	protected FinanceOffice m;// Declare a FinanceOffice variable called m
	protected T c;// Declare a T variable called c

	// Create a constructor
	public View(FinanceOffice m, T c) {
		this.m = m;// Assign m
		this.c = c;// Assign c
		// call addListener() and the view registers itself with the model
		m.addListener(this);
		// kill the program while closing the window
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// hide the frame when the user clicks on the "close" button
		// Create a window listener
		this.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {// Override windowClosing() method
				c.shutdown();// Call the shutdown() method
			}
		});
	}

	public abstract void update();
}
