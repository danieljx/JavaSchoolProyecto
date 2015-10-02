/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author dvillanueva
 */
public class Session {
    private static int userId           = 0;
    private static boolean userStatus   = false;
    private static String userName      = "";
    private static String thirdNames    = "";
    private static String lastvisitDate    = "";

    public static int getUserId() {
        return Session.userId;
    }
    public static boolean getUserStatus() {
        return Session.userStatus;
    }
    public static String getUserName() {
        return Session.userName;
    }
    public static String getThirdNames() {
        return Session.thirdNames;
    }
    public static String getUserLastLog() {
        return Session.lastvisitDate;
    }
    public static void setUserId(int userId) {
        Session.userId     = userId;
    }
    public static void setUserStatus(boolean userStatus) {
        Session.userStatus = userStatus;
    }
    public static void setUserName(String userName) {
        Session.userName     = userName;
    }
    public static void setUserThirdNames(String thirdNames) {
        Session.thirdNames     = thirdNames;
    }
    public static void setUserLastLog(String lastvisitDate) {
        Session.lastvisitDate     = lastvisitDate;
    }
}
