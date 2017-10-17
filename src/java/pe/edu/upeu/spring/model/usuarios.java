/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.model;

/**
 *
 * @author Jose Rayo
 */
public class usuarios {

    public usuarios() {
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public usuarios(String user, String pass) {
        this.user = user;
        this.pass = pass;
    }

    public usuarios(int idusuario, String user, String pass) {
        this.idusuario = idusuario;
        this.user = user;
        this.pass = pass;
    }
    private int idusuario;
    private String user;
    private String pass;
}
