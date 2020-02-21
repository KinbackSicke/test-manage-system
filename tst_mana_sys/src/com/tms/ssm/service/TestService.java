package com.tms.ssm.service;

import java.util.List;
import com.tms.ssm.po.Test;
import com.tms.ssm.po.TestExample;

public interface TestService {
	
	//试卷数量
	long countTestByExample(TestExample example) throws Exception;
	
	//列出试卷列表
	List<Test> getTestList(TestExample example) throws Exception; 
	
	//根据试卷编号查找试卷
	Test findTestByNo(String tstNo) throws Exception;
	
	//添加试卷
	void insertTest(Test test) throws Exception;
	
	//根据试卷编号删除试卷
	void deleteTestByNo(String tstNo) throws Exception;
	
	//更新试卷信息
	void updateTest(String tstNo, Test test) throws Exception;
		
}
