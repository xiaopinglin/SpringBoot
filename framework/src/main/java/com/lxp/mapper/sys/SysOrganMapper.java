package com.lxp.mapper.sys;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.lxp.model.sys.SysOrgan;

/**
 * @author lxp
 * @date 2018年8月13日 上午10:36:48
 * @parameter
 * @return
 */
@Mapper
public interface SysOrganMapper {

	List<SysOrgan> querySysOrganByLikes(SysOrgan sysOrgan);

	List<SysOrgan> querySysOrganByEquals(SysOrgan sysOrgan);

	SysOrgan getMaxSysOrganCode();

	SysOrgan getSysOrganOrgSid();

	void insertSysOrganData(SysOrgan sysOrgan);

	void updateSysOrganData(SysOrgan sysOrgan);

	void deleteSysOrganData(String id);

}
