package org.khmeracademy.auction.entities.input;

public class AddBrand {
	private int brand_id;
	private String brand_name;
	private String brand_description;
	private boolean status;
	public int getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getBrand_description() {
		return brand_description;
	}
	public void setBrand_description(String brand_description) {
		this.brand_description = brand_description;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
		
}
