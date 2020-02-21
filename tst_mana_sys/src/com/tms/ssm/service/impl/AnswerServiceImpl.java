package com.tms.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.ssm.mapper.AnswerMapper;
import com.tms.ssm.po.Answer;
import com.tms.ssm.po.AnswerExample;
import com.tms.ssm.service.AnswerService;

@Service
public class AnswerServiceImpl implements AnswerService{

	@Autowired
	private AnswerMapper answerMapper;
	
	@Override
	public Answer getAnsewerByNo(String ansNo) throws Exception {
		return answerMapper.selectByPrimaryKey(ansNo);
	}

	@Override
	public List<Answer> getAnswerList(AnswerExample example) throws Exception {
		return answerMapper.selectByExample(example);
	}

	@Override
	public void insertAnswer(Answer answer) throws Exception {
		answerMapper.insert(answer);
	}

	@Override
	public void deleteAnswerByNo(String ansNo) throws Exception {
		answerMapper.deleteByPrimaryKey(ansNo);
	}

	@Override
	public void updateAnswer(String ansNo, Answer answer) throws Exception {
		answer.setAnsNo(ansNo);
		answerMapper.updateByPrimaryKeySelective(answer);
	}

	@Override
	public long countByExample(AnswerExample example) throws Exception {
		return answerMapper.countByExample(example);
	}

	
	
}
