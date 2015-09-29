/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

/**
 *
 * @author dvillanueva
 */
public class Error extends Exception {
    private int code;
    private String message;

    public Error(int code, String message) {
        this.code       = code;
        this.message    = message;
    }
    public int getCode() {
        return code;
    }
    public String getMessage() {
        return message;
    }
}