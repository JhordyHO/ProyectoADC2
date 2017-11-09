/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.model;

/**
 *
 * @author Garcia
 */
public class Persona {

    private int idPersona;
    private int idRol;
    private int idDepartamento;
    private String nombre_Per;
    private String apellidoPater_Per;
    private String apellidoMater_Per;
    private String fechaCumpl_Date;
    private int dni_Per;
    private int telefono_Per;
    private String correo_Per;
    private String sexo_Per;
   

    public Persona() {
    }

    public Persona(int idRol, int idDepartamento, String nombre_Per, String apellidoPater_Per, String apellidoMater_Per, String fechaCumpl_Date, int dni_Per, int telefono_Per, String correo_Per, String sexo_Per) {
        this.idRol = idRol;
        this.idDepartamento = idDepartamento;
        this.nombre_Per = nombre_Per;
        this.apellidoPater_Per = apellidoPater_Per;
        this.apellidoMater_Per = apellidoMater_Per;
        this.fechaCumpl_Date = fechaCumpl_Date;
        this.dni_Per = dni_Per;
        this.telefono_Per = telefono_Per;
        this.correo_Per = correo_Per;
        this.sexo_Per = sexo_Per;
    }

    public Persona(int idPersona, int idRol, int idDepartamento, String nombre_Per, String apellidoPater_Per, String apellidoMater_Per, String fechaCumpl_Date, int dni_Per, int telefono_Per, String correo_Per, String sexo_Per) {
        this.idPersona = idPersona;
        this.idRol = idRol;
        this.idDepartamento = idDepartamento;
        this.nombre_Per = nombre_Per;
        this.apellidoPater_Per = apellidoPater_Per;
        this.apellidoMater_Per = apellidoMater_Per;
        this.fechaCumpl_Date = fechaCumpl_Date;
        this.dni_Per = dni_Per;
        this.telefono_Per = telefono_Per;
        this.correo_Per = correo_Per;
        this.sexo_Per = sexo_Per;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getNombre_Per() {
        return nombre_Per;
    }

    public void setNombre_Per(String nombre_Per) {
        this.nombre_Per = nombre_Per;
    }

    public String getApellidoPater_Per() {
        return apellidoPater_Per;
    }

    public void setApellidoPater_Per(String apellidoPater_Per) {
        this.apellidoPater_Per = apellidoPater_Per;
    }

    public String getApellidoMater_Per() {
        return apellidoMater_Per;
    }

    public void setApellidoMater_Per(String apellidoMater_Per) {
        this.apellidoMater_Per = apellidoMater_Per;
    }

    public String getFechaCumpl_Date() {
        return fechaCumpl_Date;
    }

    public void setFechaCumpl_Date(String fechaCumpl_Date) {
        this.fechaCumpl_Date = fechaCumpl_Date;
    }

    public int getDni_Per() {
        return dni_Per;
    }

    public void setDni_Per(int dni_Per) {
        this.dni_Per = dni_Per;
    }

    public int getTelefono_Per() {
        return telefono_Per;
    }

    public void setTelefono_Per(int telefono_Per) {
        this.telefono_Per = telefono_Per;
    }

    public String getCorreo_Per() {
        return correo_Per;
    }

    public void setCorreo_Per(String correo_Per) {
        this.correo_Per = correo_Per;
    }

    public String getSexo_Per() {
        return sexo_Per;
    }

    public void setSexo_Per(String sexo_Per) {
        this.sexo_Per = sexo_Per;
    }

  

}
