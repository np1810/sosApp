package com.tgmc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBOperation {

	public static String getAllInfo() {
		String str = new String();
		try {
			Connection con = Database.getConnection();
			String q = "SELECT * FROM relief";
			PreparedStatement pst = con.prepareStatement(q);
			ResultSet rs = pst.executeQuery();
			str += "{\"places\":[";
			while (rs.next()) {
				str += "{\"place\": \"" + rs.getString(2) + "\",";
				str += "\"items\": \"" + rs.getString(3) + "\",";
				str += "\"pincode\": \"" + rs.getString(4) + "\",";
				str += "\"address\": \"" + rs.getString(5) + "\",";
				str += "\"type\": \"" + rs.getString(6) + "\"},";
			}
			str = str.substring(0, str.length() - 1) + "]}";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	public static String getSms(String fromNumber, String pincode,
			String address) {
		String str = new String();
		try {
			Connection con = Database.getConnection();
			String q1 = "SELECT * FROM relief WHERE pincode=" + pincode;
			PreparedStatement pst1 = con.prepareStatement(q1);
			ResultSet rs1 = pst1.executeQuery();
			int i = 1;
			while (rs1.next() && i <= 5) {
				str += "Place #" + (i++) + ": " + rs1.getString(2) + ", ";
				str += rs1.getString(5) + "\n";
				str += "Type: " + rs1.getString(6) + "\n";
				str += rs1.getString(3) + "\n\n";
			}
			if (i == 1)
				str += "\nSorry could not find center in your pincode!";
			else {
				str = "\nTGMC SoS App\n" + str;
				String q2 = "INSERT INTO requests (from, pincode, address) VALUES ('"
						+ fromNumber + "', '" + pincode + "', '" + address + "')";
				PreparedStatement pst2 = con.prepareStatement(q2);
				pst2.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	public static boolean addUser(User u) {
		try {
			Connection con = Database.getConnection();
			String q = "INSERT INTO relief (place, items, pincode, address, type) VALUES ('"
					+ u.getPlace()
					+ "', '"
					+ u.getItems()
					+ "', '"
					+ u.getPincode()
					+ "', '"
					+ u.getAddress()
					+ "', '"
					+ u.getType() + "')";
			PreparedStatement pst = con.prepareStatement(q);
			pst.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;

		}
	}

	public static boolean addDonation(Donate d) {
		try {
			Connection con = Database.getConnection();
			String q = "INSERT INTO support (name, amount, address) VALUES ('"
					+ d.getName() + "', '" + d.getAmount() + "','"
					+ d.getAddress() + "')";
			PreparedStatement pst = con.prepareStatement(q);
			pst.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean addFinancial(Financial f) {
		try {
			Connection con = Database.getConnection();
			String q = "INSERT INTO user(firstname,lastname,email,dob,sex,purpose) VALUES (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1, f.getFirstName());
			ps.setString(2, f.getLastName());
			ps.setString(3, f.getEmail());
			ps.setString(4, f.getDate());
			ps.setString(5, f.getSex());
			ps.setString(6, f.getPurpose());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
