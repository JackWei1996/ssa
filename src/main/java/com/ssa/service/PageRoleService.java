package com.ssa.service;

public interface PageRoleService {

	boolean delPageRoleByRoleId(Integer id);

	boolean addPageRoles(Integer roleId, Integer[] pageIds);

}
