package hts.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.MemberJoinDao;
import hts.model.vo.member.Member;

@Controller
@RequestMapping("/member")
public class MemberJoin {
	
	@Autowired
	private MemberJoinDao memberJoin;
	
	@RequestMapping("/joinInsert.do")
	public ModelAndView joinInsert(HttpServletRequest request) {
		Member member = new Member();
		member.setMemId(request.getParameter("memId"));
		member.setMemPwd(request.getParameter("memPwd"));
		member.setMemName(request.getParameter("memName"));
		member.setMemTel(request.getParameter("memTel"));
		member.setMemMail(request.getParameter("memMail"));
		member.setMemBirth(request.getParameter("memBirth"));
		member.setMemRpwd(request.getParameter("memRpwd"));

		memberJoin.joinInsert(member);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		
		return model;
	}

	@RequestMapping("/idCheck.do")
	@ResponseBody
	public String idCheck(String memId) {
		String message = "사용 가능한 아이디 입니다.";
		
		if( memberJoin.idCheck(memId) != 0 ) {
			message = "이미 사용중인 아이디 입니다.";
		}
		
		return message;
	}
}
