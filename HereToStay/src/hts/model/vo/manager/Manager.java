package hts.model.vo.manager;

public class Manager {

	private String mgrId;
	private String mgrName;
	private String mgrPwd;
	private String mgrStatus;
	
	
	
	
	public Manager() {
		
	}
	
	public Manager(String mgrId, String mgrName, String mgrPwd, String mgrStatus) {
		super();
		this.mgrId = mgrId;
		this.mgrName = mgrName;
		this.mgrPwd = mgrPwd;
		this.mgrStatus = mgrStatus;
	}
	
	
	public String getMgrId() {
		return mgrId;
	}
	public void setMgrId(String mgrId) {
		this.mgrId = mgrId;
	}
	public String getMgrName() {
		return mgrName;
	}
	public void setMgrName(String mgrName) {
		this.mgrName = mgrName;
	}
	public String getMgrPwd() {
		return mgrPwd;
	}
	public void setMgrPwd(String mgrPwd) {
		this.mgrPwd = mgrPwd;
	}
	public String getMgrStatus() {
		return mgrStatus;
	}
	public void setMgrStatus(String mgrStatus) {
		this.mgrStatus = mgrStatus;
	}
	
	
	
}
