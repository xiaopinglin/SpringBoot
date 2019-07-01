package com.lxp.service.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.lxp.model.sys.SysDept;

/**
 * @author lxp
 * @date 2018年8月13日 下午4:58:13
 * @parameter
 * @return
 */
public interface SysDeptService {

	Object getDeptTree() throws Exception;

	List<SysDept> querySysDeptByLiks(SysDept sysDept) throws Exception;

	List<SysDept> querySysDeptByEquals(SysDept sysDept) throws Exception;

	SysDept getMaxSysDeptCode() throws Exception;

	Object saveData(String cmd, SysDept sysDept) throws Exception;

	Object deleteData(String id) throws Exception;

	Object rearrange() throws Exception;

	Object moveUpAnddown(HttpServletRequest req) throws Exception;

	Object getDeptByOrgan(HttpServletRequest req) throws Exception;

}
