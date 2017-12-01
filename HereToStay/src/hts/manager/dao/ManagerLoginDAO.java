package hts.manager.dao;

import hts.model.vo.manager.Manager;

public interface ManagerLoginDAO {
	
	
	boolean loginCheck(Manager LoginInfo);

}
