package com.lxp.mapper.sys;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.lxp.model.sys.SysResources;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:41:55
 * @parameter
 * @return
 */
@Mapper
public interface SysResourcesMapper {

	/** 资源管理 ***/
	List<SysResources> querySysResourcesByLikes(SysResources sysResources);

	List<SysResources> querySysResourcesByEquals(SysResources sysResources);

	SysResources getMaxSysResourcesCode();

	List<SysResources> getAllResPidSysResources();

	List<SysResources> getSysResourcesBySidAndPid(@Param("resSid") String resSid, @Param("resPid") String resPid);

	List<SysResources> getSysResourcesBySidAndPidDesc(@Param("resSid") String resSid, @Param("resPid") String resPid);

	SysResources getSysResourcesSidByResPid(@Param("resPid") String resPid);

	void insertSysResourcesData(SysResources sysResources);

	void updateSysResourcesData(SysResources sysResources);

	void updateSysResourcesSidByResId(@Param("resSid") String resSid, @Param("resId") String resId);

	void deleteSysResourcesResData(@Param("resId") String resId);

	void deleteSysResourcesResDataBySysId(@Param("sysId") String sysId);

}
