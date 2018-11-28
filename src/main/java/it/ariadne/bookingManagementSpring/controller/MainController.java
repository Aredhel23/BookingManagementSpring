package it.ariadne.bookingManagementSpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
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
	
	@RequestMapping(value = { "/richiesteutente", "/userrichieste" }, method = RequestMethod.GET)
    public String richiesteutente(Model model) {
        return "richiesteutente";
    }
	@RequestMapping(value = { "/prenotazioniutente", "/userprenotazioni" }, method = RequestMethod.GET)
    public String prenotazioniutente(Model model) {
        return "prenotazioniutente";
    }

}
