package ko.co.service;

import java.util.List;

import kr.co.vo.PaymentVO;

public interface PaymentService {

	public List<PaymentVO> selectPaymentAll();
	
	public void CPayment(PaymentVO pvo);
	
}
