package com.RentLoGo.rentCar.model;

//CREATE TABLE "car" (
//		   "car_model" VARCHAR2(20) NOT NULL, -- 차량모델
//		   "car_size"  VARCHAR2(20) NULL,     -- 차량크기
//		   "car_type"  VARCHAR2(20) NULL,     -- 차량종류
//		   "car_made"  VARCHAR2(20) NULL,     -- 제조사
//		   "car_price" VARCHAR2(20) NULL      -- 가격
//		);

public class CarDTO {
	private String car_model;
	private String car_size;
	private String car_type;
	private String car_made;
	private String car_price;
	
	
	public String getCar_model() {
		return car_model;
	}
	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}
	public String getCar_size() {
		return car_size;
	}
	public void setCar_size(String car_size) {
		this.car_size = car_size;
	}
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public String getCar_made() {
		return car_made;
	}
	public void setCar_made(String car_made) {
		this.car_made = car_made;
	}
	public String getCar_price() {
		return car_price;
	}
	public void setCar_price(String car_price) {
		this.car_price = car_price;
	}
	
	
}
