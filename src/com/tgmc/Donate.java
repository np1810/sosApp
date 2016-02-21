package com.tgmc;

public class Donate {

	String name, amount, address;

	public Donate(String name, String amount, String address) {
		this.name = name;
		this.amount = amount;
		this.address = address;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getAmount() {
		return this.amount;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress() {
		return this.address;
	}
}
