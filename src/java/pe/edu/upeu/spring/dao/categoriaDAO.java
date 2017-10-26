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
import pe.edu.upeu.spring.model.categoria;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author LENOVO
 */
public class categoriaDAO implements Operaciones<categoria>{
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    
    private final static String SQL_CREATE = "INSERT INTO categoria (nombre_Categ) VALUES (?)";
    private final static String SQL_UPDATE = "UPDATE categoria SET nombre_Categ=? WHERE idCategoria=?";
    private final static String SQL_DELETE = "DELETE FROM categoria WHERE idCategoria=?";
    private final static String SQL_SEARCH = "SELECT *FROM categoria WHERE nombre_Categ=?";
    private final static String SQL_READALL = "SELECT *FROM categoria";
    private final static String SQL_BUSCAR = "SELECT nombre_Categ FROM categoria WHERE idCategoria=?";
    @Override
    public int create(categoria d) {
      int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setString(1, d.getNombre_Categ()); 
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int update(categoria d) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_UPDATE);
            ps.setString(1, d.getNombre_Categ()); 
            ps.setInt(4, d.getIdCategoria());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int delete(int id) {
     int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_DELETE);
            ps.setInt(1, id);
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public List<categoria> readAll() {
     List<categoria> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                categoria x = new categoria();
                x.setIdCategoria(rs.getInt("idCategoria"));
                x.setNombre_Categ(rs.getString("nombre_Categ")); 
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<categoria> buscar(int id) {
    List<categoria> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                categoria x = new categoria();
                x.setIdCategoria(rs.getInt("idproducto"));
                x.setNombre_Categ(rs.getString("nombre")); 
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
