package hts.owner.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.owner.Room;

@Repository
public class OwnerRoomImpl implements OwnerRoomDao {

	@Autowired
	private SqlSessionTemplate ss1;
	
	@Override
	public String roomInsert(Room room) {
		String roomId = "ROM";
		try {
			System.out.println("1 insert roomid> "+roomId);
			String val = ss1.selectOne("ownerRoom.roomVal");
			System.out.println("2 insert val> "+val);
			roomId += val;
			//rom||nextval
			System.out.println("3 insert roomId> "+roomId);
			room.setRomId(roomId);
			ss1.insert("ownerRoom.roomInsert",room);
		} catch (Exception e) {
			System.out.println("OwnerRoomImpl / roomInsert 에러: " + e.getMessage());
		}
		return roomId;

	}

	@Override
	public Room roomSelect(String dbPenId,String mode) {
		HashMap hash = new HashMap();
		hash.put("dbPenId", dbPenId);
		hash.put("mode", Integer.parseInt(mode));
		return ss1.selectOne("ownerRoom.roomList",hash);
	}


	@Override
	public List<Room> roomTagList(String findPenId) {
		return ss1.selectList("ownerRoom.roomTagList",findPenId);
	}

	@Override
	public String roomUpdate(Room room) {
		String roomId = room.getRomId();
		try {
			ss1.insert("ownerRoom.roomUpdate",room);
		} catch (Exception e) {
			System.out.println("OwnerRoomImpl / roomUpdate 에러: " + e.getMessage());
		}
		return roomId;
	}

	@Override
	public String deleteRoom(String findPenId, String mode) {
		HashMap hash = new HashMap();
		hash.put("dbPenId", findPenId);
		hash.put("mode", Integer.parseInt(mode));
		Room room = ss1.selectOne("ownerRoom.roomList",hash);
		String roomId = room.getRomId();
		ss1.delete("ownerRoom.roomdelete",roomId);
		
		return roomId;
	}



	
}
