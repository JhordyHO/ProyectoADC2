/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.spring.dao.mobiliarioDAO;
import pe.edu.upeu.spring.model.mobiliario;
import pe.edu.upeu.spring.model.mobiliariopartes;

/**
 *
 * @author Jose Rayo
 */
@Controller
public class RegistroController {
    private mobiliarioDAO mob = new mobiliarioDAO();
    private mobiliario mob2 = new mobiliario();
    private mobiliariopartes mob3 = new mobiliariopartes();
    
    @RequestMapping(value = "/maper")
    public ModelAndView RedireccionRenuncia(Model model2, ModelAndView model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        switch (opc) {
            case "1":
                model.setViewName("Rresponsable");
                break;
            case "2":
                model.setViewName("Rdepar");
                break;
            case "3":
                model.setViewName("fromMob");
                model2.addAttribute("lista",mob.readAll());
                
                break;
            case "4":
                model.setViewName("Rcate");
                break;
            case "5":
                model.setViewName("roles");
                break;
        }
        return model;
    }
    
    @RequestMapping(value = "/regist", method = RequestMethod.POST)
    public ModelAndView registroMob(Model model2, ModelAndView model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String opc = request.getParameter("opc");
        switch (opc) {
            case "1":
                mob2.setIdCategoria(Integer.parseInt(request.getParameter("categoria")));
                mob2.setIdDepartamento(Integer.parseInt(request.getParameter("departamento")));
                mob2.setNombre_Mob(request.getParameter("nombreMob"));
                mob2.setMarca_Mob(request.getParameter("marcaMob"));
                mob2.setSerie_Mob(request.getParameter("serieMob"));
                mob2.setCantidad(request.getParameter("cantiMob"));
                mob2.setEstado(request.getParameter("select3"));
                mob2.setFechaReg_Mob(request.getParameter("fechaMob"));
                mob2.setComentario(request.getParameter("comentaMob"));
                try {
                    if(mob.create(mob2)>0){
                    model2.addAttribute("lista",mob.readAll());
                    model.setViewName("fromMob");
                    }
                }catch (Exception e) {
                    System.out.println("Error al registrar"+e);
                }
                break;
            case "2":
                mob3.setIdMobiliario(Integer.parseInt(request.getParameter("idmobiliario")));
                mob3.setNombre_Mob2(request.getParameter("nombreMob"));
                mob3.setMarca_Mob2(request.getParameter("marcaMob"));
                mob3.setSerie_Mob2(request.getParameter("serieMob"));
                mob3.setCantidad2(request.getParameter("cantiMob"));
                mob3.setEstado(request.getParameter("select3"));
                mob3.setFechaReg_Mob2(request.getParameter("fechaMob"));
                mob3.setComentario2(request.getParameter("comentaMob"));
                try {
                    if(mob.create2(mob3)>0){
                    model2.addAttribute("lista",mob.readAll());
                    model.setViewName("fromMob");
                    }
                }catch (Exception e) {
                    System.out.println("Error al registrar"+e);
                }
 
                model.setViewName("Rcate");
                break;
            case "3":
                model.setViewName("vistas/renuncia/Rautorizar");
                break;
            case "4":
                model.setViewName("vistas/renuncia/Aautorizar");
                break;
            case "5":
                model.setViewName("vistas/renuncia/ejemplo");
                break;
        }
        return model;
    }

}
