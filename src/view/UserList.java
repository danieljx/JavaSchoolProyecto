/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.awt.FlowLayout;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import javax.swing.BorderFactory;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import model.Users;
import view.ui.ButtonsFilter;
import view.ui.TableList;

/**
 *
 * @author dvillanueva
 */
public class UserList extends JPanel {
    TableList gridUsers;
    ButtonsFilter buttons;
    Users userModel;
    public UserList() throws NoSuchFieldException, SQLException, IllegalArgumentException, IllegalAccessException, IOException, ClassNotFoundException, InstantiationException {
        this.setBackground(new java.awt.Color(0, 51, 86));
        Object [] column = {"Nombre", "E-Mail", "Estatus"};
        Object [] columnType = {new String(), new String(), new String()};
        gridUsers = new TableList(column, columnType);
        this.setDataModel(this.getDataModel());
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
        for(Map<String, String> map : userDataModel) {
            Object[] data = new Object[3];
            data[0] = map.get("ter_name");
            data[1] = map.get("user_email");
            data[2] = map.get("user_status");
            gridUsers.setRow(data);
        }
    }
}
