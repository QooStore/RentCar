package com.rentCar.car.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import com.rentCar.car.dto.CarDTO;

//@Repository("carDAO")
public class CarDAOImpl  implements CarDAO{
	
	@Autowired
	private SqlSession sqlSession;	

	@Override
	public void insertNewCar(CarDTO carDTO) throws DataAccessException{
		sqlSession.insert("mapper.car.insertNewCar",carDTO);
	}
	
}
