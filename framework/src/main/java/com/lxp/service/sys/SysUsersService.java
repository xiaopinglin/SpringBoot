package com.lxp.service.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.lxp.model.common.GridBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysUsers;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:48:54
 * @parameter
 * @return
 */
public interface SysUsersService {

	GridBean<SysUsers> queryPageInfo(PageBean pageBean, SysUsers sysUsers) throws Exception;

	List<SysUsers> querySysUsersByLikes(SysUsers sysUsers) throws Exception;

	List<SysUsers> querySysUsersByEquals(SysUsers sysUsers) throws Exception;

	SysUsers getMaxSysUsersCode() throws Exception;

	List<SysUsers> getOwnSysResoucesByUserId(String userId) throws Exception;

	List<SysUsers> getOwnSysRolesByUserId(String userId) throws Exception;

	Object saveData(String cmd, SysUsers sysUsers) throws Exception;

	Object saveSetRes(String userId, String data, String roles) throws Exception;

	Object deleteData(String userId) throws Exception;

	Object unLock(HttpServletRequest req) throws Exception;

}
