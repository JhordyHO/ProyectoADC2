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
public class persona {

    public persona() {
    }

    public persona(String nombre_per, String ApellidoPater_per, String apellidoMater_per, String fechaCumpl_date, String dni_per, String telefono_per, String correo_per, String sexo_Per) {
        this.nombre_per = nombre_per;
        this.ApellidoPater_per = ApellidoPater_per;
        this.apellidoMater_per = apellidoMater_per;
        this.fechaCumpl_date = fechaCumpl_date;
        this.dni_per = dni_per;
        this.telefono_per = telefono_per;
        this.correo_per = correo_per;
        this.sexo_Per = sexo_Per;
    }

    public persona(int idPersona, int idRoles, int idDepartamento, int idusuario, String nombre_per, String ApellidoPater_per, String apellidoMater_per, String fechaCumpl_date, String dni_per, String telefono_per, String correo_per, String sexo_Per) {
        this.idPersona = idPersona;
        this.idRoles = idRoles;
        this.idDepartamento = idDepartamento;
        this.idusuario = idusuario;
        this.nombre_per = nombre_per;
        this.ApellidoPater_per = ApellidoPater_per;
        this.apellidoMater_per = apellidoMater_per;
        this.fechaCumpl_date = fechaCumpl_date;
        this.dni_per = dni_per;
        this.telefono_per = telefono_per;
        this.correo_per = correo_per;
        this.sexo_Per = sexo_Per;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public int getIdRoles() {
        return idRoles;
    }

    public void setIdRoles(int idRoles) {
        this.idRoles = idRoles;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getNombre_per() {
        return nombre_per;
    }

    public void setNombre_per(String nombre_per) {
        this.nombre_per = nombre_per;
    }

    public String getApellidoPater_per() {
        return ApellidoPater_per;
    }

    public void setApellidoPater_per(String ApellidoPater_per) {
        this.ApellidoPater_per = ApellidoPater_per;
    }

    public String getApellidoMater_per() {
        return apellidoMater_per;
    }

    public void setApellidoMater_per(String apellidoMater_per) {
        this.apellidoMater_per = apellidoMater_per;
    }

    public String getFechaCumpl_date() {
        return fechaCumpl_date;
    }

    public void setFechaCumpl_date(String fechaCumpl_date) {
        this.fechaCumpl_date = fechaCumpl_date;
    }

    public String getDni_per() {
        return dni_per;
    }

    public void setDni_per(String dni_per) {
        this.dni_per = dni_per;
    }

    public String getTelefono_per() {
        return telefono_per;
    }

    public void setTelefono_per(String telefono_per) {
        this.telefono_per = telefono_per;
    }

    public String getCorreo_per() {
        return correo_per;
    }

    public void setCorreo_per(String correo_per) {
        this.correo_per = correo_per;
    }

    public String getSexo_Per() {
        return sexo_Per;
    }

    public void setSexo_Per(String sexo_Per) {
        this.sexo_Per = sexo_Per;
    }
    private int idPersona;
    private int idRoles;
    private int idDepartamento;
    private int idusuario;
    private String nombre_per;
    private String ApellidoPater_per;
    private String apellidoMater_per;
    private String fechaCumpl_date;
    private String dni_per;
    private String telefono_per;
    private String correo_per;
    private String sexo_Per;
           
    
}
