package com.RentLoGo.rentCar.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("carService")
public class CarServiceImpl implements CarService{

	@Autowired
	private CarMapper carMapper;
	
	@Override
	public List<CarDTO> selectAllrentCar() {

		System.out.println("carService 실행....");
		List<CarDTO> list = carMapper.selectAllrentCar();
		System.out.println("carService 실행 후 list >>>>" + list );
		
		return list;
	}

}