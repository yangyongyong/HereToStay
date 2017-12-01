package hts.member.dao;

import hts.model.vo.member.Member;

public interface MemberJoinDao {
	
//	회원가입 정보 DB에 INSERT 시키는 메소드
	void joinInsert(Member member);
	
//	아이디 중복체크하는 메소드
	int idCheck(String memId);
}