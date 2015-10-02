/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import controller.Session;
import java.awt.Dialog;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JTable;
import library.db.Connect;
import library.db.Service;
import model.Users;
import view.ui.TableList;

/**
 *
 * @author dvillanueva
 */
public class UserForm extends javax.swing.JFrame {
    Map<String, String> userRowData;
    TableList userTable;
    String[] RuleDataModel;
    List<Map<String, String>> userDataModel;
    /**
     * Creates new form NewJFrame1
     */
    public UserForm(Map<String, String> userRowData,TableList userTable, List<Map<String, String>> userDataModel) throws SQLException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        this.userRowData = userRowData;
        this.userTable = userTable;
        this.userDataModel = userDataModel;
        Connect db = Service.getInstance().getConnectDB();
        String sql = "Select r.rule_name\n";
               sql+= "From sys_rule r\n";
               sql+= "Where r.rule_sta = 'S'\n";
               if(1 != Session.getUserId()) {
                sql+= "  and r.rule_look = 'N'\n";
               }
        List<Map<String, String>> dataList = db.setQueryGetList(sql);
        this.RuleDataModel = new String[dataList.size()];
        int count = 0;
        for(Map<String, String> map : dataList) {
            this.RuleDataModel[count] = map.get("rule_name");
            count ++;
        }
        
        initComponents();
        this.addWindowListener(new WindowAdapter() {
             public void windowClosing(WindowEvent we) {
                dispose();
             }
        });
    }

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jSeparator1 = new javax.swing.JSeparator();
        setSave = new javax.swing.JButton();
        setCancel = new javax.swing.JButton();
        userNameLabel = new javax.swing.JLabel();
        userNameField = new javax.swing.JTextField();
        userLabel = new javax.swing.JLabel();
        userField = new javax.swing.JTextField();
        emailLabel = new javax.swing.JLabel();
        emailField = new javax.swing.JTextField();
        jSeparator2 = new javax.swing.JSeparator();
        passLabel = new javax.swing.JLabel();
        jComboBox1 = new javax.swing.JComboBox();
        jLabel5 = new javax.swing.JLabel();
        passField = new javax.swing.JPasswordField();
        staComboBox = new javax.swing.JComboBox();
        staLabel = new javax.swing.JLabel();
        asqComboBox = new javax.swing.JComboBox();
        asqLabel = new javax.swing.JLabel();
        answLabel = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        answTextPane = new javax.swing.JTextPane();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        setSave.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/ui/glyphicons/glyphicons-199-ok.png"))); // NOI18N
        setSave.setText("Guardar");
        setSave.setIconTextGap(5);
        setSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                setSaveActionPerformed(evt);
            }
        });

        setCancel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/view/ui/glyphicons/glyphicons-198-remove.png"))); // NOI18N
        setCancel.setText("Cancelar");
        setCancel.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                setCancelMouseClicked(evt);
            }
        });
        setCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                setCancelActionPerformed(evt);
            }
        });

        userNameLabel.setText("Nombre");

        userNameField.setText(userRowData.get("ter_name"));
        userNameField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                userNameFieldActionPerformed(evt);
            }
        });

        userLabel.setText("Usuario");

        userField.setText(userRowData.get("user_name"));
        userField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                userFieldActionPerformed(evt);
            }
        });

        emailLabel.setText("Email");

        emailField.setText(userRowData.get("user_email"));
        emailField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                emailFieldActionPerformed(evt);
            }
        });

        jSeparator2.setOrientation(javax.swing.SwingConstants.VERTICAL);

        passLabel.setText("Contraseña");

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(RuleDataModel));
        jComboBox1.setSelectedItem(userRowData.get("rule_name"));

        jLabel5.setText("Roles");

        passField.setText(userRowData.get("user_pass"));

        staComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Activo", "Inactivo" }));
        staComboBox.setSelectedItem(userRowData.get("user_status"));

        staLabel.setText("Estatus");

        asqComboBox.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Nacionalidad de tu Madre", "Pelicula Favorita", "Tu Primer amor", "Nombre de tu Primera Mascota" }));
        asqComboBox.setSelectedItem(userRowData.get("user_asq"));

        asqLabel.setText("Pregunta Secreta");

        answLabel.setText("Respuesta");

        answTextPane.setText(userRowData.get("user_answ"));
        jScrollPane1.setViewportView(answTextPane);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jSeparator1)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(answLabel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jScrollPane1))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(userLabel)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(userField, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(userNameLabel)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(userNameField, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(passLabel)
                            .addComponent(asqLabel))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(passField, javax.swing.GroupLayout.DEFAULT_SIZE, 121, Short.MAX_VALUE)
                            .addComponent(asqComboBox, 0, 1, Short.MAX_VALUE))))
                .addGap(18, 18, 18)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(emailLabel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(emailField))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel5)
                            .addComponent(staLabel))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(staComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 96, Short.MAX_VALUE))
                            .addComponent(jComboBox1, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(131, Short.MAX_VALUE)
                .addComponent(setSave)
                .addGap(18, 18, 18)
                .addComponent(setCancel)
                .addGap(119, 119, 119))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(userNameLabel)
                            .addComponent(userNameField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(emailLabel)
                            .addComponent(emailField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(userLabel)
                                    .addComponent(userField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(passLabel)
                                    .addComponent(passField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(staComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(staLabel))
                                .addGap(21, 21, 21)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel5))))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(asqComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(asqLabel))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(answLabel)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 53, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jSeparator2)
                        .addGap(9, 9, 9)))
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(setCancel)
                    .addComponent(setSave, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(15, 15, 15))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void setSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_setSaveActionPerformed
        Connect db;
        try {
            db = Service.getInstance().getConnectDB();
        String sql = "Select r.rule_id\n";
               sql+= "From sys_rule r\n";
               sql+= "Where r.rule_name = '" + jComboBox1.getSelectedItem().toString() + "'\n";
        List<Map<String, String>> dataList;
            dataList = db.setQueryGetList(sql);
            userRowData.put("rule_id", dataList.get(0).get("rule_id"));
        } catch (IOException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(userRowData.get("user_id").isEmpty()) {
            userRowData.put("accion", "add");
        } else {
            userRowData.put("accion", "upd");
        }
        userRowData.put("view", "modify");
        userRowData.put("user_title", userNameField.getText());
        userRowData.put("ter_name", userNameField.getText());
        userRowData.put("user_name", userField.getText());
        userRowData.put("user_email", emailField.getText());
        String fieldPass = new String(passField.getPassword());
        if(!fieldPass.equals("")) {
            userRowData.put("user_pass", fieldPass);
        }
        userRowData.put("user_sta", (staComboBox.getSelectedItem().toString().equals("Activo")?"S":"N"));
        userRowData.put("user_asq", asqComboBox.getSelectedItem().toString());
        userRowData.put("user_answ", answTextPane.getText());
        Users userModel;
        try {
            userModel = new Users(userRowData);
            userModel.setUsers();
            if(userRowData.get("accion").equals("upd")) {
                int row = this.userTable.getSelectedRow();
                this.userTable.setValueAt(userNameField.getText(), row, 0);
                this.userTable.setValueAt(emailField.getText(), row, 1);
                this.userTable.setValueAt(staComboBox.getSelectedItem().toString(), row, 2);
            } else {
                userRowData.put("user_status", staComboBox.getSelectedItem().toString());
                Object[] data = new Object[3];
                data[0] = userRowData.get("ter_name");
                data[1] = userRowData.get("user_email");
                data[2] = userRowData.get("user_status");
                this.userTable.setRow(data);
                this.userDataModel.add(userRowData);
            }
            this.dispose();
        } catch (IllegalArgumentException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchFieldException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserForm.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_setSaveActionPerformed

    private void setCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_setCancelActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_setCancelActionPerformed

    private void userNameFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_userNameFieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_userNameFieldActionPerformed

    private void emailFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_emailFieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_emailFieldActionPerformed

    private void userFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_userFieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_userFieldActionPerformed

    private void setCancelMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_setCancelMouseClicked
        this.dispose();
    }//GEN-LAST:event_setCancelMouseClicked

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel answLabel;
    private javax.swing.JTextPane answTextPane;
    private javax.swing.JComboBox asqComboBox;
    private javax.swing.JLabel asqLabel;
    private javax.swing.JTextField emailField;
    private javax.swing.JLabel emailLabel;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JPasswordField passField;
    private javax.swing.JLabel passLabel;
    private javax.swing.JButton setCancel;
    private javax.swing.JButton setSave;
    private javax.swing.JComboBox staComboBox;
    private javax.swing.JLabel staLabel;
    private javax.swing.JTextField userField;
    private javax.swing.JLabel userLabel;
    private javax.swing.JTextField userNameField;
    private javax.swing.JLabel userNameLabel;
    // End of variables declaration//GEN-END:variables
}
