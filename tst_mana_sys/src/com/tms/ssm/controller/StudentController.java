package com.tms.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tms.ssm.po.Test;
import com.tms.ssm.po.TestExample;
import com.tms.ssm.po.TestExample.Criteria;
import com.tms.ssm.service.TestService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private TestService testService;
	
	//学生首页
	@RequestMapping("/studentHome")
	public String studentHome(String testName, 
			Model model, String stuNo) throws Exception{
		List<Test> list;
		TestExample example = null;
		if (testName != null && testName != "") {
			example = new TestExample();
			Criteria criteria = example.createCriteria();
			criteria.andTstNameLike("%"+ testName +"%");	
		}		
		list = testService.getTestList(example);
		model.addAttribute("testList", list);		
		return "student/studentHome";
	}
	
	@RequestMapping("/showTest")
	public String showTest(Model model, String tstNo) throws Exception {
		
		Test test = testService.findTestByNo(tstNo);
		if (test != null) {
			model.addAttribute("test", test);
		}		
		return "student/student_test_details";
	}
	
	
}
