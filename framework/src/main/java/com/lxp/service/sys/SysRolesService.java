package com.lxp.service.sys;

import java.util.List;

import com.lxp.model.common.GridBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysRoles;

/**
 * @author lxp
 * @date 2018年8月15日 下午3:17:16
 * @parameter
 * @return
 */
public interface SysRolesService {

	GridBean<SysRoles> queryPageInfo(PageBean pageBean, SysRoles sysRoles) throws Exception;

	List<SysRoles> querySysRolesByLikes(SysRoles sysRoles) throws Exception;

	List<SysRoles> querySysRolesByEquals(SysRoles sysRoles) throws Exception;

	SysRoles getMaxSysRolesCode() throws Exception;

	List<SysRoles> getOwnSysResoucesByRoleId(String roleId) throws Exception;

	Object saveData(String cmd, SysRoles sysRoles, String nodes) throws Exception;

	Object saveSetRes(String roleId, String data) throws Exception;

	Object deleteData(String roleId) throws Exception;

}
