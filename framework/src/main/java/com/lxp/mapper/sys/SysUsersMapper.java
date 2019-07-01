package com.lxp.mapper.sys;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.lxp.model.sys.SysUsers;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:41:55
 * @parameter
 * @return
 */
@Mapper
public interface SysUsersMapper {

	List<SysUsers> querySysUsersByLikes(SysUsers sysUsers);

	List<SysUsers> querySysUsersByEquals(SysUsers sysUsers);

	SysUsers getMaxSysUsersCode();

	List<SysUsers> getOwnSysResoucesByUserId(@Param("userId") String userId);

	List<SysUsers> getOwnSysRolesByUserId(@Param("userId") String userId);

	void insertSysUsersData(SysUsers sysUsers);

	void updateSysUsersData(SysUsers sysUsers);

	void updateLastLoginInfo(SysUsers sysUsers);

	void saveUsersOwnResoucces(List<SysUsers> sysUsersList);

	void saveUsersOwnRoles(List<SysUsers> sysUsersList);

	void deleteSysUsersData(@Param("userId") String userId);

	void deleteUsersOwnResoucces(@Param("userId") String userId);

	void deleteUsersOwnRoles(@Param("userId") String userId);

}
