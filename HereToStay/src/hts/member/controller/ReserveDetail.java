package hts.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.MyPageMemInfoDao;
import hts.member.dao.ReserveDetailDao;
import hts.model.vo.member.Member;
import hts.model.vo.member.QnA;
import hts.model.vo.member.Reservation;
import hts.model.vo.member.ReservationDetail;
import hts.model.vo.member.Review;

@Controller
@RequestMapping("/member")
public class ReserveDetail {
	
	@Autowired
	private ReserveDetailDao reserve;
	@Autowired
	private MyPageMemInfoDao myPage;
	
	@RequestMapping("/getReserve.do")
	public ModelAndView getReserve(HttpSession session, String resId) {
		String memId = (String)session.getAttribute("memId");
		
		ReservationDetail reservationDetail = reserve.getReserve(memId, resId);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("member/reservationDetail");
		model.addObject("reservationDetail", reservationDetail);
		
		return model;
	}
	
	@RequestMapping("delReserve.do")
	public ModelAndView delReserve(HttpSession session, String resId) {
		reserve.delReserve(resId);

		String id = (String)session.getAttribute("memId");
		int page = 1;
		int first = (page-1)*6+1;
		int last = first+5;
		
		Member member = myPage.getMember(id);
		List<Reservation> reserList = myPage.getReserList(first, last, id, "1", "1");
		int totalPage = myPage.getListCount(id);
		List<Review> reviewList = myPage.getReviewList(id);
		List<QnA> QnAList = myPage.getQnAList(id);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("member/myPage");
		model.addObject("member", member);
		model.addObject("reserList", reserList);
		model.addObject("totalPage", (int) Math.ceil(totalPage/(double)6 ));
		model.addObject("reviewList", reviewList);
		model.addObject("QnAList", QnAList);
		model.addObject("page", page);
		model.addObject("tag",2);
		model.addObject("sort1", 1);
		model.addObject("sort2", 1);
		
		return model;
	}
	
}