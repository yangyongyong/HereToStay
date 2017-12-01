package hts.owner.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.owner.Reservation;

@Repository
public class OwnerReserveImpl implements OwnerReserveDao {

	@Autowired
	private SqlSessionTemplate ss1;
	
	@Override
	public List<Reservation> reslist() {
		
//		ss.selectList("");
		return ss1.selectList("ownerReserve.resView");
	}

	@Override
	public Reservation resCount(Reservation vo) {
		
		return ss1.selectOne("ownerReserve.resCount",vo);
	}

	@Override
	public List<Reservation> resRate(Reservation vo) {
		
		return ss1.selectList("ownerReserve.resRate");
	}
}
