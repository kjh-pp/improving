package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BikeDAO;
import kr.co.vo.BikeVO;

@Service
public class BikeServiceImple implements BikeService{
	
	@Inject
	private BikeDAO bdao;
	

	@Override
	public List<BikeVO> selectList() {
		return bdao.selectAll();
	}


	@Override
	public Integer bikeRental(String address) {
		
		return bdao.bikeR(address);
	}


	@Override
	public void bikeReturn(String addr) {
		bdao.bikeRt(addr);
		
	}

}
