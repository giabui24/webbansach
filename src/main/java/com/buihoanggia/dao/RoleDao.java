package com.buihoanggia.dao;

import com.buihoanggia.entity.Role;

public interface RoleDao {

	public Role findRoleByName(String theRoleName);
	
}