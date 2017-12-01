package hts.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.manager.dao.ManagerQnAViewDAO;
import hts.model.vo.manager.QnA;

@Controller
@RequestMapping("/manager")
public class ManagerQnAView {
	@Autowired
	private ManagerQnAViewDAO managerQnAViewDAO;
	
	@RequestMapping("/qnaDetail.do")
	public ModelAndView qnaView(QnA qna)
	{
		QnA qna_vo = managerQnAViewDAO.qnaView(qna);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/manager/QnADetail");
		mv.addObject("QnAmodel",qna_vo);
		return mv;
         // list.jsp로 List가 전달된다.
	}
	
	@RequestMapping("/QnAreplyModify.do")
	public ModelAndView qnaReply(QnA qna)
	{
		int Replyresult = managerQnAViewDAO.qnaReply(qna);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/manager/QnADetail");
		mv.addObject("Replyresult",Replyresult);
		return mv;
	}
}
