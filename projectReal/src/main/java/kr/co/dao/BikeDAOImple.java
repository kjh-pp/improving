package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BikeVO;


@Repository
public class BikeDAOImple implements BikeDAO{

	@Inject
	SqlSession ss;
	
	@Override
	public List<BikeVO> selectAll() {
		return ss.selectList("list");
	}


	@Override
	public Integer bikeR(String address) {
		ss.update("bikeRental", address);
		
		return (Integer)ss.selectOne("bikeReturnOffice_num", address);
	}


	@Override
	public void bikeRt(String addr) {
		ss.update("bikeReturn", addr);
		
	}

}
