package com.rentCar.car.dto;

import lombok.Data;

//CREATE TABLE "car" (
//		   "car_model" VARCHAR2(20) NOT NULL, -- 차량모델
//		   "car_size"  VARCHAR2(20) NULL,     -- 차량크기
//		   "car_type"  VARCHAR2(20) NULL,     -- 차량종류
//		   "car_made"  VARCHAR2(20) NULL,     -- 제조사
//		   "car_price" VARCHAR2(20) NULL      -- 가격
//		);

@Data
public class CarDTO {
	private String carModel; // 차량모델
	private String carSize; // 차량크기
	private String carType; //차량종류
	private String carMade; //제조사
	private String carPrice; //가격
	
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
