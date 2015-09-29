import java.awt.BorderLayout;
import java.awt.event.KeyEvent;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JTabbedPane;

public class TabLocation {
  static void add(JTabbedPane tabbedPane, String label, int mnemonic) {
    int count = tabbedPane.getTabCount();
    JButton button = new JButton(label);
    tabbedPane.addTab(label, new ImageIcon("yourFile.gif"), button, label);
    tabbedPane.setMnemonicAt(count, mnemonic);
  }

  public static void main(String args[]) {

    JFrame frame = new JFrame("Tabbed Pane Sample");
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    JTabbedPane tabbedPane = new JTabbedPane();

    String titles[] = { "General", "Security", "Content", "Connection", "Programs", "Advanced" };
    int mnemonic[] = { KeyEvent.VK_G, KeyEvent.VK_S, KeyEvent.VK_C, KeyEvent.VK_O, KeyEvent.VK_P,
        KeyEvent.VK_A };
    for (int i = 0, n = titles.length; i < n; i++) {
      add(tabbedPane, titles[i], mnemonic[i]);
    }

    tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);
    frame.add(tabbedPane, BorderLayout.CENTER);
    frame.setSize(400, 150);
    frame.setVisible(true);
  }
}