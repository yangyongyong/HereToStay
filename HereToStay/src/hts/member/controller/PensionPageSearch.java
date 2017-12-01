package hts.member.controller;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.PensionPageSearchDao;
import hts.model.vo.member.Pension;
import hts.model.vo.member.SearchOpt;
import hts.mongo.services.MongoService;
import hts.mongo.vo.MongoVO;


@Controller
@RequestMapping("/member")
public class PensionPageSearch {

	@Autowired
	private  PensionPageSearchDao pensionSearch;
	
	@Autowired 
	private MongoService mongoService;
	
	@RequestMapping("/pensionSearch.do")
	public ModelAndView pensionSearch(HttpServletRequest request) {
			
	    String opt =request.getParameter("opt"); 
		int page =Integer.parseInt(request.getParameter("page"));
	
		int first = (page-1)*6+1;//페이징
		int Last =first+5;
			
		ModelAndView model = new ModelAndView();		
		List<Pension> pl=new ArrayList<Pension>();		
		SearchOpt searchOpt =saveSession(request);
		// 검색 세션 설정
		HttpSession session =request.getSession();
		//세션에 저장 (불러온값 ) 		
		session.setAttribute("search",searchOpt);//세션저장

		if(request.getParameter("sel")!=null) searchOpt.setPersons(request.getParameter("sel"));
		else searchOpt.setPersons("1");				
		//DB 보내기
		pl=pensionSearch.getList(first,Last,searchOpt);//디비
		// pl 에 펜션 정보 저장되어있음
		ArrayList<List<MongoVO>> plist = mongoService.findMongoPList(pl);
		for(int i=0;i<pl.size();i++)
		{
			System.out.println(pl.get(i).getPenName()+"/////");
		}
		
		// 마지막은 너가 페이지에 뿌리거라
		for(int i = 0; i<plist.size(); i++) {
			for(int j =0; j < plist.get(i).size() ;j++) {
				System.out.println(plist.get(i).get(j).getCode()); // 펜션 ID
				System.out.println(plist.get(i).get(j).getFullname()); // 펜션 사진정보
			}			
		}
		
		
		int totalPage =pensionSearch.getTotal(searchOpt);//디비total page		
		
		//모델 설정
		model = new ModelAndView();
		model.addObject("currentPage",page);		
		model.addObject("List",pl);
		model.addObject("result",totalPage);
		model.addObject("totalPage", (int) Math.ceil(totalPage/(double)6 ));		
		return model;
	}

	public SearchOpt saveSession(HttpServletRequest request) {
		
		SearchOpt opt =new SearchOpt();
		opt.setCheckIn(request.getParameter("in"));		
		opt.setCheckOut(request.getParameter("out"));
		if(request.getParameter("sel")!=null)
		{System.out.println("sel : "+request.getParameter("sel"));
		opt.setPersons(request.getParameter("sel"));		
		}else
		{System.out.println("sel 널임 ");
		opt.setPersons("1");
		}		
		opt.setPriceFrom(request.getParameter("ammount-from"));
		opt.setPriceTo(request.getParameter("ammount-to"));
		opt.setSearchName(request.getParameter("place"));//이름검색
		opt.setPenOpt(request.getParameterValues("penOpt"));	
		opt.setRoomOpt(request.getParameterValues("romOpt"));
		
		System.out.println("------------------------------");
		if(opt.getSearchName()!=null) System.out.println("search "+ opt.getSearchName());
		if(opt.getCheckIn()!=null) System.out.println("checkIn "+opt.getCheckIn());
		else {
			Calendar today =Calendar.getInstance();
			String month=String.valueOf(today.get(Calendar.MONTH)+1);
			if(month.length()==1)
				month ="0"+month;
			String date =String.valueOf(today.get(Calendar.DATE));
			if(date.length()==1)
				date="0"+date;
			String year = String.valueOf(today.get(Calendar.YEAR));
			opt.setCheckIn(month+"/"+date+"/"+year);		
			System.out.println(opt.getCheckIn());
		}
		if(opt.getCheckOut()!=null) System.out.println("checkOut"+opt.getCheckOut());
		else {
			Calendar today =Calendar.getInstance();
			today.add(Calendar.DATE,1);
			String month=String.valueOf(today.get(Calendar.MONTH)+1);
			if(month.length()==1)
				month ="0"+month;
			String date =String.valueOf(today.get(Calendar.DATE));
			if(date.length()==1)
				date="0"+date;
			String year = String.valueOf(today.get(Calendar.YEAR));
			opt.setCheckOut(month+"/"+date+"/"+year);		
			System.out.println(opt.getCheckOut());
		}
		if(opt.getPersons()!=null) System.out.println("persons"+opt.getPersons());
		if(opt.getPriceFrom()!=null) System.out.println("pricefrom"+opt.getPriceFrom());
		if(opt.getPriceTo()!=null) System.out.println("priceTo"+opt.getPriceTo());
		if(opt.getPenOpt()!=null) System.out.println("penOpt"+opt.getPenOpt());
		if(opt.getRoomOpt()!=null) System.out.println("romopt"+opt.getRoomOpt());
		System.out.println("------------------------------");
		
		return opt;
		
	}
	
//	@RequestMapping("/pensionSearch.ajax")
//	public void pensionSearch2(HttpServletResponse response) {
//		
//	
//		String personJson = "{\"id\":\""+"ajax"+"\"}";
//		 try {
//			response.getWriter().print(personJson);
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	
	
}
