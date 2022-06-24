package com.rentCar.car.dto;

//CREATE TABLE "car" (
//		   "car_model" VARCHAR2(20) NOT NULL, -- 차량모델
//		   "car_size"  VARCHAR2(20) NULL,     -- 차량크기
//		   "car_type"  VARCHAR2(20) NULL,     -- 차량종류
//		   "car_made"  VARCHAR2(20) NULL,     -- 제조사
//		   "car_price" VARCHAR2(20) NULL      -- 가격
//		);

public class CarDTO {
	private String carModel;
	private String carSize;
	private String carType;
	private String carMade;
	private String carPrice;
	
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public String getCarSize() {
		return carSize;
	}
	public void setCarSize(String carSize) {
		this.carSize = carSize;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getCarMade() {
		return carMade;
	}
	public void setCarMade(String carMade) {
		this.carMade = carMade;
	}
	public String getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(String carPrice) {
		this.carPrice = carPrice;
	}
	
}
