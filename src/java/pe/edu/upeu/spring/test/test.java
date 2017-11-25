/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.test;


import pe.edu.upeu.spring.dao.Detalle_mobiliarioDAO;
import pe.edu.upeu.spring.dao.PersonaDAO;
import pe.edu.upeu.spring.dao.mobiliarioDAO;
import pe.edu.upeu.spring.dao.rolesDAO;
import pe.edu.upeu.spring.dao.usuarioDAO;
import pe.edu.upeu.spring.model.Persona;
import pe.edu.upeu.spring.model.detalle_mobiliario;

import pe.edu.upeu.spring.model.mobiliario;
import pe.edu.upeu.spring.model.mobiliariopartes;
import pe.edu.upeu.spring.model.usuarios;

/**
 *
 * @author Jose Rayo
 */
public class test {
   public static usuarioDAO us= new usuarioDAO();
   public static rolesDAO rol= new rolesDAO();
   public static mobiliarioDAO mob = new mobiliarioDAO();
   public static PersonaDAO per = new PersonaDAO();
   public static Persona p=new Persona();
   public static usuarios u = new usuarios();
   public static  Detalle_mobiliarioDAO de= new Detalle_mobiliarioDAO();
   
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
//        validar("deyvis", "garcia");
//        roles(1);
          //reg();
          //reg2();
          //update();
////          update2();
//DELETE();
registrar1();
          
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
        public static void update(){
            p = new Persona(1,2,2,"Jose Lu","carihuasairo","rato","19/20/13",72160043,965993321,"josecarihuasair@upeu.edu.pe","g");

            if (per.update(p)>0) {
                System.out.println("Se actualizo correctamete");
            }
        }
        public static void update2(){
        p =new Persona(1,2,2,"Jose Lu","carihuasairo","rato","19/20/13",72000043,965003321,"josecarihuasair@upeu.edu.pe","g");
        u = new usuarios(1,"josel","12345","1");
        
        if(per.actualizar(p, u)>0)
                System.out.println("se actualzo222");
        }
        public static void DELETE(){
            try {
                if(per.delete(7)>0){
                    System.out.println("exito");
                }
            } catch (Exception e) {
                System.out.println("error:"+e);
            }

        
}
                    public static void registrar1(){
                        try {
                            detalle_mobiliario dey= new detalle_mobiliario(3, 4, "malo", "10/10/10", "123", "malo");
                       if(de.create(dey)>0){
                           System.out.println("exito");
                       
                       } else{
                        System.out.println("error");
                       }
                        } catch (Exception e) {
                            
                            System.out.println("error"+e);
                        }
            }
}

