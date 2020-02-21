package com.tms.ssm.service;

import java.util.List;

import com.tms.ssm.po.Student;
import com.tms.ssm.po.StudentExample;


public interface StudentService {

	//根据id查找学生
	Student getStudentByNo(String stuNo) throws Exception;
	
	List<Student> getStudentList(StudentExample example) throws Exception;
	
	void insertStudent(Student student) throws Exception;
	
	void updateStudent(String stuNo, Student student) throws Exception;
	
	void deleteStudentByNo(String stuNo) throws Exception;
	
}
