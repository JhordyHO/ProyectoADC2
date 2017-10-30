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

    public mobiliario(String nombreMob, String marcaMob, String serieMob, String cantiMob, String estadoMob, String fechaMob, String comentaMob) {
        this.nombreMob = nombreMob;
        this.marcaMob = marcaMob;
        this.serieMob = serieMob;
        this.cantiMob = cantiMob;
        this.estadoMob = estadoMob;
        this.fechaMob = fechaMob;
        this.comentaMob = comentaMob;
    }

    public mobiliario(int idMob, int idCate, int idMob2, String nombreMob, String marcaMob, String serieMob, String cantiMob, String estadoMob, String fechaMob, String comentaMob) {
        this.idMob = idMob;
        this.idCate = idCate;
        this.idMob2 = idMob2;
        this.nombreMob = nombreMob;
        this.marcaMob = marcaMob;
        this.serieMob = serieMob;
        this.cantiMob = cantiMob;
        this.estadoMob = estadoMob;
        this.fechaMob = fechaMob;
        this.comentaMob = comentaMob;
    }

    public int getIdMob() {
        return idMob;
    }

    public void setIdMob(int idMob) {
        this.idMob = idMob;
    }

    public int getIdCate() {
        return idCate;
    }

    public void setIdCate(int idCate) {
        this.idCate = idCate;
    }

    public int getIdMob2() {
        return idMob2;
    }

    public void setIdMob2(int idMob2) {
        this.idMob2 = idMob2;
    }

    public String getNombreMob() {
        return nombreMob;
    }

    public void setNombreMob(String nombreMob) {
        this.nombreMob = nombreMob;
    }

    public String getMarcaMob() {
        return marcaMob;
    }

    public void setMarcaMob(String marcaMob) {
        this.marcaMob = marcaMob;
    }

    public String getSerieMob() {
        return serieMob;
    }

    public void setSerieMob(String serieMob) {
        this.serieMob = serieMob;
    }

    public String getCantiMob() {
        return cantiMob;
    }

    public void setCantiMob(String cantiMob) {
        this.cantiMob = cantiMob;
    }

    public String getEstadoMob() {
        return estadoMob;
    }

    public void setEstadoMob(String estadoMob) {
        this.estadoMob = estadoMob;
    }

    public String getFechaMob() {
        return fechaMob;
    }

    public void setFechaMob(String fechaMob) {
        this.fechaMob = fechaMob;
    }

    public String getComentaMob() {
        return comentaMob;
    }

    public void setComentaMob(String comentaMob) {
        this.comentaMob = comentaMob;
    }


    private int idMob;
    private int idCate;
    private int idMob2;
    private String nombreMob;
    private String marcaMob;
    private String serieMob;
    private String cantiMob;
    private String estadoMob;
    private String fechaMob;
    private String comentaMob;
}
