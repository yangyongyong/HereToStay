package hts.mongo.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.Pension;
import hts.model.vo.member.Room;
import hts.mongo.vo.MongoVO;

@Repository
public class MongoDaoImpl implements MongoDao {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	@Override
	public int addPension(MongoVO mongoVo) {
		
		System.out.println("몽고 DAO 진입 ");
		mongoTemplate.insert(mongoVo,"fileTest");
		System.out.println("몽고 디비 입력 완료");
		
		return 0;
	}
	
	// key : 컬럼명 / value : 조건
	// key 에 value 값을 가진 값을 찾는다.
	@Override
	public List<MongoVO> findData(String value) {
        Criteria criteria = new Criteria("code");
 
        // 해당 value에 맞는 것만 찾을 수 있다.
         criteria.is(value);
 
        // 둘리로 시작하는 것을 찾을 수 있다.
//        criteria.regex("^둘리");
 
         Query query = new Query(criteria);
        List<MongoVO> data = mongoTemplate.find(query, MongoVO.class, "fileTest");
 
        int index = 0;
        for (MongoVO mongoTestVO : data) {
            System.out.println(index + " " + mongoTestVO.getCode());
            System.out.println(index + " " + mongoTestVO.getRealName());
            System.out.println(index + " " + mongoTestVO.getEncryName());
            System.out.println(index + " " + mongoTestVO.getFullname());
            index++;
        }
        return data;
    }

	@Override
	public void deleteData(String value) {
		Criteria criteria = new Criteria("code");
		 
        // 해당 value에 맞는 것만 찾을 수 있다.
         criteria.is(value);
         Query query = new Query(criteria);
         mongoTemplate.remove(query, "fileTest");
		
	}

	@Override
	public ArrayList findDataPList(List<Pension> pl) {
		
		ArrayList mlist = new ArrayList();
		
		for( int i=0; i<pl.size();i++) {
			Criteria criteria = new Criteria("code");
			String penId = pl.get(i).getPenId();
			criteria.is(penId);
			Query query = new Query(criteria);
		    List<MongoVO> data = mongoTemplate.find(query, MongoVO.class, "fileTest");
		    mlist.add(data);
		}
		return mlist;
	}

	@Override
	public ArrayList findDataRList(List<Room> rl) {
		
		ArrayList mlist = new ArrayList();
		
		for( int i=0; i<rl.size();i++) {
			Criteria criteria = new Criteria("code");
			String romId = rl.get(i).getRomId();
			criteria.is(romId);
			Query query = new Query(criteria);
		    List<MongoVO> data = mongoTemplate.find(query, MongoVO.class, "fileTest");
		    mlist.add(data);
		}
		return mlist;
	}
}

