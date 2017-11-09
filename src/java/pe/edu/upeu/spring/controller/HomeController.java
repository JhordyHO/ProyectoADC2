/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pe.edu.upeu.spring.dao.categoriaDAO;
import pe.edu.upeu.spring.dao.departamentoDAO;
import pe.edu.upeu.spring.interfaces.Operaciones;
import pe.edu.upeu.spring.model.categoria;
import pe.edu.upeu.spring.model.departamento;

/**
 *
 * @author Jose Rayo
 */
@Controller
public class HomeController {
      Operaciones cat = new categoriaDAO();
      Operaciones de = new departamentoDAO();
    //pagina del admin- mapeo
   @RequestMapping("/principal")
    public String index(){  
        return "principal";
    }
    @RequestMapping("/Rtesorera")
    public String Rtesorera(){  
        return "Rtesorera";
    }
    @RequestMapping("/ConsultaMob2")
    public String ConsultaMob2(){  
        return "ConsultaMob2";
    }
    @RequestMapping("/Rresponsable")
    public String Rresponsable(){  
        return "Rresponsable";
    }
    // CRUD REGISTRAR DEPARTAMENTO
      @RequestMapping("/adddepa")
    public void addepa(HttpServletRequest request, HttpServletResponse response) {
        String nombre_depar = request.getParameter("nombre_depar");
        departamento p = new departamento(nombre_depar);
        if (de.create(p) == 1) {
            try {
                response.setContentType("text/plain");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("Rdepar");
            } catch (IOException ex) {
                Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
     // delete categoria
    @RequestMapping( "/deldepa" )
    public String eliminardep(Model model,HttpServletRequest request,HttpServletResponse response) {
      String url="Rdepar";
    try {
        int id=Integer.parseInt(request.getParameter("idDepartamento"));
    
    if(de.delete(id)>0){
        url=Rdepar(model);
   
    }
    } catch (Exception ex) {
        System.out.println("error"+ex);
    }
     return  url;
    } 
    @RequestMapping("/Rdepar")
    public String Rdepar(Model model){
           try {
            model.addAttribute("lista2", de.readAll());
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }  
        return "Rdepar";
    }
     //update
    @RequestMapping("/updatedepa")
    public String updatedepa(Model model, departamento departamento){ 
    String url = "Rdepar"; 
    if (de.update(departamento) > 0) {
        url = Rdepar(model);
    }
    return url;
    }
    // end crud departamento
    @RequestMapping("/ConsultaMob")
    public String ConsultaMob(){  
        return "ConsultaMob";
    }
    //   CRUD REGISTRAR CATEGORIA
     @RequestMapping("/add")
    public void addnew(HttpServletRequest request, HttpServletResponse response) {
        String nombre_Categ = request.getParameter("nombre_Categ");
        categoria p = new categoria(nombre_Categ);
        if (cat.create(p) == 1) {
            try {
                response.setContentType("text/plain");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("Rcate");
            } catch (IOException ex) {
                Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
      // delete categoria
    @RequestMapping("/delcat")
    public String eliminarcat(Model model,HttpServletRequest request,HttpServletResponse response) {
      String url="Rcate";
    try {
        int id=Integer.parseInt(request.getParameter("idCategoria"));
    
    if(cat.delete(id)>0){
        url=Rcate(model);
   
    }
    } catch (Exception ex) {
        System.out.println("error"+ex);
    }
     return  url;
    }
    
    //update
    @RequestMapping("/updatecat")
    public String update(Model model, categoria categoria){ 
    String url = "Rcate"; 
    if (cat.update(categoria) > 0) {
        url = Rcate(model);
    }
    return url;
    }
    @RequestMapping("/Rcate")
    public String Rcate(Model model){  
         try {
            model.addAttribute("lista1", cat.readAll());
        } catch (Exception e) {
            System.out.println("Error: " + e);
        } 
        return "Rcate";
    }
    //  END CRUD CATEGORIA
    @RequestMapping("/Cmobiliario")
    public String Cmobiliario(){  
        return "Cmobiliario";
    }
    @RequestMapping("/fromMob")
    public String fromMob(){  
        return "fromMob";
    }
     @RequestMapping("/roles")
    public String roles(){  
        return "roles";
    }
    // fin de mapeo admin----
    
    //mapeo del docente-------
    @RequestMapping("/principal2")
    public String principal2(){
        return "principal2";
    }
    @RequestMapping("/Rdocente")
    public String Rdocente(){
        return "Rdocente";
    }
     @RequestMapping("/Cpass2")
    public String Cpass2(){
        return "Cpass2";
    }
    @RequestMapping("/fromMob2")
    public String fromMob2() {
        return "fromMob2";
    }

    @RequestMapping("/Rmobiliario2")
    public String Rmobiliario2() {
        return "Rmobiliario2";
    }
    @RequestMapping("/Rmobiliario3")
    public String Rmobiliario3() {
        return "Rmobiliario3";
    }
      @RequestMapping("/CmobiliarioBja")
    public String CmobiliarioBja() {
        return "CmobiliarioBja";
    }
}
