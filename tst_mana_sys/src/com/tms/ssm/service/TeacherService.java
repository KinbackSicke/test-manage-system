package com.tms.ssm.service;

import java.util.List;

import com.tms.ssm.po.Teacher;
import com.tms.ssm.po.TeacherExample;

public interface TeacherService {

	Teacher getTeacherByNo(String teaNo) throws Exception;
	
	List<Teacher> getTeacherList(TeacherExample example) throws Exception;
	
	void insertTeacher(Teacher teacher) throws Exception;
	
	void updateTeacher(String teaNo, Teacher teacher) throws Exception;
	
	void deleteTeacherByNo(String teaNo) throws Exception;
}
