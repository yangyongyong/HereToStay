package hts.manager.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.manager.ManagerPaging;
import hts.model.vo.manager.QnA;

@Repository
public class ManagerQnAImpl implements ManagerQnADAO {

	@Autowired
	private SqlSessionTemplate ss2;
	

	@Override
	public List<QnA> list(QnA qna) {
	
		return ss2.selectList("ManagerQnA.qnaList",qna);
	}


	@Override
	public List<QnA> ownerlist(QnA qna) {
		// TODO Auto-generated method stub
		return ss2.selectList("ManagerQnA.ownerQnA",qna);
	}


	@Override
	public List<QnA> memlist(QnA qna) {
		// TODO Auto-generated method stub
		return ss2.selectList("ManagerQnA.memberQnA",qna);
	}


	@Override
	public int qnaTC(QnA qna) {
		// TODO Auto-generated method stub
		return ss2.selectOne("ManagerQnA.qnaCount",qna);
	}


	@Override
	public int ownerTC(QnA qna) {
		// TODO Auto-generated method stub
		return ss2.selectOne("ManagerQnA.ownCount",qna);
	}


	@Override
	public int memTC(QnA qna) {
		// TODO Auto-generated method stub
		return ss2.selectOne("ManagerQnA.memCount",qna);
	}

}
