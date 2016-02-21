package com.tgmc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addFinancial")
public class addFinancial extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addFinancial() {
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
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String sex = request.getParameter("group1");
		String purpose = request.getParameter("purpose");
		if (first_name != null && last_name != null && email != null
				&& date != null && sex != null && purpose != null) {
			Financial f = new Financial(first_name, last_name, email, date,
					sex, purpose);
			if (DBOperation.addFinancial(f)) {
				response.sendRedirect("index.jsp");
			} else {
				doGet(request, response);
			}
		}
	}

}
