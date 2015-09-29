/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.component;

import controller.ListenExit;
import controller.ListenUsersOpen;
import java.awt.Dimension;
import java.io.IOException;
import java.sql.SQLException;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JToolBar;
import view.Index;
import view.UserList;

/**
 *
 * @author dvillanueva
 */
public class MenuLeft extends JToolBar {
    JButton btnHome, btnUser, btnRules, btnExit;
    Views views;
    public MenuLeft() {
        super(null, JToolBar.VERTICAL);
        this.setRollover(true);
        this.setFloatable(false);
                
        btnHome = new JButton();
        btnHome.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/ui/glyphicons/glyphicons-21-home.png")));
        btnHome.setFocusable(false);
        btnHome.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnHome.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnHome.setPreferredSize(new Dimension(40, 40));
        btnHome.setBorder(BorderFactory.createEmptyBorder());
        this.add(btnHome);
        this.addSeparator();
        btnUser = new JButton();
        btnUser.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/ui/glyphicons/glyphicons-4-user.png")));
        btnUser.setFocusable(false);
        btnUser.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnUser.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnUser.setPreferredSize(new Dimension(40, 40));
        btnUser.setBorder(BorderFactory.createEmptyBorder());
        this.add(btnUser);
        this.addSeparator();
        btnRules = new JButton();
        btnRules.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/ui/glyphicons/glyphicons-271-shield.png")));
        btnRules.setFocusable(false);
        btnRules.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnRules.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnRules.setPreferredSize(new Dimension(40, 40));
        btnRules.setBorder(BorderFactory.createEmptyBorder());
        this.add(btnRules);
        this.addSeparator();
        btnExit = new JButton();
        btnExit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/ui/glyphicons/glyphicons-64-power.png")));
        btnExit.setFocusable(false);
        btnExit.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        btnExit.setVerticalTextPosition(javax.swing.SwingConstants.BOTTOM);
        btnExit.setPreferredSize(new Dimension(40, 40));
        btnExit.setBorder(BorderFactory.createEmptyBorder());
        /*
        ListenExit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        */
        this.add(btnExit);
    }
    public void setEventExit(Index exit) {
        btnExit.addActionListener(new ListenExit(exit));
    }
    public void setEventUserOpen(Views views) {
        this.views = views;
        btnUser.addActionListener(new ListenUsersOpen(this));
    }
    public void openUserLIst() throws NoSuchFieldException, SQLException, IllegalArgumentException, IllegalAccessException, IOException, ClassNotFoundException, InstantiationException {
        UserList userList = new UserList();
        this.views.addTab("Lista de Usuarios", userList);
    }
}
