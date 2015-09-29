/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import view.ui.ButtonsFilter;

/**
 *
 * @author dvillanueva
 */
public class ListenBtnFilterAdd implements ActionListener {
    ButtonsFilter butonFilter;
    
    public ListenBtnFilterAdd(ButtonsFilter butonFilter){
        this.butonFilter = butonFilter;
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        this.butonFilter.insert();
    }
}
