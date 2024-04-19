import java.awt.Color;
import java.awt.Graphics;
import java.util.ArrayList;
import java.util.Collections;

import javax.swing.JPanel;

/**
 * This is HistoryPanel class that extends JPanel
 */

/**
 * @author Stefan_Su
 *
 */
public class HistoryPanel extends JPanel {

	private FinanceOffice m;// Declare a FinanceOffice variable called m

	public HistoryPanel(FinanceOffice m) {// Create a constructor
		this.m = m;// Assign m
	}

	// Create an integer method called historyMax
	private int historyMax(ArrayList<Integer> history) {
		int max = Collections.max(history);// using java.util.Collection to find maximum of the arrayList
		/**
		 * The following code is experiencing the joy of coding. But to make sure
		 * program run well, I will compare these two results and output the right one.
		 * Because of for fun, I do not think it deserves comments.
		 */
		int myMax = 0;
		if (history.size() < 1) {

		} else if (history.size() == 1) {
			myMax = history.get(0);
		} else {
			for (int i = 0; i < history.size() - 1; i++) {
				int temp;
				if (history.get(i) < history.get(i + 1)) {
					temp = history.get(i + 1);
				} else {
					temp = history.get(i);
				}
			}
		}
		if (myMax == max) {
			return myMax;
		} else {
			return max;// return max value in the array list
		}
	}

	// Create an integer method called historyMin
	private int historyMin(ArrayList<Integer> history) {
		int min = Collections.min(history);// using java.util.Collection to find maximum of the arrayList
		return min;// return min value in the array list
	}

	// Create an integer method called historyRange
	private int historyRange(ArrayList<Integer> history) {
		// Declare an integer variable called range and store the difference of Max and
		// Min into it
		int range = this.historyMax(history) - this.historyMin(history);
		if (range < 200) {// if strictly less than 200
			return 200;// return 200
		} else {// if larger or equal to 200
			return range;// return the range
		}
	}

	@Override
	protected void paintComponent(Graphics g) {// Override paintComponent() method
		super.paintComponent(g);// clear the panel
		// Declare an ArrayList variable called history and assign it
		ArrayList<Integer> history = m.getHistory();
		int min = historyMin(history);// Declare an integer variable called min to get the minimum of the history
		int range = historyRange(history);// get the range
		int maxX = getWidth() - 1;// get the longest line limit
		int maxY = getHeight() - 1;// get the highest lint limit
		int zero = maxY + min * maxY / range;// set the x-axis

		g.setColor(Color.BLUE);// set the line as blue
		g.drawLine(0, zero, maxX, zero);// draw the base line as x-axis

		g.setColor(Color.RED);// set the line as red
		int x0 = 0;// set the origin of x
		int y0 = 0;// set the origin of y
		for (int i = 0; i < history.size(); i++) {// do a for loop to draw the line
			int v = history.get(i);// value v at index i in the history ArrayList
			int x = 10 * i;// horizontal coordinate
			int y = zero - v * maxY / range;// vertical coordinate
			if (history.size() == 1) {// if only one point
				g.drawRect(x, y, 1, 1);// draw a rectangle as point
			} else {// more than one point
				if (i == 0) {// for the first point
					g.drawRect(x, y, 1, 1);// set the point
				} else {// for other point
					g.drawLine(x0, y0, x, y);// connect the points to a line
				}
			}
			x0 = x;// pass the x to x0 for next loop
			y0 = y;// pass the y to y0 for next loop
		}
	}
}
