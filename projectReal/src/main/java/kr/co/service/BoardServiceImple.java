package kr.co.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.vo.BoardVO;
import kr.co.vo.PageCriteria;

@Service
public class BoardServiceImple implements BoardService {

	@Inject
	private BoardDAO bdao;
	
	@Override
	public void write(BoardVO bvo) {
		bdao.insertOne(bvo);
		
	}

	@Override
	public List<BoardVO> readAll() {
		return bdao.selectAll();
	}

	@Override
	public void modify(BoardVO bvo) {
		bdao.updateOne(bvo);
	}

	@Override
	public void remove(int bno) {
		bdao.deleteOne(bno);
	}

	@Override
	public BoardVO readOne(int bno) {
		return bdao.selectOne(bno);
	}

	@Override
	public List<BoardVO> listCriteria(PageCriteria pCir) throws Exception {
		return bdao.listCriteria(pCir);
	}

	@Override
	public int listCountData(PageCriteria pCri) throws Exception {
		return bdao.countData(pCri);
	}


}
