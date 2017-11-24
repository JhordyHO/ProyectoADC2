/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import pe.edu.upeu.spring.interfaces.Operaciones;
import pe.edu.upeu.spring.model.detalle_mobiliario;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author JOSE LUIS
 */
public class Detalle_mobiliarioDAO implements Operaciones<detalle_mobiliario>{
     private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
     private final static String SQL_CREATE = "INSERT INTO detalle_mobiliario (idMobiliario,idPersona,descripcion_det_Mob,RegFeha_det_Mob,cantidad_det_Mob,estado_det_Mob) VALUES (?,?,?,?,?,?)";
    @Override
    public int create(detalle_mobiliario d) {
      int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setInt(1, d.getIdMobiliario()); 
            ps.setInt(2, d.getIdPersona()); 
            ps.setString(3, d.getCantidad_det_Mob()); 
            ps.setString(4, d.getRegFeha_det_Mob()); 
            ps.setString(5, d.getEstado_det_Mob()); 
            ps.setString(6,d.getDescripcion_det_Mob());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int update(detalle_mobiliario d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<detalle_mobiliario> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<detalle_mobiliario> buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
