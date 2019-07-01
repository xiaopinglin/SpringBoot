package com.lxp.service.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.lxp.model.sys.SysResources;

/**
 * @author lxp
 * @date 2018年7月16日 上午10:52:10
 * @parameter
 * @return
 */
public interface SysResourcesService {

	Object getMenus() throws Exception;

	Object getResourcesTree() throws Exception;

	List<SysResources> querySysResourcesByLikes(SysResources sysResources) throws Exception;

	List<SysResources> querySysResourcesByEquals(SysResources sysResources) throws Exception;

	SysResources getMaxSysResourcesCode() throws Exception;

	Object saveData(String cmd, SysResources sysResources);

	Object deleteData(String id) throws Exception;

	Object rearrange() throws Exception;

	Object moveUpAnddown(HttpServletRequest req) throws Exception;

}
