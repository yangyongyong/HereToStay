package hts.manager.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hts.manager.dao.ManagerLoginDAO;
import hts.manager.dao.ManagerPensionDAO;
import hts.model.vo.manager.Manager;

@Controller
@RequestMapping("/manager")
public class ManagerLogin {
	
	@Autowired
	private ManagerLoginDAO managerLoginDAO; 
	
	
//  로그인 컨트롤러 
  //   1.login check / void 사용
  @RequestMapping(value="/loginCheck.do")
  public void loginCheck(Locale locale, Model model, Manager LoginInfo, HttpSession session, HttpServletResponse response) throws IOException {
     System.out.println(LoginInfo.getMgrId());
     System.out.println(LoginInfo.getMgrPwd());
     
     response.setContentType("text/html; charset=UTF-8");
     PrintWriter out = response.getWriter();
     if((LoginInfo.getMgrId() !=null && !LoginInfo.getMgrId().equals("")
           && LoginInfo.getMgrPwd() !=null && !LoginInfo.getMgrPwd().equals(""))) {
        if(managerLoginDAO.loginCheck(LoginInfo)) {
           session.setAttribute("login", 0);// 로그인 성공시 세션
           System.out.println("세션 추가됨");
           session.setAttribute("id", LoginInfo.getMgrId());
           
           out.println("<script>location.href='/manager/pensionList.do'; </script>");
           out.flush();
           out.close();
           
        }
        if(managerLoginDAO.loginCheck(LoginInfo)==false) {
           out.println("<script>alert('로그인 정보를 확인하세요! ');history.go(-1); </script>");
           out.flush();
           out.close();
        }
     };
  }
  //   2.로그아웃 컨트롤러
  @RequestMapping(value="/logout.do")
  public ModelAndView logout(ModelAndView mv, HttpSession session) {
     String page = "redirect:/index1.jsp";   
     session.removeAttribute("id");
     mv.setViewName(page);
     return mv;
  }

}
