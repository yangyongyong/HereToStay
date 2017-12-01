package hts.manager.dao;

import hts.model.vo.manager.QnA;

public interface ManagerQnAViewDAO {

	QnA qnaView(QnA qna);
	
	int qnaReply(QnA qna);
}
