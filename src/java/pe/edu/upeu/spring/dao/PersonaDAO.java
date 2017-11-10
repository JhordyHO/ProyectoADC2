/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pe.edu.upeu.spring.interfaces.Operaciones;
import pe.edu.upeu.spring.model.Persona;
import pe.edu.upeu.spring.model.departamento;
import pe.edu.upeu.spring.model.roles;
import pe.edu.upeu.spring.model.usuarios;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author Garcia
 */
public class PersonaDAO implements Operaciones<Persona> {

    private CallableStatement cx;
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    private final String sql_Create = "{CALL PERSONAASD (?,?, ?, ?,?,?,?,?,?,?,?,?)}";
    private final String sql_READALL = "SELECT nombre_Per,apellidoPater_Per,apellidoMater_Per,fechaCumpl_Date,dni_Per,telefono_Per,correo_Per,user,pass, departamento.nombre_depar,roles.nombre_Rol FROM persona INNER JOIN roles ON persona.idRoles=roles.idRoles INNER JOIN departamento ON persona.idDepartamento= departamento.idDepartamento INNER JOIN usuario on usuario.idPersona=persona.idPersona";
    private final String sql_Update = "update persona p, usuario us set us.idPersona=p.idPersona, p.idRol=?, p.idDepartamento=?,p.nombre_Per=?,p.apellidoPater_Per=?,p.apellidoMater_Per=?, p.fechaCumpl_Date=?,p.dni_Per=?,p.telefono_Per=?,p.correo_Per=?,p.sexo_Per=?, us.user=?,us.pass=?  WHERE p.idPersona=us.idPersona and p.idPersona=?";

    @Override
    public int create(Persona d) {
        return 0;

    }

//To change body of generated methods, choose Tools | Templates.
    @Override
    public int update(Persona d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Persona> readAll() {
        ArrayList<Persona> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(sql_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                Persona p = new Persona();

                p.setIdRol(rs.getInt("idRoles"));
                p.setNombre_Per(rs.getString("nombre_Per"));
                p.setApellidoPater_Per(rs.getString("apellidoPater_Per"));
                p.setApellidoMater_Per(rs.getString("apellidoMater_Per"));
                p.setFechaCumpl_Date(rs.getString("fechaCumpl_Date"));
                p.setDni_Per(rs.getInt("dni_Per"));
                p.setTelefono_Per(rs.getInt("telefono_Per"));
                p.setCorreo_Per(rs.getString("correo_Per"));
//                p.setUsuario(rs.getString("usuario"));
//                p.setContraseña(rs.getString("contraseña"));
                lista.add(p);

            }
        } catch (Exception e) {
        }

        return lista;
    }

    @Override
    public List<Persona> buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Map<String, Object>> listar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Map<String, Object>> listarAmiguito() {
        List<Map<String, Object>> l = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(sql_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> lista = new HashMap<>();
                lista.put("nombre", rs.getString("nombre_Per"));
                lista.put("rol", rs.getString("nombre_Rol"));
                lista.put("fecha", rs.getString("fechaCumpl_Date"));
                lista.put("dni", rs.getString("dni_Per"));
                lista.put("telefono", rs.getString("dni_Per"));
                lista.put("correo", rs.getString("correo_Per"));
                lista.put("usuario", rs.getString("user"));
                lista.put("contra", rs.getString("pass"));
                lista.put("depar", rs.getString("nombre_depar"));
                lista.put("apellidoP", rs.getString("apellidoPater_Per"));
                lista.put("apellidoM", rs.getString("apellidoMater_Per"));
                l.add(lista);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("error : " + e);
        }

        return l;
    }

    public int createN(Persona d, usuarios u) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            cx = conex.prepareCall(sql_Create);
            cx.setInt(1, d.getIdRol());
            cx.setInt(2, d.getIdDepartamento());
            cx.setString(3, d.getNombre_Per());
            cx.setString(4, d.getApellidoPater_Per());
            cx.setString(5, d.getApellidoMater_Per());
            cx.setString(6, d.getFechaCumpl_Date());
            cx.setInt(7, d.getDni_Per());
            cx.setInt(8, d.getTelefono_Per());
            cx.setString(9, d.getCorreo_Per());
//            ps.setString(9, d.getContraseña());
            cx.setString(10, d.getSexo_Per());
            cx.setString(11, u.getUser());
            cx.setString(12, u.getPass());

            op = cx.executeUpdate();

        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;

    }

    public int actualizar(Persona d, usuarios us) {

        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(sql_Update);
           
            ps.setInt(1, d.getIdRol());
            ps.setInt(2, d.getIdDepartamento());
            ps.setString(3, d.getNombre_Per());
            ps.setString(4, d.getApellidoPater_Per());
            ps.setString(5, d.getApellidoMater_Per());
            ps.setString(6, d.getFechaCumpl_Date());
            ps.setInt(7, d.getDni_Per());
            ps.setInt(8, d.getTelefono_Per());
            ps.setString(9, d.getCorreo_Per());
            ps.setString(10, d.getSexo_Per());
            ps.setString(11, us.getUser());
            ps.setString(12, us.getPass());
             ps.setInt(13, d.getIdPersona());
            op=ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("error:"+ex);
        }
        return op;
    }

}
