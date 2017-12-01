package hts.member.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.MyPageMemInfoDao;
import hts.model.vo.member.Member;
import hts.model.vo.member.QnA;
import hts.model.vo.member.Reservation;
import hts.model.vo.member.Review;


@Controller
@RequestMapping("/member")
public class MyPageMemInfo {
	
	@Autowired
	private MyPageMemInfoDao myPage;
	
	@RequestMapping("/myPage.do")
	public ModelAndView myPage(HttpSession session, String pageS, String tag, String sort1, String sort2) {
		String id = (String)session.getAttribute("memId");
		ModelAndView model = new ModelAndView();
		
		int page = Integer.parseInt(pageS);
		int first = (page-1)*6+1;
		int last = first+5;
		
		if(id != null) {
			Member member = myPage.getMember(id);
			List<Reservation> reserList = myPage.getReserList(first, last, id, sort1, sort2);
			int totalPage = myPage.getListCount(id);
			List<Review> reviewList = myPage.getReviewList(id);
			List<QnA> QnAList = myPage.getQnAList(id);
			
			model.setViewName("member/myPage");
			model.addObject("member", member);
			model.addObject("reserList", reserList);
			model.addObject("totalPage", (int) Math.ceil(totalPage/(double)6 ));
			model.addObject("reviewList", reviewList);
			model.addObject("QnAList", QnAList);
			model.addObject("page", page);
			model.addObject("tag",tag);
			model.addObject("sort1", sort1);
			model.addObject("sort2", sort2);
		} else {
			model.setViewName("member/index");
			model.addObject("goLogin", "goLogin");			
		}
		return model;
	}
	
	@RequestMapping("/infoUpdate.do")
	public ModelAndView infoUpdate(Member member, HttpSession session) {
		myPage.infoUpdate(member);
		
		String id = (String)session.getAttribute("memId");
		int page = 1;
		int first = (page-1)*6+1;
		int last = first+5;
		
		Member getMember = myPage.getMember(id);
		List<Reservation> reserList = myPage.getReserList(first, last, id, "1", "1");
		int totalPage = myPage.getListCount(id);
		List<Review> reviewList = myPage.getReviewList(id);
		List<QnA> QnAList = myPage.getQnAList(id);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("member/myPage");
		model.addObject("member", getMember);
		model.addObject("reserList", reserList);
		model.addObject("totalPage", (int) Math.ceil(totalPage/(double)6 ));
		model.addObject("reviewList", reviewList);
		model.addObject("QnAList", QnAList);
		model.addObject("page", page);
		model.addObject("tag",1);
		model.addObject("sort1", 1);
		model.addObject("sort2", 1);
		
		return model;
	}
	
	@RequestMapping("/sorting.do")
	@ResponseBody
	public void sorting() {
		
	}
}