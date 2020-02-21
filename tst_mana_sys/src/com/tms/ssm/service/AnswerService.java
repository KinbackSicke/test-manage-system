package com.tms.ssm.service;

import java.util.List;

import com.tms.ssm.po.Answer;
import com.tms.ssm.po.AnswerExample;

public interface AnswerService {

	Answer getAnsewerByNo(String ansNo) throws Exception; 
	
	List<Answer> getAnswerList(AnswerExample example) throws Exception;
	
	void insertAnswer(Answer answer) throws Exception;
	
	void deleteAnswerByNo(String ansNo) throws Exception;
	
	void updateAnswer(String ansNo, Answer answer) throws Exception;
	
	long countByExample(AnswerExample example) throws Exception;
	
}
