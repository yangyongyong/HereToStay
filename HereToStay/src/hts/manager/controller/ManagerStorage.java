package hts.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hts.manager.dao.ManagerStorageDAO;
import hts.model.vo.manager.Strorage;

@Controller
@RequestMapping("/manager")
public class ManagerStorage {
	
	@Autowired
	private ManagerStorageDAO managerStorageDAO;
	
	@RequestMapping("/pensionList2.do")
	public ModelAndView storageUpdate(Strorage sto) {
		int result = managerStorageDAO.storageUpdate(sto);
		
		
		ModelAndView mv = new ModelAndView();
		System.out.println(sto.getStoBath());
		mv.setViewName("/manager/pensionList"); 
		mv.addObject("result",result);
		return mv;
	}
	
	@RequestMapping("/bathUpdate.do")
	public ModelAndView bathUpdate(Strorage sto) {
		
	    System.out.println(sto.getStoBath());
		int result = managerStorageDAO.bathUpdate(sto);
		
		System.out.println(sto.getStoBath());
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/manager/storageDetail");
		mv.addObject("result",result);
		return mv;
	}
	
	@RequestMapping("/tncUpdate.do")
	public ModelAndView tncUpdate(Strorage sto) {
		int result = managerStorageDAO.tncUpdate(sto);
		
		System.out.println(sto.getPenId());
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/manager/storageDetail");
		mv.addObject("result",result);
		return mv;
	}
	
}
