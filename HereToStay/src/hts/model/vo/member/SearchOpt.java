package hts.model.vo.member;

public class SearchOpt {

	private String searchName;
	private String checkIn;
	private String checkOut;
	private String persons;
	private String priceFrom;
	private String priceTo;
	private String[] penOpt;
	private String[] roomOpt;
	
	
	
	public String getPriceFrom() {
		return priceFrom;
	}
	public void setPriceFrom(String priceFrom) {
		this.priceFrom = priceFrom;
	}
	public String getPriceTo() {
		return priceTo;
	}
	public void setPriceTo(String priceTo) {
		this.priceTo = priceTo;
	}
	public String getSearchName() {
		return searchName;
	}
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public String getPersons() {
		return persons;
	}
	public void setPersons(String persons) {
		this.persons = persons;
	}
	public String[] getPenOpt() {
		return penOpt;
	}
	public void setPenOpt(String[] penOpt) {
		this.penOpt = penOpt;
	}
	public String[] getRoomOpt() {
		return roomOpt;
	}
	public void setRoomOpt(String[] roomOpt) {
		this.roomOpt = roomOpt;
	}

	
	
	
}
