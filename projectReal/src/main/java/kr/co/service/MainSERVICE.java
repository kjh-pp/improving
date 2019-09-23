package kr.co.service;

import java.util.List;

import kr.co.vo.MemberVO;

public interface MainSERVICE {
	
	public MemberVO AccountInfo(String member_Id);
	public List<MemberVO> AccountListAll(String member_Id, String member_Interesting);
	
}
