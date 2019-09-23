package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.PageCriteria;

@Repository // 저장소역할을 준다는 의미
public class BoardDAOImple implements BoardDAO {

	@Inject
	private SqlSession ss;
	
	@Override
	public List<BoardVO> selectAll() {
		return ss.selectList("selectAll");
	}

	@Override
	public void insertOne(BoardVO bvo) {
		ss.insert("insertOne", bvo);
	}

	@Override
	public void updateOne(BoardVO bvo) {
		ss.update("updateOne", bvo);
	}

	@Override
	public void deleteOne(int bno) {
		ss.delete("deleteOne", bno);
	}

	@Override
	public BoardVO selectOne(int bno) {
		return ss.selectOne("selectOne", bno);
	}

	@Override
	public List<BoardVO> listPage(int page)  {

		if(page<=0) {
			page = 1;
		}
		
		page = (page-1) * 10;
		
		return ss.selectList("listPage",page);
	}

	@Override
	public List<BoardVO> listCriteria(PageCriteria page)  throws Exception{
		return ss.selectList("listCriteria",page);
	}

	@Override
	public int countData(PageCriteria pCri) throws Exception {
		return ss.selectOne("countData",pCri);
	}
	

}