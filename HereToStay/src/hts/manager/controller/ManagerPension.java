package hts.manager.controller;

import java.util.List;

import org.springframework.ui.Model;

import hts.manager.dao.ManagerPensionDAO;
import hts.model.vo.manager.Pension;
import hts.model.vo.manager.PensionDetail;
import hts.model.vo.manager.StorageDetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 


@Controller
@RequestMapping("/manager")
public class ManagerPension {
   
   @Autowired
   private ManagerPensionDAO managerPensionDAO;
   
   @RequestMapping("/pensionList.do") //펜션리스트 출력 
   public ModelAndView pensionList(Pension pension,StorageDetail storageDetail) {
      //DB ����;
//      System.out.println(pension.getPenName());
      
      List<Pension> penModel = null;
      penModel = managerPensionDAO.list(pension);
      
      List<StorageDetail> stoModel = null;
      stoModel = managerPensionDAO.stolist(storageDetail);
      
      Pension countDay = managerPensionDAO.countDay(pension);
      
      Pension countMonth = managerPensionDAO.countMonth(pension);
      
      Pension countOk = managerPensionDAO.countOk(pension);
      
   
      
      ModelAndView mv = new ModelAndView();
//      mv.addAttribute("listModel",listModel);
      mv.setViewName("/manager/pensionList");
      mv.addObject("listmodel",penModel);
      mv.addObject("listModel",stoModel);
      mv.addObject("countday",countDay);
      mv.addObject("countmonth",countMonth);
      mv.addObject("countok",countOk);
   
      
      return mv;   
   }
   
   @RequestMapping("/pensionMore.do") // 펜션 더보기
   public ModelAndView pensionListMore(Pension pension,StorageDetail storageDetail) {
      //DB ����;
//      System.out.println(pension.getPenName());
      int totalCount = managerPensionDAO.pensionTC(pension);
      
      pension.setTotalCount(totalCount);
      
      List<Pension> penModel = null;
      penModel = managerPensionDAO.list3(pension);

      ModelAndView mv = new ModelAndView();

      mv.setViewName("/manager/pensionMore");
      mv.addObject("listmodel",penModel);
      mv.addObject("pageVO",pension);
   
      
      return mv;   
   }
   

   
   @RequestMapping("/storageDetail.do") // 재고 더보기
   public ModelAndView storageDetail(Pension pension,StorageDetail storageDetail) {

      // 페이징 처리를 전체 개수 얻어오기
      int totalCount = managerPensionDAO.storageTC(storageDetail);
      // 개수
      storageDetail.setTotalCount(totalCount);
      
      List<StorageDetail> stoModel = null;
      stoModel = managerPensionDAO.list4(storageDetail);
   
      
      ModelAndView mv = new ModelAndView();

      mv.setViewName("/manager/storageDetail");
      mv.addObject("listModel",stoModel);
      mv.addObject("pageVO",storageDetail);
   
      
      return mv;   
   }
   
   
   
   @RequestMapping("/pensionDetail.do") //펜션 상세보기
   public ModelAndView pensionDetail(String selectId) {
      //DB ����;
//      System.out.println(pension.getPenName());
      
      List<PensionDetail> pensionList = null;
      pensionList = managerPensionDAO.list2(selectId);
      
      ModelAndView mv = new ModelAndView();
//      mv.addAttribute("listModel",listModel);
      mv.setViewName("/manager/pensionDetail");
      mv.addObject("detail",pensionList);
      
      return mv;   
   }
   

   
   @RequestMapping("/localPermission.do") //펜션 수락하기(update query)
   public ModelAndView localPermission(String penId, String penAddr) {

      System.out.println("모달 이후 > "+penId);
      System.out.println("모달 이후 > "+penAddr);
      
      int pensionList = managerPensionDAO.pensionLocalUpdate(penId, penAddr);
 
      ModelAndView mv = new ModelAndView();
      mv.setViewName("/manager/pensionDetail");
      mv.addObject("permission",pensionList);
      
      return mv;   
   }
   
   
   @RequestMapping("/pensionRefuse.do") //펜션 거절하기
   public ModelAndView pensionRefuse(Pension pension) {
      int refuse = managerPensionDAO.pensionRefuse(pension);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("/manager/pensionDetail");
      mv.addObject("refuse",refuse);

      return mv;
   }
   @RequestMapping("/stoSearch.do")
   public ModelAndView stoSearch(StorageDetail storageDetail) { //편션검색 리스트
      
      int totalCount = managerPensionDAO.storageTC(storageDetail);
      storageDetail.setTotalCount(totalCount);
      
      List<StorageDetail> stoModel = null;
      stoModel = managerPensionDAO.list5(storageDetail);
      
      ModelAndView mv = new ModelAndView();
      
      mv.setViewName("/manager/storageDetail");
      mv.addObject("listModel",stoModel);
      mv.addObject("pageVO",storageDetail);
      
      return mv;
            
   }
   
   
   
}
