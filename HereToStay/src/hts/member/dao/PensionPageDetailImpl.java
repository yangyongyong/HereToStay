package hts.member.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.Pension;
import hts.model.vo.member.Review;
import hts.model.vo.member.Room;
import hts.model.vo.member.SearchOpt;
@Repository
public class PensionPageDetailImpl implements PensionPageDetailDao{

	@Autowired
	private SqlSessionTemplate ss;
	HashMap map;
	

	@Override
	public Pension getPension(String penId) {
		// TODO Auto-generated method stub
		return ss.selectOne("pensionPageDetail.getPension",penId);
	}


	@Override
	public List<Room> getRooms(String penId,SearchOpt opt) {
		// TODO Auto-generated method stub
		
		map =new HashMap<>();
		map.put("penId",penId);
		if(opt != null) {
			map.put("persons", opt.getPersons());
			setOpt(opt);
			if(opt.getCheckIn()!=null) System.out.println("checkindddrooom "+ map.get("checkIn"));
		}
		return ss.selectList("pensionPageDetail.getRooms",map);
	}
	public void setOpt(SearchOpt opt)
	{
		//값 조작 
		if(opt.getCheckIn()!=null && opt.getCheckIn().length()>9) {
			String temp = opt.getCheckIn();
			System.out.println("check in 길이 !!!!!!!!!"+opt.getCheckIn().length());
			StringTokenizer str =new StringTokenizer(temp,"/");
			String indate =new String();	
			String mm =str.nextToken()+"/";
			String dd = str.nextToken();
			String yy =str.nextToken().substring(2,4)+"/";			
			indate = yy+mm+dd;
			System.out.println("indate"+indate);	
			map.put("checkIn",indate);
		}
		if(opt.getCheckOut()!=null && opt.getCheckOut().length()>9) {
			String temp2 = opt.getCheckOut();
			StringTokenizer str2 =new StringTokenizer(temp2,"/");
			String indate2 =null;				
			String mm2 = str2.nextToken()+"/";
			String dd2 = str2.nextToken();
			String yy2 =str2.nextToken().substring(2,4)+"/";			
			indate2=yy2+mm2+dd2;	
			System.out.println("outdate"+indate2);
			map.put("checkOut", indate2);	
		}		
		
	}
	@Override
	public List<Review> getReview(String penId) {
	
		
		return ss.selectList("pensionPageDetail.getReviews",penId);
	}	
}
