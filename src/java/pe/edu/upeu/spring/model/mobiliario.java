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
public class mobiliario {

    public mobiliario() {
    }

    public mobiliario(String nombre_Mob, String marca_Mob, String serie_Mob, String cantidad, String estado, String fechaReg_Mob, String comentario) {
        this.nombre_Mob = nombre_Mob;
        this.marca_Mob = marca_Mob;
        this.serie_Mob = serie_Mob;
        this.cantidad = cantidad;
        this.estado = estado;
        this.fechaReg_Mob = fechaReg_Mob;
        this.comentario = comentario;
    }

    public mobiliario(int idMobiliario, int idCategoria, int idMobiliario2, String nombre_Mob, String marca_Mob, String serie_Mob, String cantidad, String estado, String fechaReg_Mob, String comentario) {
        this.idMobiliario = idMobiliario;
        this.idCategoria = idCategoria;
        this.idMobiliario2 = idMobiliario2;
        this.nombre_Mob = nombre_Mob;
        this.marca_Mob = marca_Mob;
        this.serie_Mob = serie_Mob;
        this.cantidad = cantidad;
        this.estado = estado;
        this.fechaReg_Mob = fechaReg_Mob;
        this.comentario = comentario;
    }

    public int getIdMobiliario() {
        return idMobiliario;
    }

    public void setIdMobiliario(int idMobiliario) {
        this.idMobiliario = idMobiliario;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public int getIdMobiliario2() {
        return idMobiliario2;
    }

    public void setIdMobiliario2(int idMobiliario2) {
        this.idMobiliario2 = idMobiliario2;
    }

    public String getNombre_Mob() {
        return nombre_Mob;
    }

    public void setNombre_Mob(String nombre_Mob) {
        this.nombre_Mob = nombre_Mob;
    }

    public String getMarca_Mob() {
        return marca_Mob;
    }

    public void setMarca_Mob(String marca_Mob) {
        this.marca_Mob = marca_Mob;
    }

    public String getSerie_Mob() {
        return serie_Mob;
    }

    public void setSerie_Mob(String serie_Mob) {
        this.serie_Mob = serie_Mob;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getFechaReg_Mob() {
        return fechaReg_Mob;
    }

    public void setFechaReg_Mob(String fechaReg_Mob) {
        this.fechaReg_Mob = fechaReg_Mob;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }


    private int idMobiliario;
    private int idCategoria;
    private int idMobiliario2;
    private String nombre_Mob;
    private String marca_Mob;
    private String serie_Mob;
    private String cantidad;
    private String estado;
    private String fechaReg_Mob;
    private String comentario;
}
