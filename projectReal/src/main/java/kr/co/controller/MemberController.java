package kr.co.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.service.MemberSERVICE;
import kr.co.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberSERVICE msvc;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginMethod(Model model, 
			@RequestParam("id") String id,
			@RequestParam("pw") String pw,
			HttpServletRequest request) {
		
		int result = msvc.loginConfirm(id, pw);
		
		if(result == 0) {
			return "member/login";
		}
		HttpSession session = request.getSession();
		
		session.setAttribute("id", id);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void join(MemberVO mvo, Model model) {
		logger.info("회원가입");
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinMethod(MemberVO mvo) throws NullPointerException {
		
		logger.info("num : "+mvo.getMember_num());
		
		msvc.CreateAccount(mvo);
		
		logger.info("전송");
		
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/IdCheck", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> IdCheckMethod(@RequestBody String id){
		int result = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		result = msvc.existById(id);
		
		map.put("result", result);
		
		return map;
	}
	
	@RequestMapping(value = "/findPW", method = RequestMethod.GET)
	public String findPW() {
		return "/member/findPW";
	}
	
}

