package hts.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.AboutUsDao;
import hts.model.vo.member.AboutUsData;

@Controller
@RequestMapping("/member")
public class AboutUs {
	
	@Autowired
	private AboutUsDao aboutUs;
	
	@RequestMapping("/aboutUs.do")
	public ModelAndView aboutUs() {
		
		AboutUsData aboutUsData = aboutUs.getAboutUs();
		
		ModelAndView model = new ModelAndView();
		model.setViewName("member/aboutUs");
		model.addObject("aboutUsData", aboutUsData);
		
		return model;
	}
}
