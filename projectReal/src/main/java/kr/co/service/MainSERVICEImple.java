package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.dao.MainDAO;
import kr.co.vo.MemberVO;

@Service
public class MainSERVICEImple implements MainSERVICE{

	@Inject
	private MainDAO mdao;
	
	
	@Override
	public MemberVO AccountInfo(String member_Id) {
		return mdao.memberInfo(member_Id);
	}

	@Override
	public List<MemberVO> AccountListAll(String member_Id, String member_Interesting) {
		return mdao.memberListAll(member_Id, member_Interesting);
	}

}
