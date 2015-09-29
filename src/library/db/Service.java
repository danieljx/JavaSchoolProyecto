/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library.db;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

/**
 *
 * @author dvillanueva
 */
public class Service {
    private Connect connectDB;
    private static Service instance;
    public static synchronized Service getInstance() throws IOException {
        if(instance == null) {
            instance = new Service();
        }
        return instance;
    }
    public Connect getConnectDB() throws ClassNotFoundException, InstantiationException, IllegalAccessException, FileNotFoundException, IOException {
        if(connectDB == null) {
            Properties  p = new Properties();
                        p.load(new FileInputStream("src/start/config.ini"));
            String dbclass =   p.getProperty("dbclass");
            connectDB = (Connect) Class.forName(dbclass).newInstance();
        }
        return connectDB;
    }
}