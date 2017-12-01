package hts.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.MyPageMemInfoDao;
import hts.member.dao.QnADetailDao;
import hts.model.vo.member.Member;
import hts.model.vo.member.MyQnADetail;
import hts.model.vo.member.QnA;
import hts.model.vo.member.Reservation;
import hts.model.vo.member.Review;

@Controller
@RequestMapping("/member")
public class QnAInsert {

	@Autowired
	private QnADetailDao qnaDetail;
	@Autowired
	private MyPageMemInfoDao myPage;
	
	
	@RequestMapping("/qnaWrite.do")
	public ModelAndView qnaWrite(HttpSession session) {
		String memId = (String)session.getAttribute("memId");
		ModelAndView model = new ModelAndView();
		
		if(memId != null) {
			model.setViewName("member/QnAWrite");
		} else {
			model.setViewName("member/index");
			model.addObject("goLogin", "goLogin");	
		}
		return model;
	}
	
	@RequestMapping("/qnaInsert.do")
	public ModelAndView qnaInsert(HttpSession session, QnA qna) {
		String memId = (String)session.getAttribute("memId");
		qna.setUserId(memId);
		
		if(qna.getQnaType().equals("펜션관리")) {
			qna.setMgrId("admin4");
		} else if(qna.getQnaType().equals("예약관리")) {
			qna.setMgrId("admin3");
		} else if(qna.getQnaType().equals("불만사항")) {
			qna.setMgrId("admin2");
		} else if(qna.getQnaType().equals("기타")) {
			qna.setMgrId("admin1");
		}
		
		qnaDetail.qnaInsert(qna);

		
		int page = 1;
		int first = (page-1)*6+1;
		int last = first+5;

		Member member = myPage.getMember(memId);
		List<Reservation> reserList = myPage.getReserList(first, last, memId, "1", "1");
		int totalPage = myPage.getListCount(memId);
		List<Review> reviewList = myPage.getReviewList(memId);
		List<QnA> QnAList = myPage.getQnAList(memId);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("member/myPage");
		model.addObject("member", member);
		model.addObject("reserList", reserList);
		model.addObject("totalPage", (int) Math.ceil(totalPage/(double)6 ));
		model.addObject("reviewList", reviewList);
		model.addObject("QnAList", QnAList);
		model.addObject("page", page);
		model.addObject("tag", "4");
		model.addObject("sort1", "1");
		model.addObject("sort2", "1");
		
		return model;
	}
}