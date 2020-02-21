package com.tms.ssm.service;

import java.util.List;

import com.tms.ssm.po.Problem;
import com.tms.ssm.po.ProblemExample;

public interface ProblemService {

	long countByExample(ProblemExample example) throws Exception;
	
	Problem getProblemByNo(String proNo) throws Exception;
	
	List<Problem> getProblemList(ProblemExample example) throws Exception;
	
	void insertProblem(Problem problem) throws Exception;
	
	void updateProblem(String proNo, Problem problem) throws Exception;
	
	void deleteProblemByNo(String proNo) throws Exception;
	
	void updateProblemSelective(Problem problem, ProblemExample example) throws Exception;
	
}
