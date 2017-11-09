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
public class roles {

   
   private int idRol;
   private String nombre_Rol;

    public roles() {
    }

    public roles(String nombre_Rol) {
        this.nombre_Rol = nombre_Rol;
    }

    public roles(int idRol, String nombre_Rol) {
        this.idRol = idRol;
        this.nombre_Rol = nombre_Rol;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getNombre_Rol() {
        return nombre_Rol;
    }

    public void setNombre_Rol(String nombre_Rol) {
        this.nombre_Rol = nombre_Rol;
    }
}
