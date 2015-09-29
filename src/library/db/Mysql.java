/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library.db;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author dvillanueva
 */
public class Mysql extends Connect {
    private String opt;
    public Mysql() throws IOException, ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        this.startDB();
    }
    public void startDB() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        status = jdbc + host + "/" + dbName + "?";
        Class.forName(driver).newInstance();
        connect = DriverManager.getConnection(status, user, pass);
        dbMeta  = connect.getMetaData();
        query   = connect.createStatement();
    }
}
