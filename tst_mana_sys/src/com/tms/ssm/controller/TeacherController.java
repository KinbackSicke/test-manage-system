package com.tms.ssm.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tms.ssm.po.Answer;
import com.tms.ssm.po.Problem;
import com.tms.ssm.po.ProblemExample;
import com.tms.ssm.po.ProblemExample.Criteria;
import com.tms.ssm.po.Test;
import com.tms.ssm.po.TestExample;
import com.tms.ssm.service.AnswerService;
import com.tms.ssm.service.ProblemService;
import com.tms.ssm.service.TestService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

	@Autowired
	private ProblemService problemService;
	
	@Autowired 
	private AnswerService answerService;
	
	@Autowired
	private TestService testService;
	
	
	@RequestMapping("/teacherHome")
	public String TeacherHome (String problemName, String proType, 
			String chaTitle, Model model) throws Exception {
		List<Problem> problemList;
		String [] answerDetails = null;
		ProblemExample example = null;
		if (problemName != null && problemName != "") {
			example = new ProblemExample();
			Criteria criteria = example.createCriteria();
			criteria.andProKeywLike("%" + problemName + "%");
		}
		if (proType != "" && chaTitle != "" && proType != null && chaTitle != null) {
			example = new ProblemExample();
			Criteria criteria = example.createCriteria();
			criteria.andChaTitleLike("%" + chaTitle + "%");
			criteria.andProTypeLike("%" + proType + "%");
		}
		problemList = problemService.getProblemList(example);
		if (problemList != null) {
			answerDetails = new String[problemList.size()];
			for (int i = 0; i < problemList.size(); i++) {
				Problem p = problemList.get(i);
				Answer ans = answerService.getAnsewerByNo(p.getProAnsno());	
				if (ans == null) {
					answerDetails[i] = "无答案";
				}else {
					answerDetails[i] = ans.getAnsDetail();
				}				
			}
			model.addAttribute("problemList", problemList);
			model.addAttribute("answerList", answerDetails);
		}
				
		return "teacher/teacherHome";
	}
	
	@RequestMapping("/editProblem")
	public String editProblem(String proNo, Problem problem, Answer answer) throws Exception{
		if (proNo == null) {
			return "redirect:teacherHome.action";
		}
		problemService.updateProblem(proNo, problem);
		//Answer answer = answerService.getAnsewerByNo(problem.getProAnsno());
		answerService.updateAnswer(problem.getProAnsno(), answer);
		return "redirect:teacherHome.action";		
	}
	
	@RequestMapping("/addProblem")
	public String addProblem(String ansDetail, Problem problem) throws Exception{
		Answer ans = new Answer();
		String ans_id = UUID.randomUUID().toString();
		ans.setAnsNo(ans_id);
		ans.setAnsDetail(ansDetail);
		problem.setProAnsno(ans.getAnsNo());
		String pro_id = UUID.randomUUID().toString();
		problem.setProNo(pro_id);
		problemService.insertProblem(problem);
		answerService.insertAnswer(ans);
		return "redirect:teacherHome.action";
	}
	
	@RequestMapping("/deleteProblem")
	public String deleteProblem(String [] pro_nos) throws Exception{
		if (pro_nos != null) {
			for (int i = 0; i < pro_nos.length; i++) {
				Problem p = problemService.getProblemByNo(pro_nos[i]);
				String ansno = p.getProAnsno();
				if (ansno != null && ansno != "") {
					answerService.deleteAnswerByNo(ansno);
				}
				problemService.deleteProblemByNo(pro_nos[i]);
			}
		}		
		return "redirect:teacherHome.action";
	}
	
	@RequestMapping("/queryTest")
	public String queryTest(String testName, Model model) throws Exception {
		TestExample example = null;
		if (testName != null) {
			example = new TestExample();
			com.tms.ssm.po.TestExample.Criteria criteria = example.createCriteria();
			criteria.andTstNameLike("%" + testName + "%");
		}
		testService.getTestList(example);
		List<Test> testList = testService.getTestList(example);
		model.addAttribute("testList", testList);
		return "teacher/teacher_testList";
	}
		
	@RequestMapping("/createTest")
	public String createTest(Test test, String tstName, String [] pro_nos) throws Exception {
		StringBuilder detail = new StringBuilder();
		if (pro_nos != null) {
			String [] ansList = new String[pro_nos.length];
			for (int i = 0; i < pro_nos.length; i++) {	
				Problem p = problemService.getProblemByNo(pro_nos[i]);
				ansList[i] = p.getProAnsno();
				detail.append((i + 1) + ".(" + p.getProType() + ")" + p.getProDetail() + "\n\n");
			}
			detail.append("\n\n\n\n\n\n\n\n参考答案：\n");
			for (int i = 0; i <= ansList.length - 1; i++) {
				Answer ans = answerService.getAnsewerByNo(ansList[i]);
				detail.append((i + 1) + ". " + ans.getAnsDetail() + "\n\n");
			}
			test.setTstDetail(detail.toString());
			String tstNo = UUID.randomUUID().toString();
			test.setTstNo(tstNo);
			test.setTstNum(pro_nos.length);
			testService.insertTest(test);
		}
		return "redirect:teacherHome.action";
	}
	
	@RequestMapping("/showTest")
	public String showTest(String tstNo, Model model) throws Exception {	
		Test test = testService.findTestByNo(tstNo);
		if (test != null) {
			model.addAttribute("test", test);
		}		
		return "teacher/teacher_test_details";
	}
	
	@RequestMapping("/deleteTest")
	public String deleteTest(String [] tst_nos) throws Exception {
		if (tst_nos != null) {
			for (String tstNo : tst_nos) {
				testService.deleteTestByNo(tstNo);
			}
		}
		return "redirect:queryTest.action";
	}
	
	
	
	
}
