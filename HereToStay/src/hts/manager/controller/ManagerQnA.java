package hts.manager.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hts.manager.dao.ManagerQnADAO;
import hts.model.vo.manager.QnA;


@Controller
@RequestMapping("/manager")
public class ManagerQnA {
	@Autowired
	private ManagerQnADAO managerQnADAO;

	@RequestMapping("/QnAList.do")
	public ModelAndView list(QnA qna , QnA qna1, QnA qna2) {
		
		    //--페이징 처리
		int totalCount = managerQnADAO.qnaTC(qna);
		qna.setTotalCount(totalCount);	//페이징 처리를 위한 setter 호출
		
		int owntotalCount = managerQnADAO.ownerTC(qna1);
		qna1.setTotalCount1(owntotalCount);
	
		int memtotalCount = managerQnADAO.memTC(qna2);
		qna2.setTotalCount2(memtotalCount);
		    //--페이징 처리

		
		List<QnA> listModel = null;
		List<QnA> memlist = null;
		List<QnA> ownerlist = null;
		ownerlist = managerQnADAO.ownerlist(qna1);
		memlist = managerQnADAO.memlist(qna2);
		listModel = managerQnADAO.list(qna);
		
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/manager/QnAList");
		mv.addObject("pageVO",qna);
		mv.addObject("pageVO1",qna1);
		mv.addObject("pageVO2",qna2);
		mv.addObject("QnAlist",listModel);
		mv.addObject("memlist",memlist);
		mv.addObject("ownerlist",ownerlist);
		return mv;
	}

}
