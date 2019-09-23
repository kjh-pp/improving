package kr.co.dao;

import java.util.List;

import kr.co.vo.BoardVO;
import kr.co.vo.PageCriteria;

public interface BoardDAO {

	public List<BoardVO> selectAll() ;
	public void insertOne(BoardVO bvo) ;
	public void updateOne(BoardVO bvo) ;
	public void deleteOne(int bno) ;
	public BoardVO selectOne(int bno) ;
	
	public List<BoardVO> listPage(int page) throws Exception;
	public List<BoardVO> listCriteria(PageCriteria page)throws Exception ;
	public int countData(PageCriteria pCri)throws Exception ;
	

}
