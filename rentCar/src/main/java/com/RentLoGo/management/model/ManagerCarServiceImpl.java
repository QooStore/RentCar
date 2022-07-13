package com.RentLoGo.management.model;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.RentLoGo.rentCar.model.AllCarDTO;

@Service("managerCarService")
public class ManagerCarServiceImpl implements ManagerCarService {

	@Autowired
	ManagerCarMapper managerCarMapper;
	
	@Override
	public void dropCar(String number) {

		System.out.println("ManagerCarService >>> mapper >> dropCar 실행");
		managerCarMapper.dropCar(number);
	}
	
	//검색
	@Override
	public List<AllCarDTO> searchCarModel(AllCarDTO dto) {
		List<AllCarDTO> list = managerCarMapper.searchCarModel(dto);
		return list;
	}

}
