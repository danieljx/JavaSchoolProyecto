/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.component;

import javax.swing.JMenu;
import javax.swing.JMenuBar;

/**
 *
 * @author dvillanueva
 */
public class MenuTop extends JMenuBar{
    JMenu jMenu1, jMenu2;
    public MenuTop() {
        JMenu jMenu1 = new JMenu();
        jMenu1.setText("File");
        //this.add(jMenu1);

        JMenu jMenu2 = new JMenu();
        jMenu2.setText("Edit");
        //this.add(jMenu2);
    }
    
}
