package com.lxp.service.sys;

import java.util.List;

import com.lxp.model.common.GridBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysSystem;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:48:54
 * @parameter
 * @return
 */
public interface SysSystemService {

	GridBean<SysSystem> queryPageInfo(PageBean pageBean, SysSystem sysSystem) throws Exception;

	List<SysSystem> querySysSystemByLikes(SysSystem sysSystem) throws Exception;

	List<SysSystem> querySysSystemByEquals(SysSystem sysSystem) throws Exception;

	SysSystem getMaxSysSystemCode() throws Exception;

	Object saveData(String cmd, SysSystem sysSystem) throws Exception;

	Object deleteData(String id) throws Exception;

}
