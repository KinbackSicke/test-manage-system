package com.tms.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.ssm.mapper.StudentMapper;
import com.tms.ssm.po.Student;
import com.tms.ssm.po.StudentExample;
import com.tms.ssm.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentMapper studentMapper;
	
	//根据id查找学生
	@Override
	public Student getStudentByNo(String stuNo) throws Exception {
		return studentMapper.selectByPrimaryKey(stuNo);
	}

	@Override
	public List<Student> getStudentList(StudentExample example) throws Exception {
		return studentMapper.selectByExample(example);
	}

	@Override
	public void insertStudent(Student student) throws Exception {
		studentMapper.insert(student);
	}

	@Override
	public void updateStudent(String stuNo, Student student) throws Exception {
		student.setStuNo(stuNo);
		studentMapper.updateByPrimaryKeySelective(student);
	}

	@Override
	public void deleteStudentByNo(String stuNo) throws Exception {
		studentMapper.deleteByPrimaryKey(stuNo);
	}	
	
	//
	
	
}
