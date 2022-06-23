package com.rentCar.car.dao;

import org.springframework.dao.DataAccessException;

import com.rentCar.car.dto.CarDTO;

public interface CarDAO {
	public void insertNewCar(CarDTO carDTO) throws DataAccessException;
}
