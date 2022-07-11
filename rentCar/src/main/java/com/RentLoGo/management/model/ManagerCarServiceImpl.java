package com.RentLoGo.management.model;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

@Service("managerCarService")
public class ManagerCarServiceImpl implements ManagerCarService {

	@Autowired
	ManagerCarMapper managerCarMapper;
	
	@Override
	public void dropCar(String number) {

		System.out.println("ManagerCarService >>> mapper >> dropCar 실행");
		managerCarMapper.dropCar(number);
	}

}
