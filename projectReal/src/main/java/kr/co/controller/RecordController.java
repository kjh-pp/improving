package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.service.RecordService;

@Controller
@RequestMapping("/record")
public class RecordController {

	private static final Logger logger = LoggerFactory.getLogger(RecordController.class);
	
	@Inject
	private RecordService rsvc;
	
	@RequestMapping(value = "/list" , method = RequestMethod.GET)
	public void recordlist(Model model) throws Exception{
		logger.info("record list start ........");
		
		model.addAttribute("record", rsvc.selectRecordAll());
	}
	
	@RequestMapping(value = "/recording", method = RequestMethod.GET)
	public String InsertRecord(@RequestParam("office_num")Integer office_num,
			@RequestParam("charge")Integer charge, Model model) throws Exception{
		logger.info("Recording Start......");
		
		model.addAttribute("record_num", rsvc.CRecord(office_num));
		model.addAttribute("charge", charge);
		
		return "redirect:/pay/payment";
	}
	
}














