package it.ariadne.bookingManagementSpring.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gigetto")
public class GigettoServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String err = "";
		String m = "";
		if(!name.startsWith("T")) {
			err = "Errore";
		}
		else {
			m = "Congratulazioni!";
		}
			
		req.getSession().setAttribute("error", err);
		req.getSession().setAttribute("mess", m);
		req.getSession().setAttribute("name", name);
		resp.sendRedirect("/richieste");
		
	}

}
