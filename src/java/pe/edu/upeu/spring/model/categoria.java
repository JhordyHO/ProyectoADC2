/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.model;

/**
 *
 * @author LENOVO
 */
public class categoria {
    private int idCategoria;
    private String nombre_Categ;

    public categoria() {
    }

    public categoria(int idCategoria, String nombre_Categ) {
        this.idCategoria = idCategoria;
        this.nombre_Categ = nombre_Categ;
    }

    public categoria(String nombre_Categ) {
        this.nombre_Categ = nombre_Categ;
    }

   

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombre_Categ() {
        return nombre_Categ;
    }

    public void setNombre_Categ(String nombre_Categ) {
        this.nombre_Categ = nombre_Categ;
    }
    
}
