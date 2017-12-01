package hts.member.dao;

import hts.model.vo.member.MyQnADetail;
import hts.model.vo.member.QnA;

public interface QnADetailDao {
	
//	회원 별 문의사항 상세정보 가져오는 메소드
	MyQnADetail getQnA(String memId, String qnaId);
	
//	문의사항 등록하는 메소드
	void qnaInsert(QnA qna);
}