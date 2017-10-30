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
import org.springframework.jdbc.core.JdbcTemplate;
import pe.edu.upeu.spring.interfaces.Operaciones;
import pe.edu.upeu.spring.model.persona;
import pe.edu.upeu.spring.model.usuarios;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author Jose Rayo
 */
public class usuarioDAO implements Operaciones<usuarios>{
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;

    private final static String SQL_VALIDA = "SELECT P.idPersona, P.idRoles, P.idDepartamento,P.nombre_Per,"
            + "P.apellidoPater_Per,P.apellidoMater_Per,P.fechaCumpl_Date,P.dni_Per,P.telefono_Per,P.correo_Per,"
            + "P.sexo_Per FROM usuario U,persona P WHERE U.user=? AND U.pass=? AND P.idPersona = U.idPersona";
    private final static String SQL_CREATE = "INSERT INTO usuario (user, clave) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE usuario SET clave=? WHERE idusuario=?";
    private final static String SQL_DELETE = "DELETE FROM usuario WHERE idusuario=?";
    private final static String SQL_SEARCH = "SELECT *FROM usuario WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM usuario";
    private final static String SQL_BUSCAR = "SELECT *FROM usuario WHERE idusuario=?";
    
   public ArrayList<Map<String, Object>> validar(String Usuario, String Clave){
       Map<String, Object> m = new HashMap<>();
       ArrayList<Map<String, Object>> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_VALIDA);
            ps.setString(1, Usuario);
            ps.setString(2, Clave);
            rs = ps.executeQuery();
            while(rs.next()){
                m.put("idpersona",rs.getInt("idPersona"));
                m.put("idRoles", rs.getInt("idRoles"));
                m.put("idDepartamento", rs.getInt("idDepartamento")); 
                m.put("nombre_Per", rs.getString("nombre_Per"));
                m.put("apellidoPater_Per", rs.getString("apellidoPater_Per"));
                m.put("apellidoMater_Per", rs.getString("apellidoMater_Per"));
                m.put("fechaCumpl_Date", rs.getString("fechaCumpl_Date"));
                m.put("dni_Per",rs.getString("dni_Per"));
                m.put("telefono_Per", rs.getString("telefono_Per"));   
                m.put("correo_Per", rs.getString("correo_Per"));
                m.put("sexo_Per", rs.getString("sexo_Per"));   
                lista.add(m);

            }
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        return lista;
    }

    @Override
    public int create(usuarios d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(usuarios d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<usuarios> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<usuarios> buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }





   
    
}
