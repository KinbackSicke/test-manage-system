package com.tms.ssm.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tms.ssm.po.Student;
import com.tms.ssm.po.StudentExample;
import com.tms.ssm.po.StudentExample.Criteria;
import com.tms.ssm.po.Teacher;
import com.tms.ssm.po.TeacherExample;
import com.tms.ssm.service.StudentService;
import com.tms.ssm.service.TeacherService;

@Controller
@RequestMapping("/manager")
public class MangerController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired 
	private TeacherService teacherService;
	
	@RequestMapping("/managerHome")
	public String managerHome(String studentName, Model model) throws Exception {
		List<Student> studentList;
		StudentExample example = null;
		if (studentName != null && studentName != "") {			
			example = new StudentExample();
			Criteria criteria = example.createCriteria();
			criteria.andStuNameLike("%" + studentName + "%");			
		}
		studentList = studentService.getStudentList(example);
		if (studentList != null) {
			model.addAttribute("studentList", studentList);
		}
		return "manager/manager_student";
	}
	
	@RequestMapping("/addStudent")
	public String addStudent(String stuNo, Student student) throws Exception {		
		studentService.insertStudent(student);
		return "redirect:managerHome.action";
	}
	
	@PostMapping("/addStudentCheck")
	public void addStudentCheck(HttpServletResponse response, 
			@RequestParam(value="stuNo") String stuNo) throws Exception {
		Student s = studentService.getStudentByNo(stuNo);
		String result;
		if (s != null) {
			result = "failed";
		}else {
			result = "success";
		}
		response.getWriter().write(result);
	}
	
	
	
	@RequestMapping("/editStudent")
	public String editStudent(String stuNo, Student student) throws Exception {
		studentService.updateStudent(stuNo, student);
		return "redirect:managerHome.action";
	}
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(String [] stu_nos) throws Exception {
		if (stu_nos != null) {
			for (int i = 0; i < stu_nos.length; i++) {
				studentService.deleteStudentByNo(stu_nos[i]);
			}
		}
		return "redirect:managerHome.action";
	}
	
	@RequestMapping("/manageTeacher")
	public String manageTeacher(String teacherName, Model model) throws Exception {
		List<Teacher> teacherList;
		TeacherExample example = null;
		if (teacherName != null && teacherName != "") {			
			example = new TeacherExample();
			com.tms.ssm.po.TeacherExample.Criteria criteria = example.createCriteria();
			criteria.andTeaNameLike("%" + teacherName + "%");			
		}
		teacherList = teacherService.getTeacherList(example);
		if (teacherList != null) {
			model.addAttribute("teacherList", teacherList);
		}
		return "manager/manager_teacher";
	}
	
	@RequestMapping("/addTeacher")
	public String addTeacher(Teacher teacher) throws Exception {
		teacherService.insertTeacher(teacher);
		return "redirect:manageTeacher.action";
	}
	
	@PostMapping("/addTeacherCheck")
	public void addTeacherCheck(HttpServletResponse response, 
			@RequestParam(value="teaNo") String teaNo) throws Exception {
		Teacher t = teacherService.getTeacherByNo(teaNo);
		String result;
		if (t != null) {
			result = "failed";			
		} else {
			result = "success";
		}		
		response.getWriter().write(result);
	}
	
	
	
	@RequestMapping("/editTeacher")
	public String editTeacher(String teaNo, Teacher teacher) throws Exception {
		teacherService.updateTeacher(teaNo, teacher);
		return "redirect:manageTeacher.action";
	}
	
	@RequestMapping("/deleteTeacher")
	public String deleteTeacher(String [] tea_nos) throws Exception {
		if (tea_nos != null) {
			for (int i = 0; i < tea_nos.length; i++) {
				teacherService.deleteTeacherByNo(tea_nos[i]);
			}
		}
		return "redirect:manageTeacher.action";
	}
	
	
	@PostMapping("/backupDatabase")
	@ResponseBody
	public String backupDatabase (HttpServletResponse response) throws Exception {
		String dbName = "tests_manage_system";
		StringBuilder sb = new StringBuilder();
		sb.append("c:\\mysqldump");
		sb.append(" -uroot");
		sb.append(" -p123456");
		sb.append(" " + dbName + " >");
		sb.append(" d:/download/" + dbName + new Date().getTime() + ".sql");
		
		System.out.println(sb.toString());
		try {
			Runtime runtime = Runtime.getRuntime();
			Process process = runtime.exec("cmd /c " + sb.toString());			
			return "success";
		}catch (Exception e) {
			e.printStackTrace();
			return "error";
		}		
	}
	

	
	
	
	
	
}
