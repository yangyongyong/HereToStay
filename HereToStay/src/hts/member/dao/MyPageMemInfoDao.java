package hts.member.dao;

import java.util.*;
import hts.model.vo.*;
import hts.model.vo.member.Member;
import hts.model.vo.member.QnA;
import hts.model.vo.member.Reservation;
import hts.model.vo.member.Review;

public interface MyPageMemInfoDao {
	
//	회원 정보 가져오는 메소드
	Member getMember(String id);
	
//	회원 정보수정 메소드
	void infoUpdate(Member member);
	
//	회원 별 예약 리스트 가져오는 메소드
	List<Reservation> getReserList(int first, int last, String id, String sort1, String sort2);
	
//	화원 별 리뷰 리스트 가져오는 메소드
	List<Review> getReviewList(String id);
	
//	회원 별 문의사항 리스트 가져오는 메소드
	List<QnA> getQnAList(String id);
	
//	리스트 총 개수 구하는 메소드
	int getListCount(String id);
}
