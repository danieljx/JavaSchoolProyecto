/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.ui;

import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;

/**
 *
 * @author dvillanueva
 */
public class GridButtons extends JPanel {
    JButton [] buttons;
    public GridButtons(String [] names) {
       buttons = new JButton[names.length];
        for (int i = 0; i < names.length; i++){
            buttons[i] = new JButton(names[i]);
            this.add(buttons[i]);
        } 
    }
    public void addListener(int numButton, ActionListener listen){
        if (numButton >= 0 && numButton < 3) {
            buttons[numButton].addActionListener(listen);
        }
    }
}
