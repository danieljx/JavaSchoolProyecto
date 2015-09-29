/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.component;

import javax.swing.JTabbedPane;
import view.DashBoard;

/**
 *
 * @author dvillanueva
 */
public class Views extends JTabbedPane {
    DashBoard homes;
    public Views() {
        homes = new DashBoard();
        this.addTab("Tablero", homes);
    }
}