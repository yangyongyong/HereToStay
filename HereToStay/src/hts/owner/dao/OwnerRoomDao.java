package hts.owner.dao;

import java.util.List;

import hts.model.vo.owner.Room;

public interface OwnerRoomDao {

	String roomInsert(Room room);
	
	Room roomSelect(String dbPenId,String mode);

	List<Room> roomTagList(String findPenId);

	String roomUpdate(Room room);

	String deleteRoom(String findPenId, String mode);
}
