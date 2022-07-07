package com.RentLoGo.rentCar.model;

import java.util.List;

public interface CarService {

	public List<CarDTO> selectAllrentCar();
	
	/* manage rentcar 조회 */
	public List<AllCarDTO> selectManageRentCar();
	
	// 상품리스트
	public List<AllCarDTO> selectCarList();
}
