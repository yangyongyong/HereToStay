package hts.owner.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.owner.Pension;

@Repository
public class OwnerPensionImpl implements OwnerPensionDao {

	@Autowired
	private SqlSessionTemplate ss1;
	
	@Override
	public int pensionInsert(Pension pension) {
		int result = 0;
		try {
			result = ss1.insert("ownerPension.pensionInsert",pension);
		} catch (Exception e) {
			System.out.println("OwnerPensionImpl / pensionInsert 에러: " + e.getMessage());
		}
		return result;
	}

	@Override
	public String findPension(String ownId) {

		return ss1.selectOne("ownerPension.pensionFind",ownId);
	}

	@Override
	public Pension pensionSelect(Pension pension) {
		
		return ss1.selectOne("ownerPension.pensionList",pension);
				

	}

	@Override
	public int pensionUpdate(Pension pension) {
		int result = 0;
		try {
			result = ss1.insert("ownerPension.pensionUpdate",pension);
		} catch (Exception e) {
			System.out.println("OwnerPensionImpl / pensionUpdate 에러: " + e.getMessage());
		}
		return result;
	}

	
}
