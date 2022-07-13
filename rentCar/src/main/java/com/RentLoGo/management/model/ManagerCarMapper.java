package com.RentLoGo.management.model;

import java.util.List;

import com.RentLoGo.rentCar.model.AllCarDTO;

public interface ManagerCarMapper {

	//렌터카 삭제
	public void dropCar(String number);
	//모델명 검색
	List<AllCarDTO> searchCarModel(AllCarDTO dto);
}
