package hts.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.member.dao.IndexDao;
import hts.model.vo.member.Pension;
import hts.model.vo.member.Room;

@Controller
@RequestMapping("/member")
public class Index {
	
	@Autowired
	private IndexDao indexDao;
	
	// WEB-INF 파일 index.jsp 이동 컨트롤러
	@RequestMapping("/index.do")
	public ModelAndView startHTS(HttpSession sess, String session, String logOut) {
		if(logOut != null) { sess.invalidate();	}
		
		List<Pension> pension = indexDao.getPopularPension();
		for (int i = 0; i < pension.size(); i++) {
			pension.get(i).setMinCost(indexDao.getMinCost(pension.get(i).getPenId()));
		}
		
		List<Room> minPension = indexDao.getMinPension();
		
		ModelAndView model = new ModelAndView();
		model.setViewName("member/index");
		model.addObject("session", session);
		model.addObject("popular", pension);
		model.addObject("minCostRoom", minPension);
		
		return model;
	}
}