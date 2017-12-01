package hts.owner.services;

import java.util.List;

import hts.model.vo.owner.Pension;
import hts.model.vo.owner.Room;

public interface ServicePension {

	int pensionInsert(Pension pension);

	String findPension(String ownId);
	
	Pension pensionSelect(Pension pension);
	
	String roomInsert(Room room);
	
	Room roomSelect(String dbPenId,String mode);

	List<Room> roomTagList(String findPenId);

	String deleteRoom(String findPenId, String mode);
	
}
