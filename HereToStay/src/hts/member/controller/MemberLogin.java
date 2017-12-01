package hts.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import hts.member.dao.MemberLoginDao;

@Controller
@RequestMapping("/member")
public class MemberLogin {
	
	@Autowired
	MemberLoginDao memberLogin;
	
	@RequestMapping("/memCheck.do")
	@ResponseBody
	public String memCheck(String memId, String memPwd) {
		String resultData = new String();
		if(memberLogin.memCheck(memId, memPwd) == 0) {
			resultData = "0";
		} else {
			resultData = "1";
		}
		
		return resultData;
	}
}