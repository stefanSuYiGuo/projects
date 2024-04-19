import javax.swing.JFrame;

/**
 * This is ViewHistory class that allows the user of the software to keep track of how the total amount of debt of all the payers of the finance office changes over time.
 */

/**
 * @author Stefan_SU
 *
 */
public class ViewHistory extends View<ControllerHistory> {

	public ViewHistory(FinanceOffice m, ControllerHistory c) {
		super(m, c);
		// TODO Auto-generated constructor stub
		this.setTitle("View History");// Set the title as "View History"
		this.setSize(400, 300);// set the size as 400 * 300
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);// kill the program while closing the window

		HistoryPanel historyPanel = new HistoryPanel(m);// Create a HistoryPanel
		this.add(historyPanel);// Add hitoryPanel into this frame
		this.update();// Call the update() method

		this.setVisible(true);// set this window visible
	}

	public void update() {
		// forces Swing to redraw everything every time the model changes
		// to redraw the updated version of the finance office's history
		repaint();
	}
}
