package hts.member.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.MyQnADetail;
import hts.model.vo.member.QnA;

@Repository
public class QnADetailImpl implements QnADetailDao {
	
//	sql mapper 변수 선언 
	@Autowired
	private SqlSessionTemplate ss;

//	회원 별 문의사항 상세정보 가져오는 메소드
	@Override
	public MyQnADetail getQnA(String memId, String qnaId) {
		HashMap<String, String> map = new HashMap<>();
		map.put("memId", memId);
		map.put("qnaId", qnaId);
		
		return ss.selectOne("QnADetail.getQnA", map);
	}

	// 문의사항 등록하는 메소드
	@Override
	public void qnaInsert(QnA qna) {
		ss.insert("QnADetail.qnaInsert", qna);
	}
}