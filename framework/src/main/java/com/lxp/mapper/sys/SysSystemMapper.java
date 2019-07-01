package com.lxp.mapper.sys;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.lxp.model.sys.SysSystem;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:41:55
 * @parameter
 * @return
 */
@Mapper
public interface SysSystemMapper {

	List<SysSystem> querySysSystemByLikes(SysSystem sysSystem);

	List<SysSystem> querySysSystemByEquals(SysSystem sysSystem);

	SysSystem getMaxSysSystemCode();

	SysSystem getSysSystemSysSid();

	void insertSysSystemData(SysSystem sysSystem);

	void updateSysSystemData(SysSystem sysSystem);

	void deleteSysSystemData(String id);
}
