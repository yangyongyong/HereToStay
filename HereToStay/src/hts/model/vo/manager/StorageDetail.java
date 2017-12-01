package hts.model.vo.manager;

public class StorageDetail extends PensionPaging {
	private String penId;
	private String penName;
	private String penAddr;
	private String penAddr2;
	private String ownId;
	private String stoId;
	private int stoBath;
	private int stoTnc;
	
	public StorageDetail(){
		
	}
	
	public StorageDetail(String penId, String penName, String penAddr, String penAddr2, String ownId, String stoId,
			int stoBath, int stoTnc) {
		super();
		this.penId = penId;
		this.penName = penName;
		this.penAddr = penAddr;
		this.penAddr2 = penAddr2;
		this.ownId = ownId;
		this.stoId = stoId;
		this.stoBath = stoBath;
		this.stoTnc = stoTnc;
	}
	
	public String getPenId() {
		return penId;
	}
	public void setPenId(String penId) {
		this.penId = penId;
	}
	public String getPenName() {
		return penName;
	}
	public void setPenName(String penName) {
		this.penName = penName;
	}
	public String getPenAddr() {
		return penAddr;
	}
	public void setPenAddr(String penAddr) {
		this.penAddr = penAddr;
	}
	public String getPenAddr2() {
		return penAddr2;
	}
	public void setPenAddr2(String penAddr2) {
		this.penAddr2 = penAddr2;
	}
	public String getOwnId() {
		return ownId;
	}
	public void setOwnId(String ownId) {
		this.ownId = ownId;
	}
	public String getStoId() {
		return stoId;
	}
	public void setStoId(String stoId) {
		this.stoId = stoId;
	}
	public int getStoBath() {
		return stoBath;
	}
	public void setStoBath(int stoBath) {
		this.stoBath = stoBath;
	}
	public int getStoTnc() {
		return stoTnc;
	}
	public void setStoTnc(int stoTnc) {
		this.stoTnc = stoTnc;
	}
	
	
}
