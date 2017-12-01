package hts.owner.dao;

import java.util.List;

import hts.model.vo.owner.Reservation;

public interface OwnerReserveDao {
	/*
	 * 게시물 목록 가져오는 DAO
	 */
	
	List<Reservation> reslist();
	
	/*
	 * 총매출 ,이용자수 값찍기 
	 * */
	Reservation resCount(Reservation vo);
	
	/*
	 * 월별이용자수
	 * */
	List<Reservation> resRate(Reservation vo);
}
