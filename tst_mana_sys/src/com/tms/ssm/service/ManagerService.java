package com.tms.ssm.service;

import java.util.List;

import com.tms.ssm.po.Manager;
import com.tms.ssm.po.ManagerExample;

public interface ManagerService {

	Manager getManagerByNo(String manaNo) throws Exception;
	
	List<Manager> getManagerList(ManagerExample example) throws Exception;
	
	void insertManager(Manager manager) throws Exception;
	
	void updateManager(String manaNo, Manager manager) throws Exception;
	
	void deleteManagerByNo(String manaNo) throws Exception;
	
}
