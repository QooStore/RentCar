package com.RentLoGo.rentCar.model;

import java.util.List;
import java.util.Map;

public interface CarMapper {

	public List<CarDTO> selectAllrentCar();
	
	//manageCar
	public List<AllCarDTO> selectManageRentCar();
	public void deleteManageRentCar(AllCarDTO allCar);
	
	public List<AllCarDTO> selectCarList(Map index);
}
