package hts.owner.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hts.model.vo.owner.Pension;
import hts.model.vo.owner.Room;
import hts.owner.dao.OwnerPensionDao;
import hts.owner.dao.OwnerRoomDao;

@Service
public class ServicePensionImpl implements ServicePension{

	@Autowired
	private OwnerPensionDao pensionDao;
	
	@Autowired
	private OwnerRoomDao roomDao;
	
	@Override
	public String findPension(String ownId) {
	
		return pensionDao.findPension(ownId);
	}
	
	@Override
	public Pension pensionSelect(Pension pension) {
		
		Pension pensiondb = pensionDao.pensionSelect(pension);
		
		if ( pensiondb != null) {
			pensiondb.setPenShot(pensiondb.getPenShot().substring(0,10));
			pensiondb.setPenEhot(pensiondb.getPenEhot().substring(0,10));
		}
		return pensiondb;
	}
	
	
	@Override
	public int pensionInsert(Pension pension) {
	
		int result = 0;
		
		String addr = pension.getPenA1()+pension.getPenA2();
		
		pension.setPenAddr("");
		pension.setPenAddr2(addr);
		// 펜션 아이디 유무로 삽입문과 업데이트문 확인
		if(pension.getPenId()!=null) {
			result = pensionDao.pensionUpdate(pension);
		}else {
			result = pensionDao.pensionInsert(pension);
		
		}
		
		return result;
	}

	@Override
	public Room roomSelect(String dbPenId,String mode) {
		return roomDao.roomSelect(dbPenId, mode);
	}

	@Override
	public String  roomInsert(Room room) {

		String roomId="";
		if(room.getRomId()==null || room.getRomId().equals("")) {
			System.out.println("insert");
			roomId = roomDao.roomInsert(room);

		}else {
			System.out.println("update");
			roomId = roomDao.roomUpdate(room);
		}
		return roomId;
	}

	@Override
	public List<Room> roomTagList(String findPenId) {
		return roomDao.roomTagList(findPenId);
	}

	@Override
	public String deleteRoom(String findPenId, String mode) {

		return roomDao.deleteRoom(findPenId,mode);
	}
}
