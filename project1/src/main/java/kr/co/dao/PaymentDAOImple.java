package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.PaymentVO;

@Repository
public class PaymentDAOImple implements PaymentDAO {

	@Inject
	private SqlSession ss;
	
	@Override
	public List<PaymentVO> selectAll() {
		return ss.selectList("paymentList");
	}
	
	@Override
	public void charge(PaymentVO pvo) {
		// TODO Auto-generated method stub
		ss.insert("payment", pvo);
	}
}
