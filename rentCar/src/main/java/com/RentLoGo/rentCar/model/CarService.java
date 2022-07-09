package com.RentLoGo.rentCar.model;

import java.util.List;

public interface CarService {

	public List<CarDTO> selectAllrentCar();
	
	/* manage rentCar*/
	public List<AllCarDTO> selectManageRentCar();
	public void  deleteManageRentCar(AllCarDTO allCar) throws Exception;
	
	// 상품리스트
	public List<AllCarDTO> selectCarList();
}
