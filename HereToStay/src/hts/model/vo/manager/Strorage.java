package hts.model.vo.manager;

public class Strorage {
	private String stoId;
	private String penId;
	private int stoBath;
	private int stoTnc;
	
	public Strorage() { 
		
	}
	
	public Strorage(String stoId, String penId, int stoBath, int stoTnc) {
		super();
		this.stoId = stoId;
		this.penId = penId;
		this.stoBath = stoBath;
		this.stoTnc = stoTnc;
	}

	public String getStoId() {
		return stoId;
	}
	public void setStoId(String stoId) {
		this.stoId = stoId;
	}
	public String getPenId() {
		return penId;
	}
	public void setPenId(String penId) {
		this.penId = penId;
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
