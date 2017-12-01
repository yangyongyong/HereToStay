package hts.manager.dao;

import java.util.List;

import hts.model.vo.manager.Pension;
import hts.model.vo.manager.PensionDetail;
import hts.model.vo.manager.StorageDetail;

public interface ManagerPensionDAO {

   
//   List<Pension> list(Pension pension);
   
   List<Pension> list(Pension pension); //펜션리스트

   List<StorageDetail> stolist(StorageDetail sto); //재고리스트
   
   List<PensionDetail> list2(String id); //상세보기
   
   int pensionTC(Pension pension); //팬션 페이징 카운트
   
   int pensionLocalUpdate(String penId, String penAddr); //검수 허락
   
   Pension countDay(Pension pension); //일일 허가수
   
   Pension countMonth(Pension pension); //달별 허가수
   
   Pension countOk(Pension pension); //전체 허가수

   int pensionRefuse(Pension pension); //펜션 거절

   List<Pension> list3(Pension pension); //펜션리스트 페이징
   
   List<StorageDetail> list4(StorageDetail storageDetail);// 재고리스트 페이징

   int storageTC(StorageDetail storageDetail);//재고목록 페이징 카운트

   List<StorageDetail> list5(StorageDetail stoSearch);//재고리스트 검색
   
}