/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import controller.Session;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import view.component.MenuLeft;
import view.component.MenuTop;
import view.component.Views;

/**
 *
 * @author dvillanueva
 */
public class Index extends JFrame {

    GridBagLayout gbl;
    GridBagConstraints gbc;
    JPanel leftPanel;
    JPanel rightpanel;
    JLabel labelUser;
    private MenuTop jMenuBar;
    private MenuLeft menuLeft;
    private Views views;
    private final Login login;
    public Index(Login login) {
        this.login = login;
        initComponents();
        this.addWindowListener(new WindowAdapter() {
           public void windowClosing(WindowEvent we) {
              System.exit(0);
           }
        });
    }

    private void initComponents() {
        this.setLocation(100, 100);
        this.setBackground(new java.awt.Color(0, 50, 74));
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(800, 600);
        //this.setExtendedState(JFrame.MAXIMIZED_BOTH);
        jMenuBar = new MenuTop();
        this.setJMenuBar(jMenuBar);
        
        labelUser = new JLabel();
        labelUser.setText(Session.getThirdNames() + " - Ultima Visita: " + Session.getUserLastLog());
        menuLeft = new MenuLeft();
        menuLeft.setEventExit(this);
        
        views = new Views();
        menuLeft.setEventUserOpen(views);
        menuLeft.setEventHomeOpen(views);
        
        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(menuLeft, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(views))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(labelUser)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(95, 95, 95)
                .addComponent(menuLeft, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addComponent(labelUser)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(views, javax.swing.GroupLayout.PREFERRED_SIZE, 529, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
    }
    public void closeSystem() {
        this.dispose();
        this.login.setVisible(true);
    }
}
