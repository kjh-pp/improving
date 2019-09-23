package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ko.co.service.PaymentService;
import kr.co.vo.PaymentVO;

@Controller
@RequestMapping("/pay")
public class PayController {
	
	private static final Logger logger = LoggerFactory.getLogger(PayController.class);

	@Inject
	private PaymentService psvc;
	
	@RequestMapping(value = "/list" , method = RequestMethod.GET)
	public void paymentlist(Model model) throws Exception {
		logger.info("payment list start ......");
		
		model.addAttribute("payment", psvc.selectPaymentAll());
	}
	
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String payment(@RequestParam("record_num")Integer record_num,
			@RequestParam("charge")Integer charge, Model model) throws Exception{
		logger.info("Payment Start.......");
		
		PaymentVO pvo = new PaymentVO();
		
		pvo.setRecord_num(record_num);
		pvo.setCharge(charge);
		
		psvc.CPayment(pvo);
		
		return "redirect:/bike/addr";
	}
	
	
}
