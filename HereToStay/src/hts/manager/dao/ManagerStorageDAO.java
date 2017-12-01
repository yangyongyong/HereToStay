package hts.manager.dao;

import hts.model.vo.manager.Strorage;

public interface ManagerStorageDAO {

	int storageUpdate(Strorage sto);
	int tncUpdate(Strorage sto);
	int bathUpdate(Strorage sto); 
}
