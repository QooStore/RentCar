package com.rentCar.car.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rentCar.car.mapper.CarMapper;

@Service
public class CarService {
	
	@Autowired
	CarMapper carMapper;
	
	public List<Map<String, String>> popularCarList(){
		List<Map<String, String>> list = new ArrayList<>();
		list = carMapper.popularCarList();
		return list;
	}
}
