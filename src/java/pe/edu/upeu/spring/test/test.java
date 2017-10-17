/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.test;


import pe.edu.upeu.spring.dao.rolesDAO;
import pe.edu.upeu.spring.dao.usuarioDAO;

/**
 *
 * @author Jose Rayo
 */
public class test {
   public static usuarioDAO us= new usuarioDAO();
   public static rolesDAO rol= new rolesDAO();

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        validar("jose", "123");
//        roles(1);
    }
    
    public static void validar(String u, String p) {

        System.out.println(us.validar(u, p));
    }
    
        public static void roles(Object p) {

        System.out.println(rol.validar_roles(p));
    }
}
