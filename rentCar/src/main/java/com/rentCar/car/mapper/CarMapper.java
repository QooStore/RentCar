package com.rentCar.car.mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import java.util.Map;

@Mapper
public interface CarMapper {
	public List<Map<String, String>> popularCarList();
}
