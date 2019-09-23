package kr.co.dao;

import java.util.List;

import kr.co.vo.MemberVO;

public interface MainDAO {
	
	public MemberVO memberInfo(String member_Id);
	
	
	
	public List<MemberVO> memberListAll(String member_Id, String member_Interesting);
}
