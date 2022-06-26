package com.RentLoGo.rentCar.model;

import org.springframework.dao.DataAccessException;

public interface CarDAO {
	public void insertNewCar(CarDTO carDTO) throws DataAccessException;
}
