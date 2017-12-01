package hts.manager.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.manager.Manager;

@Repository
public class ManagerLoginImpl implements ManagerLoginDAO {
	
	@Autowired
	private SqlSessionTemplate ss2;

	@Override
	public boolean loginCheck(Manager LoginInfo) {
		int count = Integer.parseInt(ss2.selectOne("ManagerLogin.loginCheck", LoginInfo).toString()),
	            totalCount = ss2.selectOne("ManagerLogin.totalAccount");
	      
	      if(totalCount > 0) {
	         if(count > 0) {
	            return true;
	         }else
	            return false;
	         }
		return false;
	}
}