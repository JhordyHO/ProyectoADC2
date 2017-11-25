/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.model;

/**
 *
 * @author JOSE LUIS
 */
public class detalle_mobiliario {
    private int idDetalle_Mobiliario;
    private int idMobiliario;
    private int idPersona;
    private String descripcion_det_Mob;
    private String RegFeha_det_Mob;
    private String cantidad_det_Mob;
    private String estado_det_Mob;

    public detalle_mobiliario() {
    }

    public detalle_mobiliario(int idMobiliario, int idPersona, String descripcion_det_Mob, String RegFeha_det_Mob, String cantidad_det_Mob, String estado_det_Mob) {
        this.idMobiliario = idMobiliario;
        this.idPersona = idPersona;
        this.descripcion_det_Mob = descripcion_det_Mob;
        this.RegFeha_det_Mob = RegFeha_det_Mob;
        this.cantidad_det_Mob = cantidad_det_Mob;
        this.estado_det_Mob = estado_det_Mob;
    }

    public detalle_mobiliario(int idDetalle_Mobiliario, int idMobiliario, int idPersona, String descripcion_det_Mob, String RegFeha_det_Mob, String cantidad_det_Mob, String estado_det_Mob) {
        this.idDetalle_Mobiliario = idDetalle_Mobiliario;
        this.idMobiliario = idMobiliario;
        this.idPersona = idPersona;
        this.descripcion_det_Mob = descripcion_det_Mob;
        this.RegFeha_det_Mob = RegFeha_det_Mob;
        this.cantidad_det_Mob = cantidad_det_Mob;
        this.estado_det_Mob = estado_det_Mob;
    }

 

    public int getIdDetalle_Mobiliario() {
        return idDetalle_Mobiliario;
    }

    public void setIdDetalle_Mobiliario(int idDetalle_Mobiliario) {
        this.idDetalle_Mobiliario = idDetalle_Mobiliario;
    }

    public int getIdMobiliario() {
        return idMobiliario;
    }

    public void setIdMobiliario(int idMobiliario) {
        this.idMobiliario = idMobiliario;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getDescripcion_det_Mob() {
        return descripcion_det_Mob;
    }

    public void setDescripcion_det_Mob(String descripcion_det_Mob) {
        this.descripcion_det_Mob = descripcion_det_Mob;
    }

    public String getRegFeha_det_Mob() {
        return RegFeha_det_Mob;
    }

    public void setRegFeha_det_Mob(String RegFeha_det_Mob) {
        this.RegFeha_det_Mob = RegFeha_det_Mob;
    }

    public String getCantidad_det_Mob() {
        return cantidad_det_Mob;
    }

    public void setCantidad_det_Mob(String cantidad_det_Mob) {
        this.cantidad_det_Mob = cantidad_det_Mob;
    }

    public String getEstado_det_Mob() {
        return estado_det_Mob;
    }

    public void setEstado_det_Mob(String estado_det_Mob) {
        this.estado_det_Mob = estado_det_Mob;
    }
    
}
