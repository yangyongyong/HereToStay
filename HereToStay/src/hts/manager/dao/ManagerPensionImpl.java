package hts.manager.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.manager.Pension;
import hts.model.vo.manager.PensionDetail;
import hts.model.vo.manager.StorageDetail;

@Repository
public class ManagerPensionImpl implements ManagerPensionDAO {
 
   @Autowired
   private SqlSessionTemplate ss2;
      
//   @Override
//   public List<Pension> list(Pension pension) {
//      // TODO Auto-generated method stub 
//       return ss.selectList("ManagerPension.pensionList",pension);
//   }
   @Override
   public List<Pension> list(Pension pension) { //�㰡��û��Ϻ���
      // TODO Auto-generated method stub 
       return ss2.selectList("ManagerPension.pensionList", pension);
   }
   
   @Override
   public List<PensionDetail> list2(String id) { //��û���̺� Ŭ���ϸ� Detail�� ȭ�� ��ȯ
      System.out.println(id);
       return ss2.selectList("ManagerPension.pensionDetail", id);
   }


   @Override
   public int pensionLocalUpdate(String penId, String penAddr) {
      HashMap map = new HashMap();
      map.put("penId", penId);
      map.put("penAddr", penAddr);
      
      return ss2.update("ManagerPension.pensionLocalUpdate", map);
   }


   public List<StorageDetail> stolist(StorageDetail sto) {
      // TODO Auto-generated method stub
      return ss2.selectList("ManagerStorage.storageList");
   }
   

   @Override
   public Pension countDay(Pension pension) { //일일 카운트
      // TODO Auto-generated method stub
      return ss2.selectOne("ManagerPension.countDay",pension);
   }

   @Override
   public Pension countMonth(Pension pension) { //한달 카운트
      // TODO Auto-generated method stub
      return ss2.selectOne("ManagerPension.countMonth",pension);
   }

   @Override
   public Pension countOk(Pension pension) { // 수락 카운트
      // TODO Auto-generated method stub
      return ss2.selectOne("ManagerPension.countOk",pension);
   }

   @Override
   public int pensionRefuse(Pension pension) {
      // TODO Auto-generated method stub
      return ss2.update("ManagerPension.pensionRefuse", pension);

   }

   @Override
   public int pensionTC(Pension pension) {
      // TODO Auto-generated method stub
      return ss2.selectOne("ManagerPension.pensionTC",pension);
   }

   public List<Pension> list3(Pension pension) { // 펜션페이징
      // TODO Auto-generated method stub
      return ss2.selectList("ManagerPension.pensionPaging", pension);
   }

   public List<StorageDetail> list4(StorageDetail sto) {
      // TODO Auto-generated method stub
      return ss2.selectList("ManagerStorage.stoPaging", sto);
   }

   @Override
   public int storageTC(StorageDetail storageDetail) {
      // TODO Auto-generated method stub
      return ss2.selectOne("ManagerStorage.storageTC",storageDetail);
   }

   @Override
   public List<StorageDetail> list5(StorageDetail stoSearch) { //펜션 검색
      // TODO Auto-generated method stub
      return ss2.selectList("ManagerStorage.stoSearch",stoSearch);
   }





}