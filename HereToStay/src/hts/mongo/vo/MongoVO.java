package hts.mongo.vo;

import org.springframework.data.annotation.Id;

public class MongoVO {

	@Id
	private String id;
	
	private String code;
	private String realName;  // 업로드시 가져온 파일 명
	private String encryName; // 중복을 피하기 위한 UUID 명
	private String fullname;  // UUID 및 확장자 명

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
}
