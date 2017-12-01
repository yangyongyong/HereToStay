package hts.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.QnADetailDao;
import hts.model.vo.member.MyQnADetail;

@Controller
@RequestMapping("/member")
public class QnADetail {
	
	@Autowired
	private QnADetailDao qna;
	
	@RequestMapping("/getQnA.do")
	public ModelAndView getQnA(HttpSession session, String qnaId) {
		String memId = (String)session.getAttribute("memId");
		MyQnADetail qnaDetail = qna.getQnA(memId, qnaId);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("member/QnADetail");
		model.addObject("qnaDetail", qnaDetail);
		
		return model;
	}
}