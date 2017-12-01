package hts.member.dao;

import hts.model.vo.member.AboutUsData;

public interface AboutUsDao {
	
//	about us에 나타낼 회원, 펜션, 리뷰, 예약 개수 얻오는 매소드
	AboutUsData getAboutUs();
}