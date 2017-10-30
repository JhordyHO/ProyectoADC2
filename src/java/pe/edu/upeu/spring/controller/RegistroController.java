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
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.spring.dao.mobiliarioDAO;
import pe.edu.upeu.spring.model.mobiliario;

/**
 *
 * @author Jose Rayo
 */
@Controller
public class RegistroController {
    private mobiliarioDAO mob = new mobiliarioDAO();
    
    @RequestMapping(value = "/maper")
    public ModelAndView RedireccionRenuncia(Model model2, ModelAndView model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        switch (opc) {
            case "1":
                model.setViewName("fromMob");
                model2.addAttribute("lista",mob.readAll());
                break;
            case "2":
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
    // <---GUARDAR---->
 @RequestMapping("/save")
    public String save(Model model, mobiliario d){
        String url = "fromMob";
        try {
            if(mob.create(d)>0){
                System.out.println("Se registro corectamente");
            }
        } catch (Exception e) {
        }
        return url;
    }
 
 // <----//FIN DE GUARDAR---->
    
}
