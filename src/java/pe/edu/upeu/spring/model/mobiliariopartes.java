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
public class mobiliariopartes {

    public mobiliariopartes() {
    }

    public mobiliariopartes(String nombre_Mob2, String marca_Mob2, String serie_Mob2, String cantidad2, String estado, String fechaReg_Mob2, String comentario2) {
        this.nombre_Mob2 = nombre_Mob2;
        this.marca_Mob2 = marca_Mob2;
        this.serie_Mob2 = serie_Mob2;
        this.cantidad2 = cantidad2;
        this.estado = estado;
        this.fechaReg_Mob2 = fechaReg_Mob2;
        this.comentario2 = comentario2;
    }

    public mobiliariopartes(int idMobiliarioiddetallle_partes_mobiliario, int idMobiliario, String nombre_Mob2, String marca_Mob2, String serie_Mob2, String cantidad2, String estado, String fechaReg_Mob2, String comentario2) {
        this.idMobiliarioiddetallle_partes_mobiliario = idMobiliarioiddetallle_partes_mobiliario;
        this.idMobiliario = idMobiliario;
        this.nombre_Mob2 = nombre_Mob2;
        this.marca_Mob2 = marca_Mob2;
        this.serie_Mob2 = serie_Mob2;
        this.cantidad2 = cantidad2;
        this.estado = estado;
        this.fechaReg_Mob2 = fechaReg_Mob2;
        this.comentario2 = comentario2;
    }

    public int getIdMobiliarioiddetallle_partes_mobiliario() {
        return idMobiliarioiddetallle_partes_mobiliario;
    }

    public void setIdMobiliarioiddetallle_partes_mobiliario(int idMobiliarioiddetallle_partes_mobiliario) {
        this.idMobiliarioiddetallle_partes_mobiliario = idMobiliarioiddetallle_partes_mobiliario;
    }

    public int getIdMobiliario() {
        return idMobiliario;
    }

    public void setIdMobiliario(int idMobiliario) {
        this.idMobiliario = idMobiliario;
    }

    public String getNombre_Mob2() {
        return nombre_Mob2;
    }

    public void setNombre_Mob2(String nombre_Mob2) {
        this.nombre_Mob2 = nombre_Mob2;
    }

    public String getMarca_Mob2() {
        return marca_Mob2;
    }

    public void setMarca_Mob2(String marca_Mob2) {
        this.marca_Mob2 = marca_Mob2;
    }

    public String getSerie_Mob2() {
        return serie_Mob2;
    }

    public void setSerie_Mob2(String serie_Mob2) {
        this.serie_Mob2 = serie_Mob2;
    }

    public String getCantidad2() {
        return cantidad2;
    }

    public void setCantidad2(String cantidad2) {
        this.cantidad2 = cantidad2;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getFechaReg_Mob2() {
        return fechaReg_Mob2;
    }

    public void setFechaReg_Mob2(String fechaReg_Mob2) {
        this.fechaReg_Mob2 = fechaReg_Mob2;
    }

    public String getComentario2() {
        return comentario2;
    }

    public void setComentario2(String comentario2) {
        this.comentario2 = comentario2;
    }
    private int idMobiliarioiddetallle_partes_mobiliario;
    private int idMobiliario;
    private String nombre_Mob2;
    private String marca_Mob2;
    private String serie_Mob2;
    private String cantidad2;
    private String estado;
    private String fechaReg_Mob2;
    private String comentario2;
}
