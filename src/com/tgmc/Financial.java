package com.tgmc;

public class Financial {

	String first_name, last_name, email, date, sex, purpose;

	public Financial(String first_name, String last_name, String email,
			String date, String sex, String purpose) {
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.date = date;
		this.sex = sex;
		this.purpose = purpose;
	}

	public String getFirstName() {
		return first_name;
	}

	public void setFirstName(String first_name) {
		this.first_name = first_name;
	}

	public String getLastName() {
		return last_name;
	}

	public void setLastName(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
}
