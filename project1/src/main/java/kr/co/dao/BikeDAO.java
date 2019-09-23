package kr.co.dao;

import java.util.List;

import kr.co.vo.BikeVO;

public interface BikeDAO {

	public List<BikeVO> selectAll();
	public Integer bikeR(String addr);
	public void bikeRt(String addr);
}
