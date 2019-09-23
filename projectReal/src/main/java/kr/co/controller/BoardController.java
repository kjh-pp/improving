package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.BoardService;
import kr.co.vo.BoardVO;
import kr.co.vo.PageCriteria;
import kr.co.vo.PagingMaker;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService bsvc;
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void writeGET(BoardVO bvo , Model model) throws Exception {
		logger.info("write start....");
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String writePOST(BoardVO bvo, RedirectAttributes reAttr) throws Exception {
		
		logger.info("writerPost start......");
		logger.info(bvo.toString());
		
		bsvc.write(bvo);
		
		reAttr.addFlashAttribute("result", "Success");
		
		return "redirect:/board/list";
		
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(PageCriteria pcri,Model model) throws Exception {
		logger.info("board list start..");
		logger.info(pcri.toString());
			
			model.addAttribute("list", bsvc.listCriteria(pcri));
			PagingMaker pm = new PagingMaker();
			pm.setPcri(pcri);
			pm.setTotalData(bsvc.listCountData(pcri));
			
			model.addAttribute("pagingMaker", pm);
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, Model model) throws Exception {
		logger.info("read start");
		model.addAttribute(bsvc.readOne(bno));
	}
	
	// 수정 조회
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("bno") int bno , Model model) throws Exception  {
		logger.info("modify start");
		model.addAttribute(bsvc.readOne(bno));
	}
	
	//수정처리
	@RequestMapping(value = "/modify" , method = RequestMethod.POST) // 같은 주소지만 post 방식일때 사용
	public String modifyPOST(BoardVO bvo,PageCriteria pCri, RedirectAttributes reAttr) throws Exception  { // reAttr : 한번정송할때 사용
		logger.info("modifyPOST start....");
		
		bsvc.modify(bvo);
		reAttr.addAttribute("page", pCri.getPage());
		reAttr.addAttribute("numberPage", pCri.getNumPerPage());
		reAttr.addFlashAttribute("result", "Success");
		
		return "redirect:/board/list";
	}
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("bno") int bno,PageCriteria pCri, RedirectAttributes reAttr) throws Exception {
		logger.info("delete start.....");
		
		bsvc.remove(bno);
		reAttr.addAttribute("page", pCri.getPage());
		reAttr.addAttribute("numberPage", pCri.getNumPerPage());
		reAttr.addFlashAttribute("result", "Success");
		
		return "redirect:/board/list";
	}
	
}
