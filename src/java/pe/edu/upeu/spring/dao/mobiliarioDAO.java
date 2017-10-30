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
import pe.edu.upeu.spring.model.mobiliario;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author Jose Rayo
 */
public class mobiliarioDAO implements Operaciones<mobiliario>{
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    private final static String SQL_CREATE = "INSERT INTO mobiliario (idMobiliario, idCategoria, idMobiliario2, "
            + "nombre_Mob, marca_Mob, serie_Mob, cantidad, estado, fechaReg_Mob, comentario) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private final static String SQL_UPDATE = "UPDATE usuario SET clave=? WHERE idusuario=?";
    private final static String SQL_DELETE = "DELETE FROM usuario WHERE idusuario=?";
    private final static String SQL_SEARCH = "SELECT *FROM usuario WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM usuario";
    private final static String SQL_BUSCAR = "SELECT *FROM usuario WHERE idusuario=?";

    @Override
    public int create(mobiliario d) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps =conex.prepareStatement(SQL_CREATE);
            ps.setInt(1, d.getIdMob());
            ps.setInt(2, d.getIdCate());
            ps.setInt(3, d.getIdMob2());
            ps.setString(4, d.getNombreMob());
            ps.setString(5, d.getMarcaMob());
            ps.setString(6, d.getSerieMob());
            ps.setString(7, d.getCantiMob());
            ps.setString(8, d.getEstadoMob());
            ps.setString(9, d.getFechaMob());
            ps.setString(10, d.getComentaMob());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        return op;        
        
    }

    @Override
    public int update(mobiliario d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<mobiliario> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<mobiliario> buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
