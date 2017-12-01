package hts.manager.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.manager.Strorage;

@Repository
public class ManagerStorageImpl implements ManagerStorageDAO {

	@Autowired
	private SqlSessionTemplate ss2;
	
	
	@Override
	public int storageUpdate(Strorage sto){
		return ss2.update("ManagerStorage.storageUpdate",sto);
	}


	@Override 
	public int tncUpdate(Strorage sto) {
		// TODO Auto-generated method stub
		return ss2.update("ManagerStorage.tncUpdate",sto);
	}


	@Override
	public int bathUpdate(Strorage sto) {
		// TODO Auto-generated method stub
		return ss2.update("ManagerStorage.bathUpdate",sto);
	}

}
