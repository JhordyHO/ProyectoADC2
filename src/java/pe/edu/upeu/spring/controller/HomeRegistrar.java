/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.controller;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdk.internal.org.objectweb.asm.tree.analysis.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.spring.dao.Detalle_mobiliarioDAO;
import pe.edu.upeu.spring.model.detalle_mobiliario;

/**
 *
 * @author Garcia
 */
@Controller
public class HomeRegistrar {

    Detalle_mobiliarioDAO dao = new Detalle_mobiliarioDAO();
    detalle_mobiliario da = new detalle_mobiliario();

    @RequestMapping(value = "/xxx", method = RequestMethod.POST)

    public ModelAndView crear(Model model1, ModelAndView model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        String opc = request.getParameter("opc");
       
        switch (opc) {
            
            case "1":
                 
                da.setIdMobiliario(Integer.parseInt(request.getParameter("id1")));
                da.setIdPersona(Integer.parseInt(request.getParameter("id2")));
                da.setCantidad_det_Mob(request.getParameter("cantidad1"));
                da.setDescripcion_det_Mob(request.getParameter("descripcion2"));
                da.setEstado_det_Mob(request.getParameter(" estado1"));
                da.setRegFeha_det_Mob(request.getParameter("fecha1"));
              
                  
                try {
                    if(dao.create(da)>0){
                        System.out.println("exito");
                        
                    }
                    model.setViewName("ConsultaMob");
                } catch (Exception e) {
                       System.out.println("error"+e);
                }
                
                
      break;

    
}
    return model;
    } 
   
}
   

    
