package com.tms.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.ssm.mapper.TeacherMapper;
import com.tms.ssm.po.Teacher;
import com.tms.ssm.po.TeacherExample;
import com.tms.ssm.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	private TeacherMapper teacherMapper; 
	
	@Override
	public Teacher getTeacherByNo(String teaNo) throws Exception {		
		return teacherMapper.selectByPrimaryKey(teaNo);
	}

	@Override
	public List<Teacher> getTeacherList(TeacherExample example) throws Exception {
		return teacherMapper.selectByExample(example);
	}

	@Override
	public void insertTeacher(Teacher teacher) throws Exception {
		teacherMapper.insert(teacher);
	}

	@Override
	public void updateTeacher(String teaNo, Teacher teacher) throws Exception {
		teacher.setTeaNo(teaNo);
		teacherMapper.updateByPrimaryKeySelective(teacher);
	}

	@Override
	public void deleteTeacherByNo(String teaNo) throws Exception {
		teacherMapper.deleteByPrimaryKey(teaNo);
	}
	
	
	

}
