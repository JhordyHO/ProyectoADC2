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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pe.edu.upeu.spring.interfaces.Operaciones;
import pe.edu.upeu.spring.model.roles;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author Jose Rayo
 */
public class rolesDAO implements Operaciones<roles>{
     private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;

    private final static String SQL_CREATE = "INSERT INTO usuario (user, clave) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE usuario SET clave=? WHERE idusuario=?";
    private final static String SQL_DELETE = "DELETE FROM usuario WHERE idusuario=?";
    private final static String SQL_SEARCH = "SELECT *FROM usuario WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM usuario";
    private final static String SQL_BUSCAR = "SELECT nombre_Rol FROM roles WHERE idRoles=?";

    @Override
    public int create(roles d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(roles d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<roles> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<roles> buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ArrayList<Map<String, Object>> validar_roles(Object idrol) {
       Map<String, Object> dto = new HashMap<>();
       ArrayList<Map<String, Object>> lista = new ArrayList<>();
          try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_BUSCAR);
            ps.setObject(1, idrol);
            rs = ps.executeQuery();
            while (rs.next()) {
                dto.put("nombre_Rol",rs.getObject("nombre_Rol"));
                lista.add(dto);
            }
        } catch (Exception ex) {
            System.out.println("Error al listar roles "+ex);
        }
        return lista;
    }
    
}
