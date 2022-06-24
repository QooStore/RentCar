package com.rentCar.car.mapper;

import com.rentCar.car.dto.CarDTO;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CarMapper {
	public List<CarDTO> popularCarList();
}
