/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Jose Rayo
 */
public class Conexion {
    private static final String URL = "jdbc:mysql://localhost:3306/dbsvep1";
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String USER = "root";
    private static final String PASS = "";
    private static Connection cx = null;
    
    public static Connection getConexion(){
        try {
            Class.forName(DRIVER);
            if(cx==null){
                cx = DriverManager.getConnection(URL, USER, PASS);
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error: "+e);
        }
        return cx;
    }
     public ResultSet query(String sql) {

        Statement st;
        ResultSet rs = null;
        try {
            Connection conexion = this.getConexion();
            st = conexion.createStatement();
            rs = st.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rs;
    }

    public static Connection cerrar() {
        if (cx != null) {
            cx = null;
        }
        return cx;
    }
}
