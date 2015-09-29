/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.ui;

import java.awt.Dimension;
import java.util.List;
import java.util.Map;
import javax.swing.DefaultCellEditor;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;

/**
 *
 * @author dvillanueva
 */
public class TableList extends JTable{
    private TableModels tableModel;
    private int cols;
    private final int width = 600;
    private final int height = 400;
    private Object [] datos;
    private Object [] nameColumns;
    private Object [] typeColumns;
    private JTextField campo;
    public TableList(Object [] nameColumns, Object [] typeColumns) {
        this(new TableModels(nameColumns, typeColumns));
        this.nameColumns = nameColumns;
        this.typeColumns = typeColumns;
        this.setPreferredScrollableViewportSize(new Dimension(width,height));
        this.setFillsViewportHeight(false);
    }
    public TableList(TableModels tm) {
        super(tm);
        this.tableModel = tm;
        campo = new JTextField();
        campo.setEditable(false);
        int size = this.getColumnCount();
        Double dWidth = new Double(width/size);
        for (int i = 0; i < size; i++) {
            this.getColumnModel().getColumn(i).setMaxWidth(dWidth.intValue());
            this.getColumnModel().getColumn(i).setMinWidth(dWidth.intValue());
            this.getColumnModel().getColumn(i).setCellEditor(new DefaultCellEditor(campo));
        }
    }
    public void setRow(Object[] dato) {
        tableModel.addRow(dato);
    }
    public void cleanTable() {
        int filas = this.getRowCount();
        /**
         * El siguiente for borra los registros previamente cargados.
         */ 
        for (int i = 0; i < filas; i++) {
            tableModel.removeRow(0);
        }
    }
    /**
     * Carga la JTable con los datos iniciales.
     */
    public void cargarTabla(List<Object[]> datos) {
        int filas = this.getRowCount();
        /**
         * El siguiente for borra los registros previamente cargados.
         */ 
        for (int i = 0; i < filas; i++) {
            tableModel.removeRow(0);
        }
        for(Object[] item : datos) {
            this.setRow(item);
        }
    } 
    /**
     * Agrega un fila a la JTable con los datos pasados por parametros.
     * @param nombreLaboratorio Nombre del laboratorio a agregar.
     * @return Verdadero si la inclusion fue exitosa, falso en caso contrario.
     */
    public boolean agregarFila(String[] dato){
        boolean todoBien = false;
        //for (int i=0; (i<dato.length)&&(i<cols); i++){
        //datos[i] = dato[i];}
        tableModel.addRow(dato);
        todoBien = true;
        return todoBien;
    }
    /**
     * Modifica una fila a la JTable con los datos pasados por parametros.
     * @param nombreLaboratorio Nombre del laboratorio a agregar.
     * @return Verdadero si la modificacion fue exitosa,falso en caso contrario.
     */
    public boolean modificarFila(String[] dato){
        boolean todoBien = false;
        int fila = this.getSelectedRow();
        
        if (fila >= 0){
            for (int i=0; (i<dato.length)&&(i<cols); i++){
                datos[i] = dato[i];
                tableModel.setValueAt(dato[i], fila, i);}
            todoBien = true;
        }
        return todoBien;
    }  
    /**
     * Elimina la fila que este seleccionada en la JTable.
     * @return Verdadero si la eliminación fue exitosa, falso en caso contrario.
     */
    public boolean eliminarFila(){
        int fila = this.getSelectedRow();
        boolean todoBien = false;
        if (fila >= 0){
            int respuesta = JOptionPane.showConfirmDialog(this,
                                               "¿Seguro quiere eliminar a: "+
                                               tableModel.getValueAt(fila, 0));
            if (respuesta == JOptionPane.OK_OPTION){
                tableModel.removeRow(fila);
                todoBien = true;
            }   
        }
        return todoBien;
    }
    
    public String obtenerDescripcion(){
        int fila = this.getSelectedRow();
        if (fila >= 0)
            return (String)this.getValueAt(fila, 0);
        else
            return null;
    }
    
    public String obtenerId(){
        int fila = this.getSelectedRow();
        if (fila >= 0)
            return (String)this.getValueAt(fila, 1);
        else
            return null;
    }
    
}
