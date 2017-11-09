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

   
    private int idusuario;
    private String user;
    private String pass;
    private String idPersona;

    public usuarios(String user, String pass, String idPersona) {
        this.user = user;
        this.pass = pass;
        this.idPersona = idPersona;
    }

    public usuarios(int idusuario, String user, String pass, String idPersona) {
        this.idusuario = idusuario;
        this.user = user;
        this.pass = pass;
        this.idPersona = idPersona;
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

    public String getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(String idPersona) {
        this.idPersona = idPersona;
    }
   
}
