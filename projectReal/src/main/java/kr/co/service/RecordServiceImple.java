package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.RecordDAO;
import kr.co.vo.RecordVO;

@Service
public class RecordServiceImple implements RecordService {

	@Inject
	private RecordDAO rdao;
	
	
	@Override
	public List<RecordVO> selectRecordAll() {
		return rdao.selectAll();
	}

	@Override
	public Integer CRecord(Integer office_num) {
		return rdao.CreateRecord(office_num);
	}

}
