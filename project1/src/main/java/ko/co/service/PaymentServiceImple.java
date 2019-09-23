package ko.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.PaymentDAO;
import kr.co.vo.PaymentVO;

@Service
public class PaymentServiceImple implements PaymentService {

	@Inject
	private PaymentDAO pdao;
	
	@Override
	public List<PaymentVO> selectPaymentAll() {
		return pdao.selectAll();
	}

	@Override
	public void CPayment(PaymentVO pvo) {
		pdao.charge(pvo);
	}

}
