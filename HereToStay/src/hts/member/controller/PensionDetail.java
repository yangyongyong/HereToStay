package hts.member.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.PensionPageDetailDao;
import hts.member.dao.PensionPageSearchDao;
import hts.model.vo.member.Pension;
import hts.model.vo.member.Review;
import hts.model.vo.member.Room;
import hts.model.vo.member.SearchOpt;
import hts.mongo.services.MongoService;
import hts.mongo.vo.MongoVO;

@Controller
@RequestMapping("/member")
public class PensionDetail {
	@Autowired
	private  PensionPageDetailDao pensionPageDetailDao;
	
	@Autowired
	private MongoService mongoService; 
	
	@RequestMapping("/pensionDetail.do")
	public ModelAndView pensionDetail(HttpServletRequest req,HttpSession session) {
		
		
		SearchOpt opt =(SearchOpt) session.getAttribute("search");
		String Id= req.getParameter("id");
		
		Pension pension=pensionPageDetailDao.getPension(Id);
		List<Room> rooms=pensionPageDetailDao.getRooms(Id,opt);
		List<Review> reviews =pensionPageDetailDao.getReview(Id);
		
		// 몽고 진입 - 펜션 사진
		List<MongoVO> plist = mongoService.findMongo(Id);
		// 사진 갯수만큼 포문 돌아감
		System.out.println("펜션사진");
		int index = 0;
		for (MongoVO mongoTestVO : plist) {
            System.out.println(index + " " + mongoTestVO.getCode());
            System.out.println(index + " " + mongoTestVO.getRealName());
            System.out.println(index + " " + mongoTestVO.getEncryName());
            System.out.println(index + " " + mongoTestVO.getFullname());
            index++;
        }
		
		// 몽고 진입 - 객실 사진
		ArrayList<ArrayList<MongoVO>> rlist = mongoService.findMongoRList(rooms);
		
		System.out.println("룸사진");
		// 마지막은 너가 페이지에 뿌리거라
		for(int i = 0; i<rlist.size(); i++) {
			for(int j =0; j < rlist.get(i).size() ;j++) {
				System.out.println(rlist.get(i).get(j).getCode()); // 펜션 ID
				System.out.println(rlist.get(i).get(j).getFullname()); // 펜션 사진정보
			}			
		}
		
		
		
		ModelAndView model=new ModelAndView();
		model.addObject("Pension", pension);
		model.addObject("Rooms",rooms);
		model.addObject("Reviews",reviews);
		return model;
	}

}
