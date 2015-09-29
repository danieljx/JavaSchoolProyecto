/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library.db;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
/**
 *
 * @author dvillanueva
 */
public class Connect {
    public  String      status;
    public  Connection  connect = null;
    public  Statement   query   = null;
    public  ResultSet   resp    = null;
    public  String      un_sql  = null;
    public  DatabaseMetaData   dbMeta   = null;
    
    protected   String  jdbc;
    protected   String  driver;
    protected   String  host;
    protected   String  dbName;
    protected   String  user;
    protected   String  pass;
    protected   String  charset;
    
    public Connect() throws IOException, ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Properties  p = new Properties();
                    p.load(new FileInputStream("src/start/config.ini"));
        jdbc    = p.getProperty("jdbc");
        driver  = p.getProperty("driver");
        host    = p.getProperty("host");
        dbName  = p.getProperty("dbName");
        user    = p.getProperty("user");
        pass    = p.getProperty("pass");
        charset = p.getProperty("charset");
        this.startDB();
    }
    private void startDB() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        status = jdbc + host + "/" + dbName;
        Class.forName(driver).newInstance();
        connect = DriverManager.getConnection(status, user, pass);
        dbMeta  = connect.getMetaData();
        query   = connect.createStatement();
    }
    public List<Map<String, String>> setQueryGetList(String sql) throws SQLException {
        this.resp = this.query.executeQuery(sql);
        return getArrayList();
    }
    public ArrayList<ArrayList<String>> getColumnsArrayList() throws SQLException {
        ResultSetMetaData rsmd = this.resp.getMetaData();
        int numberOfColumns = rsmd.getColumnCount();
        ArrayList result = new ArrayList();
        for (int i = 1; i <= numberOfColumns; i++) {
          if (i > 1) System.out.print(",  ");
          String columnName = rsmd.getColumnName(i);
          result.add(columnName);
        }
        return result;        
    }
    private List<Map<String, String>> getArrayList() throws SQLException {
        ResultSetMetaData md = this.resp.getMetaData();
        int columns = md.getColumnCount();
        List<Map<String, String>> rows = new ArrayList<Map<String, String>>();
        while(this.resp.next()){
            Map<String, String> row = new HashMap<String, String>(columns);
            
            for(int i = 1; i <= columns; ++i){
                row.put(md.getColumnName(i), (this.resp.getString(i) + ""));
            }
            rows.add(row);
        }
        return rows;
    }
}
