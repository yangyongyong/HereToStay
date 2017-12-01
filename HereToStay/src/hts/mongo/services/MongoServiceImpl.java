package hts.mongo.services;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import hts.model.vo.member.Pension;
import hts.model.vo.member.Room;
import hts.mongo.dao.MongoDao;
import hts.mongo.vo.MongoVO;

@Service
public class MongoServiceImpl implements MongoService {

	@Autowired
	private MongoDao mongoDao;

	// MultipartHttpServletRequest 다중 파일을 받아주는 객세
	@Override
	public int addPension(String code, MultipartHttpServletRequest mhsq) {
		// 다중 파일 전송\
		String realFolder = "C:/Users/kosta/git/HereToStay_owner/HereToStay_indiv/upload2/";
		File dir = new File(realFolder);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		List<MongoVO> data = mongoDao.findData(code);
		if (data.size() > 0) {
				mongoDao.deleteData(code);
				for( int i = 0; i<data.size() ; i++) {
					String savePath = realFolder + data.get(i).getFullname();
					File f = new File(savePath);
					if (f.delete()) {
					     System.out.println("파일 또는 디렉토리를 성공적으로 지웠습니다: " + savePath);
					} else {
					   System.err.println("파일 또는 디렉토리 지우기 실패: " + savePath);
					}
				}
		}
		
		List<MultipartFile> mf = mhsq.getFiles("uploadFile");
		if (mf.size() == 1 && mf.get(0).getOriginalFilename().equals("")) {
            
        } else {
            for (int i = 0; i < mf.size(); i++) {
                // 파일 중복명 처리
//                String genId = UUID.randomUUID().toString();
            	String encryptFileName = UUID.randomUUID().toString();
                // 본래 파일명
//                String originalfileName = mf.get(i).getOriginalFilename();
    			String realFileName = mf.get(i).getOriginalFilename();
                 
                String saveFileName = encryptFileName + "." + FilenameUtils.getExtension(realFileName);
                // 저장되는 파일 이름
 
                String savePath = realFolder + saveFileName; // 저장 될 파일 경로

 
                try {
					mf.get(i).transferTo(new File(savePath));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
                fileUpload(code, realFileName, encryptFileName, saveFileName);
            }
            return 1;
        }
		return 0;

}
	
	public void fileUpload(String code, String realFileName,String encryptFileName, String saveFileName) {
		MongoVO mongovo = new MongoVO();
		
		mongovo.setCode(code);
		mongovo.setEncryName(encryptFileName);
		mongovo.setRealName(realFileName);
		mongovo.setFullname(saveFileName);
		
	    mongoDao.addPension(mongovo);

	}

	@Override
	public List<MongoVO> findMongo(String penId) {
			
		return  mongoDao.findData(penId);
	}

	@Override
	public int removeMongo(String roomId) {
		String realFolder = "C:/Users/kosta/git/HereToStay_owner/HereToStay_indiv/upload2/";
		List<MongoVO> data = mongoDao.findData(roomId);
		if (data.size() > 0) {
				mongoDao.deleteData(roomId);
				for( int i = 0; i<data.size() ; i++) {
					String savePath = realFolder + data.get(i).getFullname();
					File f = new File(savePath);
					if (f.delete()) {
					     System.out.println("파일 또는 디렉토리를 성공적으로 지웠습니다: " + savePath);
					} else {
					   System.err.println("파일 또는 디렉토리 지우기 실패: " + savePath);
					}
				}
		}
		return 0;
	}

	// 펜션 전체 정보 받아보기
	@Override
	public ArrayList findMongoPList(List<Pension> pl) {
		return mongoDao.findDataPList(pl);
	}

	@Override
	public ArrayList findMongoRList(List<Room> rl) {
		return mongoDao.findDataRList(rl);
	}
}