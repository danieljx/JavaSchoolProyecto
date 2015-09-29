/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import view.component.MenuLeft;

/**
 *
 * @author dvillanueva
 */
public class ListenUsersOpen implements ActionListener {
    MenuLeft menuLeft;

    public ListenUsersOpen(MenuLeft menuLeft) {
        this.menuLeft = menuLeft;
    }
    
    @Override
    public void actionPerformed(ActionEvent ae) {
        try {
            this.menuLeft.openUserLIst();
        } catch (NoSuchFieldException ex) {
            Logger.getLogger(ListenUsersOpen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ListenUsersOpen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalArgumentException ex) {
            Logger.getLogger(ListenUsersOpen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(ListenUsersOpen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ListenUsersOpen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ListenUsersOpen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(ListenUsersOpen.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
