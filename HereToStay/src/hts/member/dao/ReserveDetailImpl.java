package hts.member.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.ReservationDetail;

@Repository
public class ReserveDetailImpl implements ReserveDetailDao {

	@Autowired
	private SqlSessionTemplate ss;
	
//	펜션 별 예약 상세정보 가져오기
	@Override
	public ReservationDetail getReserve(String memId, String resId) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("memId", memId);
		map.put("resId", resId);
		
		return ss.selectOne("MyPageReserve.getReserve", map);
	}

//	예약 취소 메소드
	@Override
	public void delReserve(String resId) {
		ss.update("MyPageReserve.delReserve", resId);
	}

}
