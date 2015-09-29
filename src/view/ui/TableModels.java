/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.ui;

import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author USUARIO
 */
public class TableModels extends DefaultTableModel{
    
    ArrayList <Object> data;
    Object[] nombreColumnas;
    Object[] claseColumnas;
    
    public TableModels(Object[] nombre, Object[] clase){
        
        nombreColumnas = nombre;
        setColumnClass(clase);
        data = new ArrayList<>();
        setColumnIdentifiers(nombreColumnas);
    }
    
    @Override
    public Class getColumnClass(int c){
        return claseColumnas[c].getClass();
    }
    
    public void setColumnClass (Object[] clase){
        
        claseColumnas = clase;
        
    }
    
}
