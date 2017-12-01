package hts.model.vo.owner;

public class Room {
	private String romId;
	private String penId;
	private String romName;
	private String romType;
	private String romPeople;
	private String romIntro;
	private String romOpt;
	private int romCost;
	private String romStatus;
	
	public Room() {}
	
	public Room(String romId, String penId, String romName, String romType, String romPeople, String romIntro,
			String romOpt, int romCost, String romStatus) {
		super();
		this.romId = romId;
		this.penId = penId;
		this.romName = romName;
		this.romType = romType;
		this.romPeople = romPeople;
		this.romIntro = romIntro;
		this.romOpt = romOpt;
		this.romCost = romCost;
		this.romStatus = romStatus;
	}
	
	public String getRomId() {
		return romId;
	}
	public void setRomId(String romId) {
		this.romId = romId;
	}
	public String getPenId() {
		return penId;
	}
	public void setPenId(String penId) {
		this.penId = penId;
	}
	public String getRomName() {
		return romName;
	}
	public void setRomName(String romName) {
		this.romName = romName;
	}
	public String getRomType() {
		return romType;
	}
	public void setRomType(String romType) {
		this.romType = romType;
	}
	public String getRomPeople() {
		return romPeople;
	}
	public void setRomPeople(String romPeople) {
		this.romPeople = romPeople;
	}
	public String getRomIntro() {
		return romIntro;
	}
	public void setRomIntro(String romIntro) {
		this.romIntro = romIntro;
	}
	public String getRomOpt() {
		return romOpt;
	}
	public void setRomOpt(String romOpt) {
		this.romOpt = romOpt;
	}
	public int getRomCost() {
		return romCost;
	}
	public void setRomCost(int romCost) {
		this.romCost = romCost;
	}
	public String getRomStatus() {
		return romStatus;
	}
	public void setRomStatus(String romStatus) {
		this.romStatus = romStatus;
	}
	
	
	
}
