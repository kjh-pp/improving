package kr.co.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.MemberDAO;
import kr.co.vo.MemberVO;

@Service
public class MemberSERVICEImple implements MemberSERVICE{

	@Inject
	private MemberDAO mdao;
	
	
	@Override
	public void CreateAccount(MemberVO mvo) {
		mdao.insertDAO(mvo);
	}


	@Override
	public int existById(String member_Id) {
		return mdao.isExistId(member_Id);
	}


	@Override
	public int loginConfirm(String member_Id, String member_Password) {
		// TODO Auto-generated method stub
		return mdao.loginmethod(member_Id, member_Password);
	}

}
