/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;
import pe.edu.upeu.spring.dao.rolesDAO;
import pe.edu.upeu.spring.dao.usuarioDAO;
import pe.edu.upeu.spring.util.Conexion;

/**
 *
 * @author Jose Rayo
 */
@Controller
public class LoginController {
    usuarioDAO us= new usuarioDAO();
    rolesDAO rol = new rolesDAO();
    Conexion cx = new Conexion();
    Map<String, Object> mp = new HashMap<>();
    
        //mapeo del login
   @RequestMapping("/login")
    public String index(Model model){
    //model.addAttribute("user", "jose Rayo");
        return "login";
    }
    
    @RequestMapping("/out")
    public String out (){
    String url="principal";
    Connection cx = Conexion.cerrar();
    if(cx == null){       
        url="login";
        }
    return url;
   }
    
    
    
     @RequestMapping("/log")
   public String Logueo(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException{
        String url="login";
        HttpSession session=request.getSession();
       try {
            String Usuario = request.getParameter("user");
            String Clave = request.getParameter("clave");      
            ArrayList<Map<String, Object>> user = us.validar(Usuario, Clave);
             if (Usuario.equals("") && Clave.equals("")) {
                url="login";
            } else if (user.size() == 1) {
                session.setAttribute("USER",Usuario);
                session.setAttribute("IDPER", user.get(0).get("idPersona"));
                session.setAttribute("IDROL", user.get(0).get("idRoles"));
                session.setAttribute("DEPARTAMENTO_ID", user.get(0).get("idDepartamento"));
                session.setAttribute("IDUSER", user.get(0).get("idusuario"));
                session.setAttribute("NOMBRE_PER", user.get(0).get("nombre_Per"));
                session.setAttribute("APELLIDO_PATER", user.get(0).get("apellidoPater_Per"));
                session.setAttribute("APELLIDO_MATER", user.get(0).get("apellidoMater_Per"));              
                session.setAttribute("FECHA_CUMP", user.get(0).get("fechaCumpl_Date"));
                session.setAttribute("DNI", user.get(0).get("dni_Per"));
                session.setAttribute("TELEFONO", user.get(0).get("telefono_Per"));
                session.setAttribute("CORREO", user.get(0).get("correo_Per"));
                session.setAttribute("SEXO", user.get(0).get("sexo_Per"));
                session.setAttribute("NOMBRE_AP", user.get(0).get("nombre_Per") + " " + user.get(0).get("apellidoPater_Per"));
                session.setAttribute("NOMBRE_ROL", user.get(0).get("nombre_Rol"));
                mp.put("rpta", true);
                url="principal";
            }
             else {
                mp.put("rpta", false);
                mp.put("message", "Usuario o clave incorrecta.");
            }
            mp.put("status", true);        
        } catch (Exception ex) {
            System.out.println("Error : " + ex);
            mp.put("status", false);
            mp.put("message", ex.getMessage());
        }     
       return url;
    }
  
}
