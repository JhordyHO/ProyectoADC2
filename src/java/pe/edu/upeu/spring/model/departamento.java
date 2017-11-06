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
public class departamento {

    private int idDepartamento;
    private String nombre_depar;

    public departamento() {
    }

    public departamento(String nombre_depar) {
        this.nombre_depar = nombre_depar;
    }

    public departamento(int idDepartamento, String nombre_depar) {
        this.idDepartamento = idDepartamento;
        this.nombre_depar = nombre_depar;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getNombre_depar() {
        return nombre_depar;
    }

    public void setNombre_depar(String nombre_depar) {
        this.nombre_depar = nombre_depar;
    }
    
    
}
