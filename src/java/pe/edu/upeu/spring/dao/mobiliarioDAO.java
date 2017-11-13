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
import pe.edu.upeu.spring.model.mobiliario;
import pe.edu.upeu.spring.model.mobiliariopartes;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author Jose Rayo
 */
public class mobiliarioDAO implements Operaciones<mobiliario>{
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    private final static String SQL_CREATE = "INSERT INTO mobiliario (idCategoria, idDepartamento, "
            + "nombre_Mob, marca_Mob, serie_Mob, cantidad, estado, fechaReg_Mob, comentario) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    
    private final static String SQL_CREATE2 = "INSERT INTO detallle_partes_mobiliario (idMobiliario, "
            + "nombre_Mob2, marca_Mob2, serie_Mob2, cantidad2, estado, fechaReg_Mob2, comentario2) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    
    private final static String SQL_UPDATE = "UPDATE usuario SET clave=? WHERE idusuario=?";
    private final static String SQL_DELETE = "DELETE FROM usuario WHERE idusuario=?";
    private final static String SQL_SEARCH = "SELECT *FROM usuario WHERE user=?";
    private final static String SQL_READALL = "SELECT  m.idMobiliario, m.nombre_Mob, m.marca_Mob, "
            + "m.serie_Mob, m.cantidad, m.estado, m.fechaReg_Mob, m.comentario, c.nombre_Categ "
            + "FROM mobiliario m , categoria c WHERE c.idCategoria = m.idCategoria ORDER BY m.idMobiliario";
    
   private final static String SQL_PRUEBA="SELECT idMobiliario,nombre_Mob,marca_Mob,serie_Mob,cantidad,estado,fechaReg_Mob,"
           + "comentario,departamento.nombre_depar,categoria.nombre_Categ FROM mobiliario "
           + "INNER JOIN categoria ON mobiliario.idCategoria=categoria.idCategoria "
           + "INNER JOIN departamento ON mobiliario.idDepartamento= departamento.idDepartamento";
   
    private final static String SQL_READALL2 = "SELECT  m.idMobiliario, m.nombre_Mob FROM mobiliario m , "
            + "categoria c WHERE m.idDepartamento=? and c.idCategoria = m.idCategoria ORDER BY m.idMobiliario";
    
    private final static String SQL_BUSCAR = "SELECT *FROM usuario WHERE idusuario=?";
    private final static String SQL_listar = "SELECT *FROM mobiliario";
    
    @Override
    public int create(mobiliario d) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps =conex.prepareStatement(SQL_CREATE);
            ps.setInt(1, d.getIdCategoria());
            ps.setInt(2, d.getIdDepartamento());
            ps.setString(3, d.getNombre_Mob());
            ps.setString(4, d.getMarca_Mob());
            ps.setString(5, d.getSerie_Mob());
            ps.setString(6, d.getCantidad());
            ps.setString(7, d.getEstado());
            ps.setString(8, d.getFechaReg_Mob());
            ps.setString(9, d.getComentario());
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
    
    public int create2(mobiliariopartes d){
         int op = 0;
        try {
            conex = Conexion.getConexion();
            ps =conex.prepareStatement(SQL_CREATE2);
            ps.setInt(1, d.getIdMobiliario());
            ps.setString(2, d.getNombre_Mob2());
            ps.setString(3, d.getMarca_Mob2());
            ps.setString(4, d.getSerie_Mob2());
            ps.setString(5, d.getCantidad2());
            ps.setString(6, d.getEstado());
            ps.setString(7, d.getFechaReg_Mob2());
            ps.setString(8, d.getComentario2());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        return op;        
        
   
    }
   ///fin de la esta función
       public ResultSet listMob(){
        ResultSet rm=null;

        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_listar);
            rm = ps.executeQuery();
        } catch (Exception e) {
            System.out.println("Error al listar categoria por ResultSet "+e);
        }
        return rm;
    }
       //utilizando para listar mobiliarios en la tabal mobiliario
       public List<Map<String, Object>> listar2() {
        List<Map<String, Object>> l = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_PRUEBA);
            rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> lista = new HashMap<>();
                lista.put("idMobiliario",rs.getInt("idMobiliario"));
                lista.put("nombre_Mob", rs.getString("nombre_Mob"));
                lista.put("marca_Mob", rs.getString("marca_Mob"));
                lista.put("serie_Mob", rs.getString("serie_Mob"));
                lista.put("cantidad", rs.getString("cantidad"));
                lista.put("estado",rs.getString("estado"));
                lista.put("fechaReg_Mob", rs.getString("fechaReg_Mob"));
                lista.put("comentario", rs.getString("comentario"));
                lista.put("nombre_depar", rs.getString("nombre_depar"));
                lista.put("nombre_Categ", rs.getString("nombre_Categ"));
                l.add(lista);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("error : " + e);
        }

        return l;
    }
      //----------------------------------------------------------------
}
