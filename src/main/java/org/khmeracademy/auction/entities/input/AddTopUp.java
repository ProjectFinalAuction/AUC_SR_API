package org.khmeracademy.auction.entities.input;

import org.khmeracademy.auction.entities.User;

public class AddTopUp {
	private int top_up_id;
	private User user;     // user object
	private String currency;
	private double amount;

	public int getTop_up_id() {
		return top_up_id;
	}
	public void setTop_up_id(int top_up_id) {
		this.top_up_id = top_up_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
}
