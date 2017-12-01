package hts.model.vo.owner;

public class Owner {

	private String ownId;
	private String ownName;
	private String ownPwd;
	private String ownMail;
	private String ownTel;
	private String ownBank;
	private String ownAcc;
	private String ownLic;
	
	
	public Owner() {};
	
	public String getOwnId() {
		return ownId;
	}
	public void setOwnId(String ownId) {
		this.ownId = ownId;
	}
	public String getOwnName() {
		return ownName;
	}
	public void setOwnName(String ownName) {
		this.ownName = ownName;
	}
	public String getOwnPwd() {
		return ownPwd;
	}
	public void setOwnPwd(String ownPwd) {
		this.ownPwd = ownPwd;
	}
	public String getOwnMail() {
		return ownMail;
	}
	public void setOwnMail(String ownMail) {
		this.ownMail = ownMail;
	}
	public String getOwnTel() {
		return ownTel;
	}
	public void setOwnTel(String ownTel) {
		this.ownTel = ownTel;
	}
	public String getOwnBank() {
		return ownBank;
	}
	public void setOwnBank(String ownBank) {
		this.ownBank = ownBank;
	}
	public String getOwnAcc() {
		return ownAcc;
	}
	public void setOwnAcc(String ownAcc) {
		this.ownAcc = ownAcc;
	}
	public String getOwnLic() {
		return ownLic;
	}
	public void setOwnLic(String ownLic) {
		this.ownLic = ownLic;
	}
	public Owner(String ownId, String ownName, String ownPwd, String ownMail, String ownTel, String ownBank,
			String ownAcc, String ownLic) {
		super();
		this.ownId = ownId;
		this.ownName = ownName;
		this.ownPwd = ownPwd;
		this.ownMail = ownMail;
		this.ownTel = ownTel;
		this.ownBank = ownBank;
		this.ownAcc = ownAcc;
		this.ownLic = ownLic;
	}

}
