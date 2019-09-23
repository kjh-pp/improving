package kr.co.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vo.MemberVO;
import net.sf.log4jdbc.log.log4j2.message.SqlMessage;

@Repository
public class MemberDAOImple implements MemberDAO{

	@Inject
	private SqlSession ss;
	
	
	@Override
	public void insertDAO(MemberVO mvo) {
		
		ss.insert("createAccount", mvo);
	}


	@Override
	public int isExistId(String member_Id) {
		
		return ss.selectOne("exitId", member_Id);
	}


	@Override
	public int loginmethod(String member_Id, String member_Password) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("member_Id", member_Id);
		map.put("member_Password", member_Password);
		
		return ss.selectOne("existLogin", map);
		
	}
	
	

	
	
	
	
	
	
	
}
