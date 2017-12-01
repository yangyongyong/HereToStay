package hts.model.vo.manager;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class Pension extends PensionPaging {

	private String penId;
	private String penName;
	private String penAddr;
	private String penAddr2;
	private String penOpt;
	private String penIntro;
	private String penLoad;
	private String penNoti;
	private String penShot;
	private String penEhot;
	private String penStatus;
	private String ownId;
	private String penDate;
	private String penDay;
	private String penMonth;
	private String penOk;
	
	

	
	public Pension() 
	{

	}
	
	public Pension(String penId, String penName, String penAddr, String penAddr2, String penOpt, String penIntro,
			String penLoad, String penNoti, String penShot, String penEhot, String penStatus, String ownId,String penDate,	 String penDay , String penMonth, String penOk) {
		super();
		this.penId = penId;
		this.penName = penName;
		this.penAddr = penAddr;
		this.penAddr2 = penAddr2;
		this.penOpt = penOpt;
		this.penIntro = penIntro;
		this.penLoad = penLoad;
		this.penNoti = penNoti;
		this.penShot = penShot;
		this.penEhot = penEhot;
		this.penStatus = penStatus;
		this.ownId = ownId;
		this.penDate = penDate;
		this.penDay = penDay;
		this.penMonth = penMonth;
		this.penOk = penOk;
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
	public String getPenOpt() {
		return penOpt;
	}
	public void setPenOpt(String penOpt) {
		this.penOpt = penOpt;
	}
	public String getPenIntro() {
		return penIntro;
	}
	public void setPenIntro(String penIntro) {
		this.penIntro = penIntro;
	}
	public String getPenLoad() {
		return penLoad;
	}
	public void setPenLoad(String penLoad) {
		this.penLoad = penLoad;
	}
	public String getPenNoti() {
		return penNoti;
	}
	public void setPenNoti(String penNoti) {
		this.penNoti = penNoti;
	}
	public String getPenShot() {
		return penShot;
	}
	public void setPenShot(String penShot) {
		this.penShot = penShot;
	}
	public String getPenEhot() {
		return penEhot;
	}
	public void setPenEhot(String penEhot) {
		this.penEhot = penEhot;
	}
	public String getPenStatus() {
		return penStatus;
	}
	public void setPenStatus(String penStatus) {
		this.penStatus = penStatus;
	}
	public String getOwnId() {
		return ownId;
	}
	public void setOwnId(String ownId) {
		this.ownId = ownId;
	}

	public String getPenDate() {
		return penDate;
	}

	public void setPenDate(String penDate) {
		this.penDate = penDate;
	}

	public String getPenDay() {
		return penDay;
	}

	public void setPenDay(String penDay) {
		this.penDay = penDay;
	}

	public String getPenMonth() {
		return penMonth;
	}

	public void setPenMonth(String penMonth) {
		this.penMonth = penMonth;
	}

	public String getPenOk() {
		return penOk;
	}

	public void setPenOk(String penOk) {
		this.penOk = penOk;
	}
	
	
}
