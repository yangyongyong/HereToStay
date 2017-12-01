package hts.owner.dao;

import hts.model.vo.owner.Pension;

public interface OwnerPensionDao {
	int  pensionInsert(Pension pension);
	
	String findPension(String ownId);
	
	Pension pensionSelect(Pension pension);

	int pensionUpdate(Pension pension);

}
