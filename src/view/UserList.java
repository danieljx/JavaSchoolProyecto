/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import controller.ListenerAdd;
import java.awt.BorderLayout;
import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import model.Users;
import view.ui.ButtonsFilter;
import view.ui.GridButtons;
import view.ui.TableList;

/**
 *
 * @author dvillanueva
 */
public final class UserList extends JPanel {
    TableList gridUsers;
    ButtonsFilter buttons;
    Users userModel;
    GridButtons buttonsFill;
    private final String [] nameButtons = {"Buscar","Incluir","Modificar","Eliminar","Imprimir"};                     
    private JTextField emailField;
    private JLabel emailLabel;
    private JPanel fillPanel;
    private JTextField nameField;
    private JLabel nameLabel;
    private JComboBox staComboBox;
    private JLabel staLabel;
    private JButton jButton1;
    private JButton jButton2;
    private JButton jButton3;
    private JButton jButton4;
    private JButton jButton5;
    private JPanel jPanel1;
    private List<Map<String, String>> userDataModel;
    public UserList() throws NoSuchFieldException, SQLException, IllegalArgumentException, IllegalAccessException, IOException, ClassNotFoundException, InstantiationException {
        this.setBackground(new java.awt.Color(0, 51, 86));
        fillPanel   = new JPanel();
        nameLabel   = new JLabel();
        nameField   = new JTextField();
        emailLabel  = new JLabel();
        emailField  = new JTextField();
        staComboBox = new JComboBox();
        staLabel    = new JLabel();
        
        jPanel1     = new JPanel();
        jButton1    = new JButton();
        jButton2    = new JButton();
        jButton3    = new JButton();
        jButton4    = new JButton();
        jButton5    = new JButton();
        
        nameLabel.setText("Nombre");
        emailLabel.setText("Email");
        staComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Seleccione", "Activo", "Inactivo" }));
        staLabel.setText("Estatus");
        jButton1.setText("Buscar");
        jButton5.setText("Limpiar");
        
        jButton1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    setFilterUser();
                } catch (IllegalArgumentException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (NoSuchFieldException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IOException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
        jButton5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    cleanFilterUser();
                } catch (IllegalArgumentException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (NoSuchFieldException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IOException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
        jButton2.setText("Nuevo");
        jButton2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                try {
                    newUserForm();
                } catch (IllegalArgumentException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IOException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
        jButton3.setText("Exportar");
        
        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addComponent(jButton1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton3)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton5)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jButton2)
                        .addComponent(jButton3)))
                .addContainerGap(33, Short.MAX_VALUE))
        );
        javax.swing.GroupLayout fillPanelLayout = new javax.swing.GroupLayout(fillPanel);
        fillPanel.setLayout(fillPanelLayout);
        fillPanelLayout.setHorizontalGroup(
            fillPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fillPanelLayout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addGroup(fillPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(fillPanelLayout.createSequentialGroup()
                        .addComponent(nameLabel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(nameField, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(emailLabel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(emailField, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(staLabel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(staComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(31, Short.MAX_VALUE))
        );
        fillPanelLayout.setVerticalGroup(
            fillPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(fillPanelLayout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addGroup(fillPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(nameField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(nameLabel)
                    .addComponent(emailField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(emailLabel)
                    .addComponent(staComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(staLabel))
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );        
        
        
        this.add(BorderLayout.CENTER,fillPanel);
        UserList userList = this;
        Object [] column = {"Nombre", "E-Mail", "Estatus"};
        Object [] columnType = {new String(), new String(), new String()};
        gridUsers = new TableList(column, columnType);
        List<Map<String, String>> dataModel = this.getDataModel();
        this.setDataModel(dataModel);
        gridUsers.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                if (e.getClickCount() == 2) {
                   TableList target = (TableList) e.getSource();
                   int row = target.getSelectedRow();
                   Map<String, String> userRowData = dataModel.get(row);
                   UserForm userForm;
                    try {
                        userForm = new UserForm(userRowData, target, userDataModel);
                        userForm.setVisible(true);
                    } catch (SQLException ex) {
                        Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (IOException ex) {
                        Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (InstantiationException ex) {
                        Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (IllegalAccessException ex) {
                        Logger.getLogger(UserList.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        });
        
        JScrollPane scrollPanel = new JScrollPane(gridUsers);
        this.add(scrollPanel);
        this.setLayout(new FlowLayout());
        this.setBorder(BorderFactory.createTitledBorder(""));
        this.setOpaque(false);
    }
    public List<Map<String, String>> getDataModel() throws NoSuchFieldException, SQLException, IllegalArgumentException, IllegalAccessException, IOException, ClassNotFoundException, InstantiationException {
        userModel = new Users();
        return userModel.getUsers();
    }
    public void setDataModel(List<Map<String, String>> userDataModel) {
        this.userDataModel = userDataModel;
        gridUsers.cleanTable();
        for(Map<String, String> map : userDataModel) {
            Object[] data = new Object[3];
            data[0] = map.get("ter_name");
            data[1] = map.get("user_email");
            data[2] = map.get("user_status");
            gridUsers.setRow(data);
        }
    }
    public void newUserForm() throws SQLException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Map<String, String> userFilterData = new HashMap<String, String>();
        userFilterData.put("view", "modify");
        userFilterData.put("accion", "add");
        userFilterData.put("user_id", "");
        userFilterData.put("user_title", "");
        userFilterData.put("ter_name", "");
        userFilterData.put("user_name", "");
        userFilterData.put("user_email", "");
        userFilterData.put("user_pass", "");
        userFilterData.put("user_sta", "");
        UserForm userForm = new UserForm(userFilterData, gridUsers, this.userDataModel);
                 userForm.setVisible(true);
    }
    public void cleanFilterUser() throws NoSuchFieldException, SQLException, IllegalArgumentException, IllegalAccessException, IOException, ClassNotFoundException, InstantiationException {
        nameField.setText("");
        emailField.setText("");
        staComboBox.setSelectedItem("Seleccione");
        List<Map<String, String>> dataModel = this.getDataModel();
        this.setDataModel(dataModel);
    }
    public void setFilterUser() throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, SQLException, IOException, ClassNotFoundException, InstantiationException {
        Map<String, String> userFilterData = new HashMap<String, String>();
        userFilterData.put("view", "list");
        if(!nameField.getText().isEmpty()) {
            userFilterData.put("ter_name", nameField.getText());
        }
        if(!emailField.getText().isEmpty()) {
            userFilterData.put("user_email", emailField.getText());
        }
        if(!staComboBox.getSelectedItem().toString().equals("Seleccione")) {
            userFilterData.put("user_sta", (staComboBox.getSelectedItem().toString().equals("Activo")?"S":"N"));
        }
        userModel = new Users(userFilterData);
        setDataModel(userModel.getUsers());
    }
}
