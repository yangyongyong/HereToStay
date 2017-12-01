package hts.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.AboutUsData;

@Repository
public class AboutUsImpl implements AboutUsDao {

	@Autowired
	private SqlSessionTemplate ss;
	
	// about us에 나타낼 회원, 펜션, 리뷰, 예약 개수 얻오는 매소드
	@Override
	public AboutUsData getAboutUs() {
		return ss.selectOne("getAboutUs.getAboutUsData");
	}
}