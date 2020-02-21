package com.tms.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tms.ssm.mapper.ManagerMapper;
import com.tms.ssm.po.Manager;
import com.tms.ssm.po.ManagerExample;
import com.tms.ssm.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerMapper managerMapper;
	
	@Override
	public Manager getManagerByNo(String manaNo) throws Exception {
		return managerMapper.selectByPrimaryKey(manaNo);
	}

	@Override
	public List<Manager> getManagerList(ManagerExample example) throws Exception {
		return managerMapper.selectByExample(example);
	}

	@Override
	public void insertManager(Manager manager) throws Exception {
		managerMapper.insert(manager);
	}

	@Override
	public void updateManager(String manaNo, Manager manager) throws Exception {
		manager.setManaNo(manaNo);
		managerMapper.updateByPrimaryKey(manager);
	}

	@Override
	public void deleteManagerByNo(String manaNo) throws Exception {
		managerMapper.deleteByPrimaryKey(manaNo);
	}

	
	
}
