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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import library.db.Connect;
import library.db.Service;

/**
 *
 * @author dvillanueva
 */
public class Users {

    private String user_id;
    private String user_title;
    private String user_email;
    private String user_name;
    private String user_pass;
    private String registerDate;
    private String lastvisitDate;
    private String user_lock;
    private String user_sta;
    private String user_status;
    private String rule_id;
    private String rule_name;
    private String ter_name;
    private String third_id;
    private String user_try;
    private String accion;
    private String view;
    private final String table  = "sys_user";
    private final String id     = "user_id";
    public List<Map<String, String>> dataList = new ArrayList<>();

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
        boolean seconds = false;
	if( !"del".equals(this.accion)) {
            if("add".equals(this.accion)) {
                String sqlI = "Insert Into " + this.table + "\n"; 
                       sqlI+= " (\n";
                        if(this.user_name != null && !this.user_name.equals("null")) {
                            sqlI+= "user_name\n"; 
                            seconds = true;
                        }
                        if(this.user_sta != null && !this.user_sta.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  user_sta\n";
                        }
                        if(this.user_title != null && !this.user_title.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  user_title\n";
                        }
                        if(this.user_email != null && !this.user_email.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  user_email\n";
                        }
                        if(this.user_pass != null && !this.user_pass.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  user_pass\n";
                        }
                        if(this.user_lock != null && !this.user_lock.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  user_lock\n";
                        }
                        if(this.rule_id != null && !this.rule_id.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  rule_id\n";
                        }
                        if(this.ter_name != null && !this.ter_name.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  ter_name\n";
                        }
                        if(this.third_id != null && !this.third_id.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  third_id\n";
                        }
                        if(this.user_try != null && !this.user_try.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "  user_try\n";
                        }
                        if(seconds) {
                            sqlI+= ",";
                        }
                       sqlI+= "  registerDate\n";
                       sqlI+= " ,lastvisitDate)\n";
                       sqlI+= "Value (\n";
                        if(this.user_name != null && !this.user_name.equals("null")) {
                            sqlI+= "'" + this.user_name + "'\n";
                            seconds = true;
                        }
                        if(this.user_sta != null && !this.user_sta.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.user_sta + "'\n";
                        }
                        if(this.user_title != null && !this.user_title.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.user_title + "'\n";
                        }
                        if(this.user_email != null && !this.user_email.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.user_email + "'\n";
                        }
                        if(this.user_pass != null && !this.user_pass.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.user_pass + "'\n";
                        }
                        if(this.user_lock != null && !this.user_lock.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.user_lock + "'\n";
                        }
                        if(this.rule_id != null && !this.rule_id.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.rule_id + "'\n";
                        }
                        if(this.ter_name != null && !this.ter_name.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.ter_name + "'\n";
                        }
                        if(this.third_id != null && !this.third_id.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.third_id + "'\n";
                        }
                        if(this.user_try != null && !this.user_try.equals("null")) {
                            if(seconds) {
                                sqlI+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlI+= "'" + this.user_try + "'\n";
                        }
                        if(seconds) {
                            sqlI+= ",";
                        }
                       sqlI+= "       now()\n";
                       sqlI+= "      ,now())\n";
                       db.query.execute(sqlI);
                       sqlI = "Select LAST_INSERT_ID() as " + id + "\n";
                       List<Map<String, String>> lastId = db.setQueryGetList(sqlI);
                       this.user_id = lastId.get(0).get("user_id");
            } else {
                String sqlU = "Update " + this.table + "\n";
                       sqlU+= "Set ";
                        if(this.user_name != null && !this.user_name.equals("null")) {
                            sqlU+= "user_name   = '" + this.user_name + "'\n";
                            seconds = true;
                        }
                        if(this.user_sta != null && !this.user_sta.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  user_sta    = '" + this.user_sta + "'\n";
                        }
                        if(this.user_title != null && !this.user_title.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  user_title    = '" + this.user_title + "'\n";
                        }
                        if(this.user_email != null && !this.user_email.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  user_email    = '" + this.user_email + "'\n";
                        }
                        if(this.user_pass != null && !this.user_pass.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  user_pass    = '" + this.user_pass + "'\n";
                        }
                        if(this.user_lock != null && !this.user_lock.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  user_lock    = '" + this.user_lock + "'\n";
                        }
                        if(this.rule_id != null && !this.rule_id.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  rule_id    = '" + this.rule_id + "'\n";
                        }
                        if(this.ter_name != null && !this.ter_name.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  ter_name    = '" + this.ter_name + "'\n";
                        }
                        if(this.third_id != null && !this.third_id.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  third_id    = '" + this.third_id + "'\n";
                        }
                        if(this.user_try != null && !this.user_try.equals("null")) {
                            if(seconds) {
                                sqlU+= ",";
                            } else {
                                seconds = true;
                            }
                            sqlU+= "  user_try    = '" + this.user_try + "'\n";
                        }
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
        if(this.user_id != null && !this.user_id.isEmpty()) {
               sql+= "and u.user_id = " + this.user_id + "\n";
        }
        if(this.user_sta != null && !this.user_sta.isEmpty()) {
               sql+= "and u.user_sta = '" + this.user_sta + "'\n";
        }
        if(this.user_name != null && !this.user_name.isEmpty()) {
               sql+= "and u.user_name like '%" + this.user_name + "%'\n";
        }
        if(this.user_email != null && !this.user_email.isEmpty()) {
               sql+= "and u.user_email like '%" + this.user_email + "%'\n";
        }
        if(this.ter_name != null && !this.ter_name.isEmpty()) {
               sql+= "and u.ter_name like '%" + this.ter_name + "%'\n";
        }
        if(this.rule_id != null && !this.rule_id.isEmpty()) {
               sql+= "and u.rule_id = " + this.rule_id + "\n";
        }
        sql+= "Order by u.user_id asc\n";
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
