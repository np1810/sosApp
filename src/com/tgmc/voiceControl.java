package com.tgmc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.twilio.sdk.verbs.Message;
import com.twilio.sdk.verbs.TwiMLException;
import com.twilio.sdk.verbs.TwiMLResponse;

@WebServlet("/voiceControl")
public class voiceControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public voiceControl() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String fromNumber = request.getParameter("From");
		String toNumber = request.getParameter("To");
		String pincode = request.getParameter("Digits");
		System.out.println("Received New Call");
		System.out.println("From: " + fromNumber);
		System.out.println("To: " + toNumber);
		System.out.println("Pincode: " + pincode);
		TwiMLResponse twiml = new TwiMLResponse();
		Message sms;
		if (fromNumber != null && toNumber != null && pincode != null)
			sms = new Message(DBOperation.getSms(fromNumber, pincode, " "));
		else
			sms = new Message(
					"\nIncorrect Pincode or No Relief Centers Found!\nPlease Try Again...");
		try {
			System.out.println("SENT: " + sms.getBody());
			twiml.append(sms);
			response.setContentType("application/xml");
			response.getWriter().print(twiml.toXML());
		} catch (TwiMLException e) {
			e.printStackTrace();
		}
	}
}
