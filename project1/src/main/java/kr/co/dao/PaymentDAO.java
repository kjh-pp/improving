package kr.co.dao;

import java.util.List;

import kr.co.vo.PaymentVO;

public interface PaymentDAO {
	
	public List<PaymentVO> selectAll();
	
	public void charge(PaymentVO pvo);
}
