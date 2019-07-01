package com.lxp.mapper.sys;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.lxp.model.sys.SysRoles;

/**
 * @author lxp
 * @date 2018年8月15日 下午3:04:27
 * @parameter
 * @return
 */
@Mapper
public interface SysRolesMapper {

	List<SysRoles> querySysRolesByLikes(SysRoles sysRoles);

	List<SysRoles> querySysRolesByEquals(SysRoles sysRoles);

	SysRoles getMaxSysRolesCode();

	List<SysRoles> getOwnSysResoucesByRoleId(@Param("roleId") String roleId);

	void saveRoleOwnResoucces(List<SysRoles> sysRoleList);

	void insertSysRolesData(SysRoles sysRoles);

	void updateSysRolesData(SysRoles sysRoles);

	void deleteSysRolesData(@Param("roleId") String roleId);

	void deleteRoleOwnResoucces(@Param("roleId") String roleId);

}
