package com.tgmc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class Database {

	static Connection con;

	static void Connect() {
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			// System.out.println("SUCCESS - Driver Loading");
			String ServerName = "75.126.155.153";
			int PortNumber = 50001;
			String DatabaseName = "SQLDB";
			String user = "user14603";
			String pass = "KgUcFilGcXUm";
			Properties properties = new Properties();
			properties.put("user", user);
			properties.put("password", pass);
			properties.put("sslConnection", "true");
			String url = "jdbc:db2://" + ServerName + ":" + PortNumber + "/"
					+ DatabaseName;
			// System.out.println("url: " + url);
			con = DriverManager.getConnection(url, properties);
			if (con != null) {
				System.out.println("SUCCESS - DB Connection");
			} else {
				System.out.println("FAILED - DB Connection");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	static {
		Connect();
	}

	static Connection getConnection() {
		return con;
	}

}
