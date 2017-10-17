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

    public roles() {
    }

    public roles(int idRoles, String nombre_Rol) {
        this.idRoles = idRoles;
        this.nombre_Rol = nombre_Rol;
    }

    public int getIdRoles() {
        return idRoles;
    }

    public void setIdRoles(int idRoles) {
        this.idRoles = idRoles;
    }

    public String getNombre_Rol() {
        return nombre_Rol;
    }

    public void setNombre_Rol(String nombre_Rol) {
        this.nombre_Rol = nombre_Rol;
    }
   private int idRoles;
   private String nombre_Rol;
}
