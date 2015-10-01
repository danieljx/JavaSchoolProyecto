/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import view.UserList;

/**
 *
 * @author dvillanueva
 */
public class ListenerAdd implements ActionListener {
    UserList userList;
    
    public ListenerAdd(UserList userList){
        this.userList = userList;
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        userList.insert();
    }
}
