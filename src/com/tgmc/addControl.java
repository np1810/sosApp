package com.tgmc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addControl")
public class addControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addControl() {
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
		String place = request.getParameter("place");
		String items = request.getParameter("items");
		String pincode = request.getParameter("pincode");
		String address = request.getParameter("address");
		String type = request.getParameter("type");
		if (place != null && items != null && pincode != null
				&& address != null && type != null) {
			User u = new User(place, items, pincode, address, type);
			if (DBOperation.addUser(u)) {
				response.sendRedirect("sos.jsp");
			} else {
				doGet(request, response);
			}
		}
	}

}
