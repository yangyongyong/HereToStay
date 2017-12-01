package hts.mongo.dao;

import java.util.ArrayList;
import java.util.List;

import hts.model.vo.member.Pension;
import hts.model.vo.member.Room;
import hts.mongo.vo.MongoVO;

public interface MongoDao {

	public int addPension(MongoVO mongoVo);

	List<MongoVO> findData(String value);

	public void deleteData(String value);

	public ArrayList findDataPList(List<Pension> pl);
	
	public ArrayList findDataRList(List<Room> rl);

}
