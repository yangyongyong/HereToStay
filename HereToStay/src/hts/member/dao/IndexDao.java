package hts.member.dao;

import java.util.List;

import hts.model.vo.member.Pension;
import hts.model.vo.member.Room;

public interface IndexDao {
	
//	인기있는 펜션 정보 얻어오는 메소드
	List<Pension> getPopularPension();
	
//	펜션 별 최소금액 얻어오는 메소드
	int getMinCost(String penId);
	
//	최저가 펜션 검색하는 메소드
	List<Room> getMinPension();
	
}