package hts.model.vo.member;

public class Reservation {
	private String penName;
	private String penIntro;
	private String resIndate;
	private String resOutdate;
	private String resTot;
	private String resPhoto;
	private String resId;
	
	//추가
	private String memId;
	private String romId;
	private String resStatus;
	
	
	public String getPenName() {
		return penName;
	}
	public void setPenName(String penName) {
		this.penName = penName;
	}
	public String getPenIntro() {
		return penIntro;
	}
	public void setPenIntro(String penIntro) {
		this.penIntro = penIntro;
	}
	public String getResIndate() {
		return resIndate;
	}
	public void setResIndate(String resIndate) {
		this.resIndate = resIndate;
	}
	public String getResOutdate() {
		return resOutdate;
	}
	public void setResOutdate(String resOutdate) {
		this.resOutdate = resOutdate;
	}
	public String getResTot() {
		return resTot;
	}
	public void setResTot(String resTot) {
		this.resTot = resTot;
	}
	public String getResPhoto() {
		return resPhoto;
	}
	public void setResPhoto(String resPhoto) {
		this.resPhoto = resPhoto;
	}
	public String getResId() {
		return resId;
	}
	public void setResId(String resId) {
		this.resId = resId;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getRomId() {
		return romId;
	}
	public void setRomId(String romId) {
		this.romId = romId;
	}
	public String getResStatus() {
		return resStatus;
	}
	public void setResStatus(String resStatus) {
		this.resStatus = resStatus;
	}	
	
	

}
