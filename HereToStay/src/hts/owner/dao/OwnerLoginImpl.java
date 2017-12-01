package hts.owner.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.owner.Owner;

@Repository
public class OwnerLoginImpl implements OwnerLoginDao {
	@Autowired
	SqlSessionTemplate ss1;
	
	@Override
	public int ownerInsert(Owner owner) {
		int result=0;

		result=ss1.insert("ownerLogin.OwnerRegister", owner);
		return result;
	}

	@Override
	public boolean loginCheck(Owner LoginInfo) {
		int count = Integer.parseInt(ss1.selectOne("ownerLogin.loginCheck", LoginInfo).toString()),
				totalCount = ss1.selectOne("ownerLogin.totalAccount");
		
		if(totalCount > 0) {
			if(count > 0) {
				return true;
			}else
				return false;
			}
		
		
		return false;
	}

}
