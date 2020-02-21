package com.tms.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.ssm.mapper.TestMapper;
import com.tms.ssm.po.Test;
import com.tms.ssm.po.TestExample;
import com.tms.ssm.service.TestService;

@Service
public class TestServiceImpl implements TestService{

	@Autowired
	private TestMapper testMapper;
	
	@Override
	public List<Test> getTestList(TestExample example) throws Exception {		
		return testMapper.selectByExample(example);
	}

	@Override
	public Test findTestByNo(String tstNo) throws Exception {
		return testMapper.selectByPrimaryKey(tstNo);
	}

	@Override
	public void insertTest(Test test) throws Exception {
		testMapper.insert(test);
	}

	@Override
	public void deleteTestByNo(String tstNo) throws Exception {
		testMapper.deleteByPrimaryKey(tstNo);
	}

	@Override
	public void updateTest(String tstNo, Test test) throws Exception {
		test.setTstNo(tstNo);
		testMapper.updateByPrimaryKey(test);
	}

	@Override
	public long countTestByExample(TestExample example) throws Exception {
		return testMapper.countByExample(example);
	}

	
	
}
