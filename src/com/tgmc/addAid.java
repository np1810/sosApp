package com.tgmc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addAid")
public class addAid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addAid() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		request.setAttribute("err", "Seems You have already done your part!");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String amount = request.getParameter("amount");
		if (fname != null && lname != null && address != null && amount != null) {
			String name = fname + " " + lname;
			Donate d = new Donate(name, amount, address);
			if (DBOperation.addDonation(d)) {
				response.sendRedirect("sos.jsp");
			} else {
				doGet(request, response);
			}
		}
	}

}
