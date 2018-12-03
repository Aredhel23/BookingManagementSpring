package it.ariadne.bookingManagementSpring.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import it.ariadne.bookingManagementSpring.dao.ResourceDAO;
import it.ariadne.bookingManagementSpring.entity.Resource;
import it.ariadne.bookingManagementSpring.entity.impl.Car;
import it.ariadne.bookingManagementSpring.entity.impl.Projector;
import it.ariadne.bookingManagementSpring.utils.TableResponse;
import it.ariadne.bookingManagementSpring.utils.WebUtils;
import it.ariadne.bookingManagementSpring.entity.Resource;


@Controller
public class MainController {
	@RequestMapping(value = {"/home" }, method = RequestMethod.GET)
    public String homePage(Model model) {
        return "homePage";
    }
	
	@RequestMapping(value = { "/prenotazioni"}, method = RequestMethod.GET)
    public String prenotazioni(Model model) {
        return "prenotazioni";
    }
	@RequestMapping(value = { "/richieste"}, method = RequestMethod.GET)
    public String richieste(Model model) {
        return "richieste";
    }
	@RequestMapping(value = { "/risorse"}, method = RequestMethod.GET)
    public String risorse(Model model) {
        return "risorse";
    }
	@RequestMapping(value = { "/user", "/userhome" }, method = RequestMethod.GET)
    public String homePageUser(Model model) {
        return "homePageUser";
    }
	
	@RequestMapping(value = { "/richiesteutente", "/userrichieste" }, method = RequestMethod.GET)
    public String richiesteutente(Model model) {
        return "richiesteutente";
    }
	@RequestMapping(value = { "/prenotazioniutente", "/userprenotazioni" }, method = RequestMethod.GET)
    public String prenotazioniutente(Model model) {
        return "prenotazioniutente";
    }
	
	@RequestMapping(value = { "/", "/newlogin"}, method = RequestMethod.GET)
    public String newlogin(Model model) {
        return "newlogin";
    }
	
	
	@Autowired
	ResourceDAO resourceDAO;
	
	@Autowired
	TableResponse<Resource> proj;
	
	@ResponseBody
	@RequestMapping("/getresources")
	public TableResponse<Resource> index() {
		Iterable<Resource> all = resourceDAO.findAll();
		
		proj.setData(all);
		return proj;
	}
		 
	 @RequestMapping(value = "/403Page", method = RequestMethod.GET)
	    public String accessDenied(Model model, Principal principal) {
	 
	        if (principal != null) {
	            User loginedUser = (User) ((Authentication) principal).getPrincipal();
	 
	            String userInfo = WebUtils.toString(loginedUser);
	 
	            model.addAttribute("userInfo", userInfo);
	 
	            String message = "Hi " + principal.getName() //
	                    + "<br> You do not have permission to access this page!";
	            model.addAttribute("message", message);
	 
	        }
	 
	        return "403Page";
	    }
	 
	 @RequestMapping(value = "/addResource", method = RequestMethod.POST)
	 public String addResource(HttpServletRequest request, Model model ) {
		 String type = request.getParameter("type");
		 String name = request.getParameter("name");
		 int limes = Integer.parseInt(request.getParameter("limes"));
		 Resource r = null;
		 	if(type.equals("Macchina")) {
		 		r = new Car();
		 	}
		 	else if(type.equals("Proiettore")) {
		 		r = new Projector();
		 	}
		 	else {
		 		String error = "Risorsa non aggiunta, non presente tra le scelte possibili";		 		
		 		model.addAttribute("error", error);		 		
		 		return "risorse";
		 	}
		 	r.setLim(limes);
		 	r.setName(name);
		 	resourceDAO.save(r);
		 	String mess = "Risorsa Aggiunta con Successo";
		 	model.addAttribute("mess", mess);
		 	return "risorse";
		 	
		}

}
