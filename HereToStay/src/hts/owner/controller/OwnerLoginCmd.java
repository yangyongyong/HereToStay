package hts.owner.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.model.vo.owner.Owner;
import hts.owner.dao.OwnerLoginDao;

@Controller
@RequestMapping("/owner")
public class OwnerLoginCmd {
	
	@Autowired 
	private OwnerLoginDao ownerDAO;


	@RequestMapping(value="/owner/ownerLogin.do")
	public ModelAndView ownerLogin() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("include/login_logout");
		return mv;
	}
	
	
	//	로그인 컨트롤러 
	//	1.login check / void 사용
	@RequestMapping(value="/loginCheck.do")
	public void loginCheck(Locale locale, Model model, Owner LoginInfo, HttpSession session, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if((LoginInfo.getOwnId() !=null && !LoginInfo.getOwnId().equals("")
				&& LoginInfo.getOwnPwd() !=null && !LoginInfo.getOwnPwd().equals(""))) {
			if(ownerDAO.loginCheck(LoginInfo)) {
				session.setAttribute("login", 0);// 로그인 성공시 세션
				System.out.println("세션 추가됨");
				session.setAttribute("id", LoginInfo.getOwnId());
				out.println("<script>location.href='/owner.jsp'; </script>");
				out.flush();
				out.close();
				
			}
			if(ownerDAO.loginCheck(LoginInfo)==false) {
				out.println("<script>alert('로그인 정보를 확인하세요! ');history.go(-1); </script>");
				out.flush();
				out.close();
			}
		};
	}
	//	2.로그아웃 컨트롤러
	@RequestMapping(value="/logout.do")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		String page = "redirect:/owner.jsp";	
		session.removeAttribute("id");
		mv.setViewName(page);
		return mv;
	}
	
	//	회원가입 컨트롤러
	//	1. 페이지 이동 
	@RequestMapping("/Register.do")
	public ModelAndView ownerRegister() {		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("owner/OwnerRegister");
		return mv;
	}
	
	//2.회원가입 완료 후 완료페이지로 일단 이동
	@RequestMapping("/RegisterInsert.do")
	public ModelAndView ownerInsert(Owner owner) {	
		
		int ownerResult = ownerDAO.ownerInsert(owner);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("owner/Step3Ok");
		mv.addObject("OwnerInsert",ownerResult);
		return mv;
	}
	
}
