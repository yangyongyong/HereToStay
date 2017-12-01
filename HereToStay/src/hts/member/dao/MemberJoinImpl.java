package hts.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.Member;

@Repository
public class MemberJoinImpl implements MemberJoinDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 회원가입 정보 DB에 INSERT 시키는 메소드
	@Override
	public void joinInsert(Member member) {
		ss.insert("memberJoin.joinInsert", member);
	}

	// 아이디 중복 체크하는 메소드
	@Override
	public int idCheck(String memId) {
		return ss.selectOne("memberJoin.idCheck", memId);
	}

}
