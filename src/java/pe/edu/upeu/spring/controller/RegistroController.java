/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
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
    Map<String, Object> mp = new HashMap<>();
    
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
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        switch (opc) {
            case "1":///registrarMobiliario
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
                    model.setViewName("fromMob");
                    }
                }catch (Exception e) {
                    System.out.println("Error al registrar"+e);
                }
                break;
            case "2":///registrar detable_partes_del mobilairio
                mob3.setIdMobiliario(Integer.parseInt(request.getParameter("idmobiliario")));
                mob3.setNombre_Mob2(request.getParameter("nombreMob2"));
                mob3.setMarca_Mob2(request.getParameter("marcaMob2"));
                mob3.setSerie_Mob2(request.getParameter("serieMob2"));
                mob3.setCantidad2(request.getParameter("cantiMob2"));
                mob3.setEstado(request.getParameter("select3"));
                mob3.setFechaReg_Mob2(request.getParameter("fechaMob2"));
                mob3.setComentario2(request.getParameter("comentaMob2"));
                try {
                    if(mob.create2(mob3)>0){
                    model.setViewName("fromMob");
                    }
                }catch (Exception e) {
                    System.out.println("Error al registrar"+e);
                }
                break;
            case "3": 

                break;
                
            case "4":
                int id = Integer.parseInt(request.getParameter("idMob"));
                try {
                    if(mob.delete(id)>0){
                       model.setViewName("fromMob");
                    }
                } catch (Exception e) {
                    System.out.println("Error al eliminar"+ e);
                }

                break;
            case "5":
                String id2 = request.getParameter("idMob2");
                try {
                    if (mob.delete2(id2)>0) {
                        model.setViewName("fromMob");
                    }
                } catch (Exception e) {
                    System.out.println("Error al eliminar"+e);
                }
                
                model.setViewName("vistas/renuncia/ejemplo");
                break;
        }
        return model;
    }
    
    @RequestMapping(value = "/lis_mobi", method = RequestMethod.POST)
    public void List_empleados(HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        try {
            mp.put("list", mob.listar2());

        } catch (Exception e) {
            System.out.println("Error al listar empleados : " + e);
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }
        @RequestMapping(value = "/vistaMob", method = RequestMethod.POST)
        public void vistaMob(HttpServletResponse response, HttpServletRequest request) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
       String idMob = request.getParameter("idMob");
        try {           
            mp.put("ls", mob.listaPrMob(idMob));
        } catch (Exception e) {
            System.out.println("Error al listar empleados : " + e);
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
        out.flush();
        out.close();
    }

}
