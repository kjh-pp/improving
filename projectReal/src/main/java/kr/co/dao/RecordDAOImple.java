package kr.co.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.RecordForeignVO;
import kr.co.vo.RecordVO;

@Repository
public class RecordDAOImple implements RecordDAO {

	@Inject
	SqlSession ss;
	
	@Override
	public List<RecordVO> selectAll() {
		return ss.selectList("RecordList");
	}

	@Override
	public Integer CreateRecord(Integer office_num) {
		// 외래키 값을 가져와서 Record Table에 대여기록을 남기는 일
		
		// 외래키 VO 생성
		RecordForeignVO rfvo = new RecordForeignVO();
		
		// 대여소 번호를 기준으로 그 대여소에 있는 랜덤한 Bike를 빌리고 Bike_num을 반환받음
		rfvo.setBike_num((Integer)ss.selectOne("SelectBike",office_num));
		
		// 반환받은 Bike_num을 기준으로 Bike 테이블에 대여소 위치를 null로 update
		Integer bike_num = rfvo.getBike_num();
		ss.update("BikeNoWhere", bike_num);
		
		// 외래키 VO의 대여소 번호와 멤버 번호 초기화
		rfvo.setOffice_num(office_num);
		rfvo.setMember_num(1);
		
		// 외래키 VO를 토대로 대여기록을 insert
		ss.insert("InsertRecord", rfvo);
		
		// 결제테이블에 대여번호를 넘겨주기 위해 대여번호 return (꼭필요한것인지 재고 필요)
		return (Integer)ss.selectOne("CallRecord", rfvo);
	}

}
