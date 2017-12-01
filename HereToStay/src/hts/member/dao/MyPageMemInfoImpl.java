package hts.member.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.Member;
import hts.model.vo.member.QnA;
import hts.model.vo.member.Reservation;
import hts.model.vo.member.Review;

@Repository
public class MyPageMemInfoImpl implements MyPageMemInfoDao {
	
	@Autowired
	private SqlSessionTemplate ss;

	// 회원 정보 가져오는 메소드
	@Override
	public Member getMember(String id) {
		return ss.selectOne("myPageMemInfo.getMember", id);
	}

	// 회원 정보수정 메소드
	@Override
	public void infoUpdate(Member member) {
		System.out.println(member.getMemRpwd());
		ss.update("myPageMemInfo.infoUpdate", member);
	}

	// 회원 별 예약 리스트 가져오는 메소드
	@Override
	public List<Reservation> getReserList(int first, int last, String id, String sort1, String sort2) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("first", first);
		map.put("last", last);
		map.put("id", id);
		map.put("sort1", sort1);
		map.put("sort2", sort2);
		
		return ss.selectList("myPageMemInfo.getReserList", map);
	}

	// 회원 별 리뷰 리스트 가져오는 메소드
	@Override
	public List<Review> getReviewList(String id) {
		return ss.selectList("myPageMemInfo.getReviewList", id);
	}

	// 회원 별 리뷰 리스트 가져오는 메소드
	@Override
	public List<QnA> getQnAList(String id) {
		return ss.selectList("myPageMemInfo.getQnAList", id);
	}

//	리스트 총 개수 구하는 메소드
	@Override
	public int getListCount(String id) {
		return ss.selectOne("myPageMemInfo.getListCount", id);
	}
	
}
