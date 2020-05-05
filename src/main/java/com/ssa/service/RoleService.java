package com.ssa.service;


import com.ssa.pojo.Role;

import java.util.List;

public interface RoleService {

	List<Role> getAllRole();

	String addRole(String name);

	boolean delRoleById(Integer id);

	int updateRoleById(Integer id, String name);

}
