package hts.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.Pension;
import hts.model.vo.member.Room;


@Repository
public class IndexImpl implements IndexDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 인기있는 펜션 정보 얻어오는 메소드
	@Override
	public List<Pension> getPopularPension() {
		return ss.selectList("index.getPopularPension");
	}

	// 펜션 별 최소금액 얻어오는 메소드
	@Override
	public int getMinCost(String penId) {
		return ss.selectOne("index.getMinCost", penId);
	}

	
	// 최저가 펜션 검색하는 메소드
	@Override
	public List<Room> getMinPension() {
		return ss.selectList("index.getMinPension");
	}
	
}