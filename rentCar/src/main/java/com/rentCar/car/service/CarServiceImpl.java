package com.rentCar.car.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rentCar.car.dto.CarDTO;
import com.rentCar.car.mapper.CarMapper;

@Service
public class CarServiceImpl implements CarService{
	
	@Autowired
	private CarMapper mapper;
	
	@Override
	public List<CarDTO> popularCarList(){
		return mapper.popularCarList();
	}
}
