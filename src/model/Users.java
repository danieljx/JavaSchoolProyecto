/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.Session;
import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import library.db.Connect;
import library.db.Service;

/**
 *
 * @author dvillanueva
 */
public class Users {

    private int user_id;
    private String user_title;
    private String user_email;
    private String user_name;
    private String user_pass;
    private String registerDate;
    private String lastvisitDate;
    private String user_lock;
    private String user_sta;
    private int rule_id;
    private String ter_name;
    private int third_id;
    private int user_try;
    private String accion;
    private String view;
    private final String table  = "sys_user";
    private final String id     = "user_id";
    public List<Map<String, String>> dataList;

    public Users(Map<String, String> filterData) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException {
        this.requestUsers(filterData);
    }
    public Users() {
        this.view = "list";
    }
    public void requestUsers(Map<String, String> filterData) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException {
	this.dataList.add(filterData);
        this.mergeDataToClass();
    }
    public void setUsers() throws IOException, ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
    	Connect db = Service.getInstance().getConnectDB();
	if( !"del".equals(this.accion)) {
            if("add".equals(this.accion)) {
                String sqlI = "Insert Into " + this.table + "\n"; 
                       sqlI+= " (user_name\n"; 
                       sqlI+= " ,user_sta\n";
                       sqlI+= " ,user_title\n";
                       sqlI+= " ,user_email\n";
                       sqlI+= " ,user_pass\n";
                       sqlI+= " ,user_lock\n";
                       sqlI+= " ,rule_id\n";
                       sqlI+= " ,user_sta\n";
                       sqlI+= " ,ter_name\n";
                       sqlI+= " ,third_id\n";
                       sqlI+= " ,user_try\n";
                       sqlI+= " ,registerDate\n";
                       sqlI+= " ,lastvisitDate)\n";
                       sqlI+= "Value ('" + this.user_name + "'\n";
                       sqlI+= "      ,'" + this.user_sta + "'\n";
                       sqlI+= "      ,'" + this.user_title + "'\n";
                       sqlI+= "      ,'" + this.user_email + "'\n";
                       sqlI+= "      ,'" + this.user_pass + "'\n";
                       sqlI+= "      ,'" + this.user_lock + "'\n";
                       sqlI+= "      ,'" + this.rule_id + "'\n";
                       sqlI+= "      ,'" + this.user_sta + "'\n";
                       sqlI+= "      ,'" + this.ter_name + "'\n";
                       sqlI+= "      ,'" + this.user_try + "'\n";
                       sqlI+= "      ,now()\n";
                       sqlI+= "      ,now())\n";
                       db.query.execute(sqlI);
                       sqlI = "Select LAST_INSERT_ID() as " + id + "\n";
                       List<Map<String, String>> lastId = db.setQueryGetList(sqlI);
            } else {
                String sqlU = "Update " + this.table + "\n";
                       sqlU+= "Set user_name   = '" + this.user_name + "'\n";
                       sqlU+= "   ,user_sta    = '" + this.user_sta + "'\n";
                       sqlU+= "   ,user_title  = '" + this.user_title + "'\n";
                       sqlU+= "   ,user_email  = '" + this.user_email + "'\n";
                       sqlU+= "   ,user_pass   = '" + this.user_pass + "'\n";
                       sqlU+= "   ,user_lock   = '" + this.user_lock + "'\n";
                       sqlU+= "   ,rule_id     = '" + this.rule_id + "'\n";
                       sqlU+= "   ,ter_name    = '" + this.ter_name + "'\n";
                       sqlU+= "   ,third_id    = '" + this.third_id + "'\n";
                       sqlU+= "   ,user_try    = '" + this.user_try + "'\n";
                       sqlU+= "   ,lastvisitDate  = now()\n";
                       sqlU+= "Where " + id + " = '" + this.user_id + "'\n";
                       db.query.executeUpdate(sqlU);
            }
        } else {
            String sqlD = "DELETE FROM " + this.table + " WHERE " + this.id + " = " + this.user_id;
                   db.query.executeUpdate(sqlD);
        }
    }
    public List<Map<String, String>> getUsers() throws NoSuchFieldException, SQLException, IllegalArgumentException, IllegalAccessException, IOException, ClassNotFoundException, InstantiationException {
        Connect db = Service.getInstance().getConnectDB();
        String sql = "Select u.user_id\n";
               sql+= "      ,u.user_name\n";
               sql+= "      ,u.user_title\n";
               sql+= "      ,u.user_email\n";
               sql+= "      ,u.user_lock\n";
               sql+= "      ,u.user_sta\n";
               sql+= "      ,u.rule_id\n";
               sql+= "      ,u.ter_name\n";
               sql+= "      ,u.third_id\n";
               sql+= "      ,u.user_try\n";
               sql+= "      ,DATE_FORMAT(u.registerDate,'%d/%m/%Y') as registerDate\n";
               sql+= "      ,DATE_FORMAT(u.lastvisitDate,'%d/%m/%Y %H:%i:%s') as lastvisitDate\n";
               sql+= "      ,r.rule_name\n";
               sql+= "      ,if(u.user_sta = 'S','Activo','Inactivo') as user_status\n";
               sql+= "From " + this.table + " u\n";
               sql+= "Inner Join sys_rule r on r.rule_id = u.rule_id\n";
               sql+= "Where u." + this.id + " is not null\n";
        if(Session.getUserId() != 1) {
               sql+= "and u.user_lock = 'N'\n";
        }
        if(this.user_id != 0) {
               sql+= "and u.user_id = " + this.user_id + "\n";
        }
        if(this.user_name != null && !this.user_name.isEmpty()) {
               sql+= "and u.user_name like '%" + this.user_name + "%'\n";
        }
        if(this.user_email != null && !this.user_email.isEmpty()) {
               sql+= "and u.user_email like '%" + this.user_email + "%'\n";
        }
        if(this.user_email != null && !this.user_email.isEmpty()) {
               sql+= "and u.user_email like '%" + this.user_email + "%'\n";
        }
        if(this.rule_id != 0) {
               sql+= "and u.rule_id = " + this.rule_id + "\n";
        }
        this.dataList = db.setQueryGetList(sql);
        if(this.view.equals("modify")) {
            this.mergeDataToClass();
        }
        return this.dataList;
    }
    
    public void mergeDataToClass() throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException {
        for (Map<String, String> map : this.dataList) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                Field field = this.getClass().getDeclaredField(entry.getKey());
                      field.set(this, entry.getValue());
            }
        }
    }
}
