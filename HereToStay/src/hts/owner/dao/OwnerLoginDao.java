package hts.owner.dao;

import hts.model.vo.owner.Owner;

public interface OwnerLoginDao {
	//	회원가입 인썰트
	int ownerInsert(Owner owner);
	
	// 로그인 
	boolean loginCheck(Owner LoginInfo);
}
