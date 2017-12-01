package hts.member.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberLoginImpl implements MemberLoginDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 회원 아이디, 비밀번호 유무 확인하는 메소드
	@Override
	public int memCheck(String memId, String memPwd) {
		HashMap<String, String> map = new HashMap<>();
		map.put("memId", memId);
		map.put("memPwd", memPwd);
		
		return ss.selectOne("memberLogin.memCheck", map);
	}

}