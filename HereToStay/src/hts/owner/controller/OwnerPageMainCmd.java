package hts.owner.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import hts.model.vo.owner.Pension;
import hts.model.vo.owner.Reservation;
import hts.model.vo.owner.Room;
import hts.mongo.services.MongoService;
import hts.owner.dao.OwnerReserveDao;
import hts.owner.services.ServicePension;

@Controller
@RequestMapping("/owner")
public class OwnerPageMainCmd {

	@Autowired
	private ServicePension servicePension;
	
	@Autowired
	private MongoService mongoService;

	@Autowired
	private OwnerReserveDao resDAO;

	// 시작페이지 이동
	@RequestMapping("/Main.do")
	public ModelAndView ownerMain(String mode) {
		if (mode == null || mode.equals("") == true ) {
			mode = "main";
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("owner/OwnerMain");
		
		switch (mode) {
		case "apply":
			mv.addObject("mode","apply");
			break;
		case "main":
			mv.addObject("mode","main");
			break;
		}
		return mv;
	}
	
	// 펜션 등록 페이지 이동
	@RequestMapping("/Step1Pension.do")
	public ModelAndView ownerStep1Pension(Pension pension,HttpSession session) {

		ModelAndView mv = new ModelAndView();

		// 펜션 사장님 ID 
		pension.setOwnId((String)session.getAttribute("ownId"));

		// 펜션 기존 등록 여부 확인
		Pension pensiondb = servicePension.pensionSelect(pension);

		if ( pensiondb !=null) {
			// 펜션 데이터이 기존에 있을 경우 pension ID 값 가져오기
			String penId = pensiondb.getPenId();
			mv.setViewName("owner/Step1Pensiondb");
			mv.addObject("pensiondb",pensiondb);
			session.setAttribute("penId",penId);
					
//			// 몽고 서치 확인
//			List<MongoVO> data = mongoService.findMongo(penId);
//			session.setAttribute("mongoList", data);
//			System.out.println(data.get(0).getFullname());			
		}else {

			mv.setViewName("owner/Step1Pension");
		}
		return mv;
	}
	
	// 객실 등록 페이지 이동
	@RequestMapping("/Step2Room.do")
	public ModelAndView ownerStep2Room(Pension pension,Room room,HttpSession session,String mode, 
		MultipartHttpServletRequest mhsq) {
		System.out.println("****** Room.do 실행 Point 1 ******");
		System.out.println("****** Room.do 실행 초기선언 ******");
		ModelAndView mv = new ModelAndView();
		String ownId = (String)session.getAttribute("ownId");
		String penId = (String)session.getAttribute("penId");
		String findPenId;
		List<Room> roomTagList;

		// 펜션 등록 후 초기 화면 
		// 화면 출력 내용 여부로 첫 페이지 전환 
		if(mode == null || mode.equals("") == true) {
			System.out.println("****** Room.do 실행 Point 2 ******");
			System.out.println("****** Room.do 실행 첫페이지 구분 ******");
			pension.setOwnId(ownId);
			pension.setPenId(penId);
			// 	ID값을 통해 펜션정보 입력 및 업데이트
			servicePension.pensionInsert(pension);
			findPenId = servicePension.findPension(ownId);
			
			// 몽고 DB 진입
			mongoService.addPension(findPenId,mhsq);
			// 펜션 ID 로 등록된 ROMID / ROMNAME 찾기
			roomTagList = servicePension.roomTagList(findPenId);
			if(roomTagList.size()==0) {
				// 없다면 입력화면으로
				mv.setViewName("owner/Step2Room");
				return mv;
			}else {
				// 있다면 기존 데이터 보여주는 화면으로
				mv.setViewName("owner/Step2Roomdb");
				mv.addObject("roomTagList",roomTagList);
				Room roomdb = servicePension.roomSelect(findPenId,"1"); // 한줄만 
				mv.addObject("roomdb",roomdb);
				mv.addObject("mode","1");
				return mv;
			}
		// 객실추가 버튼 클릭시
		}else if ( mode.equals("create")) {
			System.out.println("****** Room.do 실행 Point 3 ******");
			System.out.println("****** Room.do 실행 mode=Create ******");
			// 펜션코드 가져오기
			findPenId = servicePension.findPension(ownId);
			
			// 룸 입력을 위해 펜션 ID 입력
			room.setPenId(findPenId);
			
			// 룸 생성 / insert 인지 update 인지 서비스단에서 해결
			String roomId = servicePension.roomInsert(room);
			
			// 몽고 DB 진입
			mongoService.addPension(roomId,mhsq);
			
			mv.setViewName("owner/Step2Room");
			
			// 객실코드 및 이름 가져가기
			roomTagList = servicePension.roomTagList(findPenId);
			
			mv.addObject("roomTagList",roomTagList);
			
		}else {
			
			System.out.println("****** Room.do 실행 Point 4 ******");
			System.out.println("****** Room.do 실행 mode=num ******");
			
			// 룸 생성 / insert 인지 update 인지 서비스단에서 해결
			String roomId = servicePension.roomInsert(room);
			// 몽고 DB 진입
			System.out.println("진입전 roomId :: " + roomId);
			mongoService.addPension(roomId,mhsq);
			
			// 펜션코드 가져오기
			findPenId = servicePension.findPension(ownId);
			
			// 펜션 코드를 통한 ID / NAME 리스트 가져오기
			roomTagList = servicePension.roomTagList(findPenId);
			mv.addObject("roomTagList",roomTagList);
			
			mv.setViewName("owner/Step2Roomdb");
			
			// 객실코드 및 이름 가져가기
			mv.addObject("roomTagList",roomTagList);
			// mode == rownum // 선택된 rownum 값 가져오기  
			Room roomdb = servicePension.roomSelect(findPenId,mode); // 한줄만 
			mv.addObject("roomdb",roomdb);
			mv.addObject("mode",mode);
		}
		return mv;
	}
	
	@RequestMapping("/Step2RoomDelete.do")
	public ModelAndView Step2RoomDelete(Pension pension,Room room,HttpSession session,String mode) {
		ModelAndView mv = new ModelAndView();
		String ownId = (String)session.getAttribute("ownId");
		// 펜션 ID 검색
		String findPenId = servicePension.findPension(ownId);
		
		// roomID 로 오라클 및 몽고 데이터 지우기
		String roomId = servicePension.deleteRoom(findPenId,mode);
		mongoService.removeMongo(roomId);
		
		mv.setViewName("owner/Step2Roomdb");
		return mv;
	}

	// 펜션 및 객실 등록 완료
	@RequestMapping("/Step3Ok.do")
	public ModelAndView Step3Ok(Pension pension, Room room,HttpSession session, 
			MultipartHttpServletRequest mhsq) {

		ModelAndView mv = new ModelAndView();
					
		room.setPenId(servicePension.findPension((String)session.getAttribute("ownId")));

		// 룸 생성 / insert 인지 update 인지 서비스단에서 해결
		String roomId = servicePension.roomInsert(room);
		// 몽고 진입
		mongoService.addPension(roomId,mhsq);
		
		mv.setViewName("owner/Step3Ok");
		
		return mv;
	}	

	@RequestMapping("/Success.do")
	public ModelAndView Success(){
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	// 예약현황 리스트 로이동 하고 리스트 출력 값 넘기는 컨트롤러  	
	@RequestMapping("/Reservation.do")
	public ModelAndView reslist(Reservation vo) {

		List<Reservation> listModel = null;
		listModel = resDAO.reslist();
		Reservation Count = resDAO.resCount(vo);
		List<Reservation> Rate = resDAO.resRate(vo);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("owner/OwnerReservation");
		mv.addObject("listModel", listModel);
		mv.addObject("listCount", Count);
		mv.addObject("listRate",Rate);

		return mv;
	}


}

