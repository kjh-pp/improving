package kr.co.dao;

import kr.co.vo.MemberVO;

public interface MemberDAO {
	
	public void insertDAO(MemberVO mvo); 
	
	public int isExistId(String member_Id);
	public int loginmethod(String member_Id, String member_Password);
	
}
