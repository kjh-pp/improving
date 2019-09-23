package kr.co.service;

import java.util.List;

import kr.co.vo.BoardVO;
import kr.co.vo.PageCriteria;

public interface BoardService {

	public void write(BoardVO bvo);
	public List<BoardVO> readAll();
	public void modify(BoardVO bvo);
	public void remove(int bno);
	public BoardVO readOne(int bno);
	
	
	public List<BoardVO> listCriteria(PageCriteria pCri) throws Exception;
	public int listCountData(PageCriteria pCri) throws Exception;
	

}
