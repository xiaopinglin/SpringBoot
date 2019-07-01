package com.lxp.mapper.sys;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.lxp.model.sys.SysDept;

/**
 * @author lxp
 * @date 2018年8月13日 下午5:05:44
 * @parameter
 * @return
 */
@Mapper
public interface SysDeptMapper {

	List<SysDept> querySysDeptByLikes(SysDept sysDept);

	List<SysDept> querySysDeptByEquals(SysDept sysDept);

	SysDept getMaxSysDeptCode();

	List<SysDept> getAllDeptPidSysDept();

	List<SysDept> getSysDeptBySidAndPid(@Param("deptSid") String deptSid, @Param("deptPid") String deptPid);

	List<SysDept> getSysDeptBySidAndPidDesc(@Param("deptSid") String deptSid, @Param("deptPid") String deptPid);

	SysDept getSysDeptSidByDeptPid(@Param("deptPid") String deptPid);

	void insertSysDeptData(SysDept sysDept);

	void updateSysDeptData(SysDept sysDept);

	void updateSysDeptSid(@Param("deptSid") String resSid, @Param("deptId") String deptId);

	void deleteSysDeptData(@Param("deptId") String deptId);

	void deleteSysDeptDataByOrgId(@Param("orgId") String orgId);

}
