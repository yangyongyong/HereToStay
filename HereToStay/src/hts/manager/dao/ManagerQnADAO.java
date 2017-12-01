package hts.manager.dao;

import java.util.List;

import hts.model.vo.manager.QnA;

public interface ManagerQnADAO {
	List<QnA> list(QnA qna);
	List<QnA> ownerlist(QnA qna1);
	List<QnA> memlist(QnA qna2);

	int qnaTC(QnA qna);
	int ownerTC(QnA qna1);
	int memTC(QnA qna2);
}
