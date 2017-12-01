package hts.model.vo.owner;

public class Reservation {

	private String penId;
	private String resId;
	private String memId;
	private String romId;
	private String romName;
	private String penName;
	private String resIndate;
	private String resOutdate;
	private String restot;
	private String resStatus;
	private String resNumber;
	
	

	public Reservation(){};
	
	public Reservation(String resId, String memId, String romId, String resIndate, String resOutdate, String restot,
			String resStatus) {
		super();
		this.resId = resId;
		this.memId = memId;
		this.romId = romId;
		this.resIndate = resIndate;
		this.resOutdate = resOutdate;
		this.restot = restot;
		this.resStatus = resStatus;
	}
	
	public String getResNumber() {
		return resNumber;
	}

	public void setResNumber(String resNumber) {
		this.resNumber = resNumber;
	}

	
	public String getPenName() {
		return penName;
	}

	public void setPenName(String penName) {
		this.penName = penName;
	}

	public String getRomName() {
		return romName;
	}

	public void setRomName(String romName) {
		this.romName = romName;
	}

	
	public String getPenId() {
		return penId;
	}

	public void setPenId(String penId) {
		this.penId = penId;
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
	public String getRestot() {
		return restot;
	}
	public void setRestot(String restot) {
		this.restot = restot;
	}
	public String getResStatus() {
		return resStatus;
	}
	public void setResStatus(String resStatus) {
		this.resStatus = resStatus;
	}

}
