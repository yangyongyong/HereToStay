package hts.mongo.vo;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {

	private String code;
	private String realName; //displayFileName
	private String encryName;  // realFileName
	private MultipartFile fileUpload;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getRealName() {
		if(realName == null) {
			return ""; 
		}
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getEncryName() {
		if(encryName == null) {
			return ""; 
		}
		return encryName;
	}
	public void setEncryName(String encryName) {
		this.encryName = encryName;
	}
	public MultipartFile getFileUpload() {
		return fileUpload;
	}
	public void setFileUpload(MultipartFile fileUpload) {
		this.fileUpload = fileUpload;
	}

	
	
}
