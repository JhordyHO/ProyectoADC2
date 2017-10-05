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
    
   @RequestMapping("/login")
    public String index(Model model){
    //model.addAttribute("user", "jose Rayo");
        return "login";
    }
   @RequestMapping("/principal")
    public String index(){  
        return "principal";
    }
    @RequestMapping("/Rtesorera")
    public String Rtesorera(){  
        return "Rtesorera";
    }
   
}
