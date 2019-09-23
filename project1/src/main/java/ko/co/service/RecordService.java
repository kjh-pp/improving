package ko.co.service;

import java.util.List;

import kr.co.vo.RecordVO;

public interface RecordService {

	public List<RecordVO> selectRecordAll();
	
	public Integer CRecord(Integer office_num);
	
}
