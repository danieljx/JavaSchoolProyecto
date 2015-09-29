/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import view.Index;

/**
 *
 * @author dvillanueva
 */
public class ListenExit implements ActionListener {
    Index frame;

    public ListenExit(Index frame) {
        this.frame = frame;
    }
    
    @Override
    public void actionPerformed(ActionEvent ae) {
        this.frame.closeSystem();
    }
    
}
