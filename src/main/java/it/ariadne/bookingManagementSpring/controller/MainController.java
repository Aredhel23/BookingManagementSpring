package it.ariadne.bookingManagementSpring.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import it.ariadne.bookingManagementSpring.dao.AppUserDAO;
import it.ariadne.bookingManagementSpring.dao.BookingsDAO;
import it.ariadne.bookingManagementSpring.dao.ResourceDAO;
import it.ariadne.bookingManagementSpring.entity.AppUser;
import it.ariadne.bookingManagementSpring.entity.Bookings;
import it.ariadne.bookingManagementSpring.entity.Resource;
import it.ariadne.bookingManagementSpring.entity.impl.Car;
import it.ariadne.bookingManagementSpring.entity.impl.Projector;
import it.ariadne.bookingManagementSpring.printer.BookPrinter;
import it.ariadne.bookingManagementSpring.utils.TableResponse;
import it.ariadne.bookingManagementSpring.utils.WebUtils;


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
	
	@RequestMapping(value = { "/risorseutente"}, method = RequestMethod.GET)
    public String risorseutente(Model model) {
        return "risorseutente";
    }
	
	
	
	@RequestMapping(value = { "/", "/newlogin"}, method = RequestMethod.GET)
    public String newlogin(Model model) {
        return "newlogin";
    }
	
	
	@Autowired
	ResourceDAO resourceDAO;
	@Autowired
	BookingsDAO bookingsDAO;
	
	@Autowired
	AppUserDAO app;
	
	@Autowired
	TableResponse<Resource> proj;
	
	@Autowired
	TableResponse<BookPrinter> book;
	
	@Autowired
	TableResponse<BookPrinter> pastbook;
	
	@Autowired
	TableResponse<BookPrinter> futurebook;
	
	@ResponseBody
	@RequestMapping("/getresources")
	public TableResponse<Resource> index() {
		Iterable<Resource> all = resourceDAO.findAll();		
		proj.setData(all);
		return proj;
	}
	
	// -------------------Bookings Printing-----------------------------------------------
	
	@ResponseBody
	@RequestMapping("/getbookings")	
	public TableResponse<BookPrinter> indexbook() {
		Iterable<Bookings> all = bookingsDAO.findAll();
		List<BookPrinter> prin = new ArrayList<>();		
		for(Bookings b : all) {
			 BookPrinter bPrin = new BookPrinter();
			 Resource r = b.getResource();
			 bPrin.setName(b.getName());
			 bPrin.setResourceId(r.getId());
			 bPrin.setResourceLim(r.getLim());
			 bPrin.setResourceName(r.getName());
			 bPrin.setStart(b.getStartDate());
			 bPrin.setEnd(b.getEndDate());
			 bPrin.setUser(b.getAppUser().getUserName());
			 prin.add(bPrin);			
		}
		book.setData(prin);
		return book;
	}
	
	@ResponseBody
	@RequestMapping("/getuserbookings")	
	public TableResponse<BookPrinter> indexUserbook(Model model, Principal principal) {
		Iterable<Bookings> all = bookingsDAO.findAll();
		List<BookPrinter> prin = new ArrayList<>();		
		for(Bookings b : all) {
			if(b.getAppUser().getUserName().equals(principal.getName())) {
				 BookPrinter bPrin = new BookPrinter();				 
				 Resource r = b.getResource();
				 bPrin.setId(b.getId());
				 bPrin.setName(b.getName());
				 bPrin.setResourceId(r.getId());
				 bPrin.setResourceLim(r.getLim());
				 bPrin.setResourceName(r.getName());
				 bPrin.setStart(b.getStartDate());
				 bPrin.setEnd(b.getEndDate());
				 bPrin.setUser(b.getAppUser().getUserName());
				 prin.add(bPrin);			
			}
		}
		book.setData(prin);
		return book;
	}
	@ResponseBody
	@RequestMapping("/getfutureuserbookings")	
	public TableResponse<BookPrinter> indexFutureUserbook(Model model, Principal principal) {
		Iterable<Bookings> all = bookingsDAO.findAll();
		List<BookPrinter> prin = new ArrayList<>();		
		for(Bookings b : all) {
			if(b.getAppUser().getUserName().equals(principal.getName())) {
				DateTime d = new DateTime(b.getStartDate()); 
				if(d.isAfterNow()) {
					BookPrinter bPrin = new BookPrinter();
					 Resource r = b.getResource();
					 bPrin.setId(b.getId());
					 bPrin.setName(b.getName());
					 bPrin.setResourceId(r.getId());
					 bPrin.setResourceLim(r.getLim());
					 bPrin.setResourceName(r.getName());
					 bPrin.setStart(b.getStartDate());
					 bPrin.setEnd(b.getEndDate());
					 bPrin.setUser(b.getAppUser().getUserName());
					 prin.add(bPrin);
				}
			}
		}
		futurebook.setData(prin);
		return futurebook;
	}
	@ResponseBody
	@RequestMapping("/getpastuserbookings")	
	public TableResponse<BookPrinter> indexPastUserbook(Model model, Principal principal) {
		Iterable<Bookings> all = bookingsDAO.findAll();
		List<BookPrinter> prin = new ArrayList<>();		
		for(Bookings b : all) {
			if(b.getAppUser().getUserName().equals(principal.getName())) {
				DateTime d = new DateTime(b.getStartDate());
				if (d.isBeforeNow()) {
					 Resource r = b.getResource();					
					 BookPrinter bPrin = new BookPrinter();
					 bPrin.setId(b.getId());
					 bPrin.setName(b.getName());
					 bPrin.setResourceId(r.getId());
					 bPrin.setResourceLim(r.getLim());
					 bPrin.setResourceName(r.getName());
					 bPrin.setStart(b.getStartDate());
					 bPrin.setEnd(b.getEndDate());
					 bPrin.setUser(b.getAppUser().getUserName());
					 prin.add(bPrin);	
				}
			}
		}
		pastbook.setData(prin);
		return pastbook;
	}
	
	//-------------------------Bookings Printing End-------------------------------------------------------
		 
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
	 
	 @RequestMapping(value = "/deletebookings", method = RequestMethod.POST)
	 public String deleteBooking(HttpServletRequest request, Model model, Principal principal ) {
		 int id = Integer.parseInt(request.getParameter("id"));
		 Optional<Bookings> book =bookingsDAO.findById((long) id);
		 if(book.isPresent()) {
			 if(book.get().getAppUser().getUserName().equals(principal.getName())) {
				 if(book.get().getName().equals(request.getParameter("nameBook")) && 
						 book.get().getResource().getType().equals(request.getParameter("type")) && 
						 book.get().getResource().getName().equals(request.getParameter("nameRes"))) {
					 bookingsDAO.delete(book.get());
					 String mess = "Prenotazione Eliminata con Successo";
					 	model.addAttribute("messDeleted", mess);
					 return "prenotazioniutente";
				 }
				 
				 else {
					 String error = "Prenotazione non eliminata, uno o più campi "
					 		+ "non corrispondenti all'id della prenotazione selezionata";		 		
				 	 model.addAttribute("errorDeleted", error);
					 return "richiesteutente";
				 }
			 }
			 else {
				 String error = "Non hai una prenotazione con questo id";		 		
				 	 model.addAttribute("errorDeleted", error);
					 return "prenotazioniutente";
					 
				 }
		 }
		 else {
			 String error = "Non hai una prenotazione con questo id";		 		
		 	 model.addAttribute("errorDeleted", error);		 		
		 	 return "prenotazioniutente";			 
			 }
		 
	 }	 
	 
	 
	 //---------------Resource Management----------------------------------------------
	 
	 @RequestMapping(value = "/admin/addResource", method = RequestMethod.POST)
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
	 
	 @RequestMapping(value = "/admin/deleteResource", method = RequestMethod.POST)
	 public String deleteResource(HttpServletRequest request, Model model ) {
		 int id = Integer.parseInt(request.getParameter("id"));
		 Optional<Resource> r = resourceDAO.findById((long) id);
		 if(r.isPresent()) {
			 if(r.get().getType().equals(request.getParameter("type"))) {
				 resourceDAO.deleteById((long) id);
				 String mess = "Risorsa Eliminata con Successo";
				 	model.addAttribute("mess", mess);
				 return "risorse";
				 } 
			 else {
				 String error = "Risorsa non eliminata, id non corrispondente al tipo di risorsa selezionato";		 		
			 	 model.addAttribute("error", error);
				 return "richieste";
			 }
		 }
		 else {
			 String error = "Risorsa non eliminata, non presente nel database";		 		
		 	 model.addAttribute("error", error);		 		
		 	 return "risorse";			 
		 }
		 
	 }
	 
	 @RequestMapping(value = "/admin/editResource", method = RequestMethod.POST)
	 public String editResource(HttpServletRequest request, Model model ) {
		 int id = Integer.parseInt(request.getParameter("id"));
		 int oldLim = Integer.parseInt(request.getParameter("oldLimes"));
		 int newLim = Integer.parseInt(request.getParameter("newLimes"));
		 Optional<Resource> r = resourceDAO.findById((long) id);
		 if(r.isPresent()) {
			 if(r.get().getType().equals(request.getParameter("type")) && r.get().getLim()== oldLim) {
				 r.get().setLim(newLim);
				 resourceDAO.save(r.get());
				 String mess = "Risorsa Modificata con Successo";
				 	model.addAttribute("messEdit", mess);
				 return "risorse";
				 } 
			 else {
				 String error = "Risorsa non modificata, id, o limite non corrispondente al tipo di risorsa selezionato";		 		
			 	 model.addAttribute("errorEdit", error);
				 return "richieste";
			 }
		 }
		 else {
			 String error = "Risorsa non modificata, non presente nel database";		 		
		 	 model.addAttribute("error", error);		 		
		 	 return "risorse";			 
		 }
		 
	 }
	 //---------------------------Resource Management End--------------------------------------------------------
	 
	 
}
