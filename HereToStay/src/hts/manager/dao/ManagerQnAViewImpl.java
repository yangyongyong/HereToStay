package hts.manager.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hts.model.vo.manager.QnA;

@Repository 
public class ManagerQnAViewImpl implements ManagerQnAViewDAO {
	@Autowired
	private SqlSessionTemplate ss2;

	@Override
	public QnA qnaView(QnA qna) {
		// TODO Auto-generated method stub
		return ss2.selectOne("ManagerQnAView.qnaViewList",qna);
	
	}

	@Override
	public int qnaReply(QnA qna) {
		// TODO Auto-generated method stub
		return ss2.update("ManagerQnAView.qnaReply",qna);
	}
}
