package com.tms.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tms.ssm.po.Problem;
import com.tms.ssm.service.ProblemService;

@Controller
@RequestMapping("/test")
public class TestController {

	@Autowired
	private ProblemService problemService;
	
	@RequestMapping("queryTest")
	public String queryTest() throws Exception {
		return "test/queryTest";
 	}
	
	@RequestMapping("/testPage")
	public String testPage(Model model) throws Exception {
		List<Problem> problemList = problemService.getProblemList(null);
		model.addAttribute("problemList", problemList);
		return "test/testPage";
	}
	
}
