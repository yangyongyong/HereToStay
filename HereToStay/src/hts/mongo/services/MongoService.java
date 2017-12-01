package hts.mongo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import hts.model.vo.member.Pension;
import hts.model.vo.member.Room;
import hts.mongo.vo.MongoVO;

public interface MongoService {

	int addPension(String penId, MultipartHttpServletRequest mhsq);

	List<MongoVO> findMongo(String penId);

	int removeMongo(String roomId);

	ArrayList findMongoPList(List<Pension> pl);
	
	ArrayList findMongoRList(List<Room> pl);
}
