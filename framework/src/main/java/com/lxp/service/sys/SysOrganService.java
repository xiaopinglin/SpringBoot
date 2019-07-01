package com.lxp.service.sys;

import java.util.List;

import com.lxp.model.common.GridBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysOrgan;

/**
 * @author lxp
 * @date 2018年8月13日 上午10:31:51
 * @parameter
 * @return
 */
public interface SysOrganService {

	GridBean<SysOrgan> queryPageInfo(PageBean pageBean, SysOrgan sysOrgan) throws Exception;

	List<SysOrgan> querySysOrganByLikes(SysOrgan sysOrgan) throws Exception;

	List<SysOrgan> querySysOrganByEquals(SysOrgan sysOrgan) throws Exception;

	SysOrgan getMaxSysOrganCode() throws Exception;

	SysOrgan getSysOrganOrgSid() throws Exception;

	Object saveData(String cmd, SysOrgan sysOrgan) throws Exception;

	Object deleteData(String id) throws Exception;

}
