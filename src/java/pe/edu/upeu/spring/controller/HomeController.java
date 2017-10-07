/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Jose Rayo
 */
@Controller
public class HomeController {
    //mapeo del login
   @RequestMapping("/login")
    public String index(Model model){
    //model.addAttribute("user", "jose Rayo");
        return "login";
    }
    //pagina del admin- mapeo
   @RequestMapping("/principal")
    public String index(){  
        return "principal";
    }
    @RequestMapping("/Rtesorera")
    public String Rtesorera(){  
        return "Rtesorera";
    }
    @RequestMapping("/Cpass")
    public String Cpass(){  
        return "Cpass";
    }
    @RequestMapping("/Rresponsable")
    public String Rresponsable(){  
        return "Rresponsable";
    }
    @RequestMapping("/Rdepar")
    public String Rdepar(){  
        return "Rdepar";
    }
    @RequestMapping("/Rmobiliario")
    public String Rmobiliario(){  
        return "Rmobiliario";
    }
    @RequestMapping("/Rcate")
    public String Rcate(){  
        return "Rcate";
    }
    @RequestMapping("/Cmobiliario")
    public String Cmobiliario(){  
        return "Cmobiliario";
    }
    @RequestMapping("/fromRes")
    public String fromRes(){  
        return "fromRes";
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
