package com.RentLoGo.management.model;

import java.util.List;

import com.RentLoGo.rentCar.model.AllCarDTO;

public interface ManagerCarService {

	public void dropCar(String number);
	//검색
	List<AllCarDTO> searchCarModel(AllCarDTO dto);
}
