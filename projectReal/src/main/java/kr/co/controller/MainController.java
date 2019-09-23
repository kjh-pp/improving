package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.service.MainSERVICE;
import kr.co.vo.MemberVO;


@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
	private MainSERVICE mser; 
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String albumBoardMethod(HttpServletRequest request, Model model) {
		logger.info("Main 화면 실행....");
		
		String member_Id = (String) request.getSession().getAttribute("id");
		
		MemberVO mvo = mser.AccountInfo(member_Id);
		
		
		model.addAttribute("allList", mser.AccountListAll(member_Id, mvo.getMember_Interesting()));
		
		
		return "main/main";
		
	}
	
	
	/*
	 * @RequestMapping(value = "/DataInsert", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public Map<Object, Object> DataInsertMethod(@RequestBody String
	 * member_Id){
	 * 
	 * 
	 * Map<Object, Object> map = new HashMap<Object, Object>(); map.put("result",
	 * mser.AccountInfo(member_Id));
	 * 
	 * 
	 * System.out.println("우선 돌아는 가는듯");
	 * 
	 * return map; }
	 */	
	
	
	
	
	
	
	
	@RequestMapping(value = "/infor")
	public String infor() {
		logger.info("공지사항...");
		
		return "main/infor";
	}
	
}
