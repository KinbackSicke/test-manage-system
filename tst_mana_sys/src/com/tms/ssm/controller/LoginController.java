package com.tms.ssm.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tms.ssm.po.LoginInfo;
import com.tms.ssm.po.Manager;
import com.tms.ssm.po.Student;
import com.tms.ssm.po.Teacher;
import com.tms.ssm.service.ManagerService;
import com.tms.ssm.service.StudentService;
import com.tms.ssm.service.TeacherService;


@Controller
public class LoginController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private ManagerService managerService;
	
	@PostMapping("/studentLoginCheck")
	public void studentLoginCheck(HttpSession session, HttpServletResponse response,
			@RequestBody LoginInfo info) throws Exception{
		Student student = studentService.getStudentByNo(info.getUsername());		
		if (student != null && student.getStuPwd().equals(info.getPassword())) {
			String result = "success";
			response.getWriter().write(result);
			session.setAttribute("username", student.getStuName());
		}else {
			String result = "failed";
			response.getWriter().write(result);
		}		
	}
	
	@PostMapping("/teacherLoginCheck")
	public void teacherLoginCheck(HttpSession session, HttpServletResponse response,
			@RequestBody LoginInfo info) throws Exception{
		Teacher teacher = teacherService.getTeacherByNo(info.getUsername());		
		if (teacher != null && teacher.getTeaPwd().equals(info.getPassword())) {
			String result = "success";
			response.getWriter().write(result);
			session.setAttribute("username", teacher.getTeaName());
		}else {
			String result = "failed";
			response.getWriter().write(result);
		}		
	}	
	
	@PostMapping("/managerLoginCheck")
	public void managerLoginCheck(HttpSession session, HttpServletResponse response,
			@RequestBody LoginInfo info) throws Exception{
		Manager manager = managerService.getManagerByNo(info.getUsername());		
		if (manager != null && manager.getManaPwd().equals(info.getPassword())) {
			String result = "success";
			response.getWriter().write(result);
			session.setAttribute("username", manager.getManaName());
		}else {
			String result = "failed";
			response.getWriter().write(result);
		}		
	}
	
	
	
	@RequestMapping("/login")
	public String login() throws Exception {		
		return "/studentLogin";
	}
	
	@RequestMapping("/teacherLogin")
	public String teacherLogin() throws Exception {		
		return "/teacherLogin";
	}
	
	@RequestMapping("/managerLogin")
	public String managerlogin() throws Exception {		
		return "/managerLogin";
	}
	
	@RequestMapping("/logout")
	public String Logout(HttpSession session)throws Exception{
		//清除session
		session.invalidate();
		return "redirect:/login.action";
	}
	
}
