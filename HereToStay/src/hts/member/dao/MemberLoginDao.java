package hts.member.dao;

public interface MemberLoginDao {

//	회원 아이디, 비밀번호 유무 확인하는 메소드
	int memCheck(String memId, String memPwd);
	
}