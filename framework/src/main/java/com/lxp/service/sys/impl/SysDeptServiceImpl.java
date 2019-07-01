package com.lxp.service.sys.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxp.mapper.sys.SysDeptMapper;
import com.lxp.mapper.sys.SysOrganMapper;
import com.lxp.model.common.JsonBean;
import com.lxp.model.sys.SysDept;
import com.lxp.model.sys.SysOrgan;
import com.lxp.service.sys.SysDeptService;
import com.lxp.util.StringUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年8月13日 下午4:58:28
 * @parameter
 * @return
 */
@Service
@Transactional
public class SysDeptServiceImpl implements SysDeptService {

	@Autowired
	private SysOrganMapper sysOrganMapper;

	@Autowired
	private SysDeptMapper sysDeptMapper;

	@Override
	public Object getDeptTree() throws Exception {

		JSONArray arr = new JSONArray();

		// 获取机构
		List<SysOrgan> so_ls = sysOrganMapper.querySysOrganByLikes(new SysOrgan());
		if (so_ls.size() > 0) {
			for (SysOrgan ss : so_ls) {
				JSONObject obj = new JSONObject();
				obj.put("id", ss.getOrgCode());
				obj.put("name", ss.getOrgName());
				obj.put("pId", "0");
				obj.put("type", "1"); // "1" 机构，"2" 部门
				obj.put("deptId", ss.getOrgId());
				obj.put("orgId", ss.getOrgId());
				obj.put("nodeObj", "null");
				obj.put("open", true);

				arr.add(obj);
			}
		}
		// 获取部门
		List<SysDept> sd_ls = sysDeptMapper.querySysDeptByLikes(new SysDept());
		if (sd_ls.size() > 0) {
			for (SysDept sd : sd_ls) {
				JSONObject obj = new JSONObject();
				obj.put("id", sd.getDeptCode());
				obj.put("name", sd.getDeptName());
				obj.put("pId", sd.getDeptPid());
				obj.put("type", "2");
				obj.put("deptId", sd.getDeptId());
				obj.put("orgId", sd.getOrgId());
				obj.put("nodeObj", sd);
				obj.put("open", false);

				arr.add(obj);
			}
		}
		return arr.toString();
	}

	@Override
	public List<SysDept> querySysDeptByLiks(SysDept sysDept) throws Exception {
		return sysDeptMapper.querySysDeptByLikes(sysDept);
	}

	@Override
	public List<SysDept> querySysDeptByEquals(SysDept sysDept) throws Exception {
		return sysDeptMapper.querySysDeptByEquals(sysDept);
	}

	@Override
	public SysDept getMaxSysDeptCode() throws Exception {
		return sysDeptMapper.getMaxSysDeptCode();
	}

	@Override
	public Object saveData(String cmd, SysDept sysDept) {

		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {

				// 判断编码重复
				SysDept sd = new SysDept();
				sd.setDeptCode(sysDept.getDeptCode());
				List<SysDept> ls = sysDeptMapper.querySysDeptByEquals(sd);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("部门编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sd = new SysDept();
				sd.setDeptName(sysDept.getDeptName());
				sd.setDeptPid(sysDept.getDeptPid());
				List<SysDept> ls2 = sysDeptMapper.querySysDeptByEquals(sd);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("部门名称重复！");
					return Json;
				}

				// 获取排序号
				SysDept ssd = sysDeptMapper.getSysDeptSidByDeptPid(sysDept.getDeptPid());
				if (ssd != null) {
					sysDept.setDeptSid(ssd.getDeptSid() + 1);
				} else {
					sysDept.setDeptSid(1);
				}

				sysDept.setCreator("admin");
				sysDept.setCreateTime(new Date());
				sysDeptMapper.insertSysDeptData(sysDept);

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
				return Json;
			} else if ("U".equals(cmd)) {
				// 判断编码重复
				SysDept sd = new SysDept();
				sd.setDeptId(sysDept.getDeptId());
				sd.setDeptCode(sysDept.getDeptCode());
				List<SysDept> ls = sysDeptMapper.querySysDeptByEquals(sd);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("部门编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sd = new SysDept();
				sd.setDeptId(sysDept.getDeptId());
				sd.setDeptName(sysDept.getDeptName());
				sd.setDeptPid(sysDept.getDeptPid());
				List<SysDept> ls2 = sysDeptMapper.querySysDeptByEquals(sd);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("部门名称重复！");
					return Json;
				}

				sysDept.setUpdator("admin");
				sysDept.setUpdateTime(new Date());
				sysDeptMapper.updateSysDeptData(sysDept);
				Json.setSuccess(true);
				Json.setMsg("提交成功！");
				return Json;
			}

		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
			return Json;

		}
		return Json;
	}

	@Override
	public Object deleteData(String id) throws Exception {

		JsonBean Json = new JsonBean();
		try {
			/**
			 * mysql 需要用到函数，oracle 直接用 start with....connect by ... prio
			 */

			// 删除当前资源
			sysDeptMapper.deleteSysDeptData(id);

			// 删除下级资源

			// 删除已经配置的资源权限

			Json.setSuccess(true);
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return Json;
	}

	@Override
	public Object rearrange() throws Exception {

		JsonBean Json = new JsonBean();
		List<SysDept> sd_ls = sysDeptMapper.getAllDeptPidSysDept();
		if (sd_ls.size() > 0) {
			for (SysDept sysDept : sd_ls) {
				// 对象只有一个字段所有无需重新自定义
				List<SysDept> ls = sysDeptMapper.querySysDeptByEquals(sysDept);
				if (ls.size() > 0) {
					int i = 1;
					for (SysDept ssr : ls) {
						sysDeptMapper.updateSysDeptSid(String.valueOf(i++), ssr.getDeptId());
					}
				}
			}
		}
		Json.setSuccess(true);
		return Json;
	}

	@Override
	public Object moveUpAnddown(HttpServletRequest req) throws Exception {

		JsonBean json = new JsonBean();
		json.setSuccess(true);

		String deptId = req.getParameter("id");
		SysDept cur_ssr = new SysDept();
		cur_ssr.setDeptId(deptId);
		List<SysDept> ls = sysDeptMapper.querySysDeptByLikes(cur_ssr);
		if (ls.size() > 0) {
			cur_ssr = ls.get(0);
		}

		String sid = cur_ssr.getDeptSid().toString();
		String pid = cur_ssr.getDeptPid().toString();
		String flag = req.getParameter("flag");
		if ("1".equals(flag)) {
			// 下移 根据查询大于sid的排序
			List<SysDept> sid_ls = sysDeptMapper.getSysDeptBySidAndPid(sid, pid);
			if (sid_ls.size() > 0) {
				SysDept next_ssr = new SysDept();
				next_ssr = sid_ls.get(0);

				// 更新当前节点
				sysDeptMapper.updateSysDeptSid(String.valueOf(next_ssr.getDeptSid()), cur_ssr.getDeptId());

				// 替换节点
				sysDeptMapper.updateSysDeptSid(sid, next_ssr.getDeptId());

				json.setSuccess(true);
				json.setObj(next_ssr);
			} else {
				json.setSuccess(false);
				json.setMsg("无法移动，已经是末节点了！");
			}
		} else if ("2".equals(flag)) {
			// 上移 根据查询小于sid的排序
			List<SysDept> sid_ls = sysDeptMapper.getSysDeptBySidAndPidDesc(sid, pid);
			if (sid_ls.size() > 0) {
				SysDept next_ssr = new SysDept();
				next_ssr = sid_ls.get(0);

				// 更新当前节点
				sysDeptMapper.updateSysDeptSid(String.valueOf(next_ssr.getDeptSid()), cur_ssr.getDeptId());

				// 替换节点
				sysDeptMapper.updateSysDeptSid(sid, next_ssr.getDeptId());

				json.setSuccess(true);
				json.setObj(next_ssr);
			} else {
				json.setSuccess(false);
				json.setMsg("无法移动，已经是首节点了！");
			}
		} else {
			json.setSuccess(false);
			json.setMsg("数据错误");
		}
		return json;
	}

	@Override
	public Object getDeptByOrgan(HttpServletRequest req) {
		JSONArray arr = new JSONArray();

		String orgId = req.getParameter("orgId");
		if (!StringUtil.StringIfNullOrEmpty(orgId)) {
			SysDept dept = new SysDept();
			dept.setOrgId(req.getParameter("orgId"));
			List<SysDept> dept_ls = sysDeptMapper.querySysDeptByLikes(dept);
			for (SysDept sysDept : dept_ls) {
				JSONObject obj = new JSONObject();
				obj.put("deptId", sysDept.getDeptId());
				obj.put("deptName", sysDept.getDeptName());

				arr.add(obj);
			}
		}

		return arr.toString();
	}

}
