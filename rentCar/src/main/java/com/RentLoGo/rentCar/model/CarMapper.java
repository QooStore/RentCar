package com.RentLoGo.rentCar.model;

import java.util.List;

public interface CarMapper {

	public List<CarDTO> selectAllrentCar();
	
	public List<AllCarDTO> selectManageRentCar();
	public List<AllCarDTO> deleteManageRentCar();
	
	public List<AllCarDTO> selectCarList();
}
