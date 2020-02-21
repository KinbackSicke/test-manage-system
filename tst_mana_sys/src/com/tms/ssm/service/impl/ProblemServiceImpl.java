package com.tms.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.ssm.mapper.ProblemMapper;
import com.tms.ssm.po.Problem;
import com.tms.ssm.po.ProblemExample;
import com.tms.ssm.service.ProblemService;

@Service
public class ProblemServiceImpl implements ProblemService{

	@Autowired
	private ProblemMapper problemMapper;
	
	@Override
	public Problem getProblemByNo(String proNo) throws Exception {
		return problemMapper.selectByPrimaryKey(proNo);
	}

	@Override
	public List<Problem> getProblemList(ProblemExample example) throws Exception {
		return problemMapper.selectByExample(example);
	}

	@Override
	public void insertProblem(Problem problem) throws Exception {
		problemMapper.insert(problem);
	}

	@Override
	public void updateProblem(String proNo, Problem problem) throws Exception {
		problem.setProNo(proNo);
		problemMapper.updateByPrimaryKeySelective(problem);
	}

	@Override
	public void deleteProblemByNo(String proNo) throws Exception {
		problemMapper.deleteByPrimaryKey(proNo);
	}

	@Override
	public void updateProblemSelective(Problem problem, ProblemExample example) throws Exception {
		problemMapper.updateByExampleSelective(problem, example);
	}

	@Override
	public long countByExample(ProblemExample example) throws Exception {
		return problemMapper.countByExample(example);
	}

	
	
}
