/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.test;


import pe.edu.upeu.spring.dao.mobiliarioDAO;
import pe.edu.upeu.spring.dao.rolesDAO;
import pe.edu.upeu.spring.dao.usuarioDAO;
import pe.edu.upeu.spring.model.mobiliario;
import pe.edu.upeu.spring.model.mobiliariopartes;

/**
 *
 * @author Jose Rayo
 */
public class test {
   public static usuarioDAO us= new usuarioDAO();
   public static rolesDAO rol= new rolesDAO();
   public static mobiliarioDAO mob = new mobiliarioDAO();
   

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        validar("dayana", "1234");
//        roles(1);
          //reg();
          reg2();
    }
    
    public static void validar(String u, String p) {

        System.out.println(us.validar(u, p));
    }
    
        public static void roles(Object p) {

        System.out.println(rol.validar_roles(p));
    }
    public static void reg(){
         mobiliario p = new mobiliario(9,1,1,"gfchgfc","iuygiyug","uytfuyt","uytcuytu","uytcuty","trcxutyvbh","uytgykuyg");
        if(mob.create(p)>0){
            System.out.println("si");
        }else{
            System.out.println("no");
        }
    }
        public static void reg2(){
         mobiliariopartes p = new mobiliariopartes(1,1,"gfchgfc","iuygiyug","uytfuyt","uytcuytu","uytcuty","trcxutyvbh","uytgykuyg");
        if(mob.create2(p)>0){
            System.out.println("si");
        }else{
            System.out.println("no");
        }
    }
}
