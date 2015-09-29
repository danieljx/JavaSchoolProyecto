/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.ui;

import controller.ListenBtnFilterAdd;

/**
 *
 * @author dvillanueva
 */
public class ButtonsFilter {
    GridButtons buttons;
    private final String [] nameButtons;
    public ButtonsFilter() {
        this.nameButtons = new String[]{"Buscar", "Incluir", "Modificar", "Eliminar", "Imprimir"};
        buttons = new GridButtons(nameButtons);
        buttons.setBackground(new java.awt.Color(0, 50, 74));
        buttons.addListener(0,new ListenBtnFilterAdd(this));
    }
    public void insert() {
        
    }
}
