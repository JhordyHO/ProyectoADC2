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
import pe.edu.upeu.spring.model.departamento;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author Jose Rayo
 */
public class departamentoDAO implements Operaciones<departamento>{
     private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    
    private final static String SQL_CREATE = "INSERT INTO departamento (nombre_depar) VALUES (?)";
    private final static String SQL_UPDATE = "UPDATE departamento SET nombre_depar=? WHERE idDepartamento=?";
    private final static String SQL_DELETE = "DELETE FROM departamento WHERE idDepartamento=?";
    private final static String SQL_SEARCH = "SELECT *FROM departamento WHERE nombre_depar=?";
    private final static String SQL_READALL = "SELECT *FROM departamento";
    private final static String SQL_BUSCAR = "SELECT nombre_depar FROM departamento WHERE idDepartamento=?";
    @Override
    public int create(departamento d) {
     int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setString(1, d.getNombre_depar()); 
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public int update(departamento d) {
         int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_UPDATE);
            ps.setString(1, d.getNombre_depar()); 
            ps.setInt(2, d.getIdDepartamento());
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
    public List<departamento> readAll() {
      List<departamento> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                departamento x = new departamento();
                x.setIdDepartamento(rs.getInt("idDepartamento"));
                x.setNombre_depar(rs.getString("nombre_depar")); 
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<departamento> buscar(int id) {
     List<departamento> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                departamento x = new departamento();
                x.setIdDepartamento(rs.getInt("idDepartamento"));
                x.setNombre_depar(rs.getString("nombre_depar")); 
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

