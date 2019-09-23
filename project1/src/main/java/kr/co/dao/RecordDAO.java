package kr.co.dao;

import java.util.List;

import kr.co.vo.RecordVO;

public interface RecordDAO {

	public List<RecordVO> selectAll();
	
	public Integer CreateRecord(Integer office_num);
	
}
