package kr.co.service;

import kr.co.vo.MemberVO;

public interface MemberSERVICE {
	
	public void CreateAccount(MemberVO mvo); 
	
	public int existById(String member_Id);
	
	public int loginConfirm(String member_Id, String member_Password);
	
	
}
