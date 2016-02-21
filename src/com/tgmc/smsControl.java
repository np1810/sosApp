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

@WebServlet("/smsControl")
public class smsControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public smsControl() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String fromNumber = request.getParameter("From");
		String toNumber = request.getParameter("To");
		String bodyMsg = request.getParameter("Body");
		System.out.println("Received New Message");
		System.out.println("From: " + fromNumber);
		System.out.println("To: " + toNumber);
		System.out.println("Body: " + bodyMsg);
		TwiMLResponse twiml = new TwiMLResponse();
		boolean noError = false;
		String[] keys = null;
		Message sms;
		if (fromNumber != null && toNumber != null && bodyMsg != null) {
			keys = bodyMsg.split(" ", 3);
			if (keys.length >= 2)
				noError = true;
		}
		if (noError && keys[0].equalsIgnoreCase("RELIEF")) {
			System.out.println("Pincode: " + keys[1]);
			System.out.println("Address: " + keys[2]);
			sms = new Message(DBOperation.getSms(fromNumber, keys[1], keys[2]));
		} else
			sms = new Message(
					"\nIncorrect SMS Format!\nPlease Try Again...\nExample:\nRELIEF 248001 39/11 Canal Road, Jakhan");
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
