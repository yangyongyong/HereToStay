package hts.member.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.member.Pension;
import hts.model.vo.member.SearchOpt;
@Repository
public class PensionPageSearchImpl implements PensionPageSearchDao {

	@Autowired
	private SqlSessionTemplate ss;
	HashMap map;
	
	@Override
	public List<Pension> getList(int first,int last, SearchOpt opt) {
		// TODO Auto-generated method stub
		
		map =new HashMap<>();
			
		setOpt(opt);
		
		map.put("first", first);
		map.put("last", last);
		if(opt.getSearchName()!=null) {
			if(!(opt.getSearchName().equals(""))) 
				map.put("penName",opt.getSearchName());
		}
		
		if(opt.getPersons()!=null) map.put("persons",opt.getPersons());
		if(opt.getPriceFrom()!=null) map.put("priceFrom", Integer.parseInt(opt.getPriceFrom()));
		if(opt.getPriceTo()!=null) map.put("priceTo", Integer.parseInt(opt.getPriceTo()));		
		if(opt.getPenOpt()!=null) map.put("penOpt",opt.getPenOpt());
		if(opt.getRoomOpt()!=null) map.put("roomOpt", opt.getRoomOpt());
		
		return ss.selectList("pensionPageSearch.getListOpt",map);			
	}
	@Override
	public int getTotal(SearchOpt opt) {	
		System.out.println(ss.selectOne("pensionPageSearch.getTotal",map)+"total LIST");
		return ss.selectOne("pensionPageSearch.getTotal",map);
	}
	public void setOpt(SearchOpt opt)
	{
		//값 조작 
		if(opt.getCheckIn()!=null && opt.getCheckIn().length()>9) {
			String temp = opt.getCheckIn();
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

	
}
