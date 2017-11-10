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
import org.springframework.web.portlet.bind.annotation.RenderMapping;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.spring.dao.PersonaDAO;
import pe.edu.upeu.spring.dao.usuarioDAO;
import pe.edu.upeu.spring.model.Persona;
import pe.edu.upeu.spring.model.usuarios;

/**
 *
 * @author Garcia
 */
@Controller
public class HomeControlerPer {

    Map<String, Object> mp = new HashMap<String, Object>();
    private final PersonaDAO p = new PersonaDAO();
    private final usuarioDAO da= new usuarioDAO();
    usuarios sa= new usuarios();
    Persona pa = new Persona();
    
    @RequestMapping("/lista")
    public void listame(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        try {
            mp.put("deyvis", p.listarAmiguito());
        } catch (Exception e) {
            e.printStackTrace();
        }
        Gson gson = new Gson();
        out.println(gson.toJson(mp));
    }
    

    @RequestMapping(value = "/guardar", method = RequestMethod.POST)

    public ModelAndView crear(Model model1, ModelAndView model, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("hola");
        String opc = request.getParameter("opc");
        switch (opc) {
            case "1":
                pa.setIdRol(Integer.parseInt(request.getParameter("rol")));
                pa.setIdDepartamento(Integer.parseInt(request.getParameter("depa")));
                pa.setNombre_Per(request.getParameter("nombre"));
                pa.setApellidoPater_Per(request.getParameter("apellidoP"));
                pa.setApellidoMater_Per(request.getParameter("apellidoM"));
                pa.setFechaCumpl_Date(request.getParameter("fecha"));
                pa.setDni_Per(Integer.parseInt(request.getParameter("dni")));
                pa.setTelefono_Per(Integer.parseInt(request.getParameter("telefono")));
                pa.setCorreo_Per(request.getParameter("correo"));
                sa.setUser(request.getParameter("user"));
                sa.setPass(request.getParameter("password"));
                pa.setSexo_Per(request.getParameter("sexo"));
                 try {
                    if(p.createN(pa,sa)>0){
                      model1.addAttribute("deyvis",p.listarAmiguito());
                      model.setViewName("Rresponsable");
                      
                    
                    }
                } catch (Exception e) {
                   e.printStackTrace();
                     System.out.println("error:"+e);
                }
                 break;

        }
     return model;
    }
   

}
