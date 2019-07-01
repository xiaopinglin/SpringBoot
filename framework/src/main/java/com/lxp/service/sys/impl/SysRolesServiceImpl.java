package com.lxp.service.sys.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxp.common.GenID;
import com.lxp.mapper.sys.SysRolesMapper;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysRoles;
import com.lxp.service.sys.SysRolesService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年8月15日 下午3:20:56
 * @parameter
 * @return
 */
@Service
@Transactional
public class SysRolesServiceImpl implements SysRolesService {

	@Autowired
	private SysRolesMapper sysRolesMapper;

	@Override
	public GridBean<SysRoles> queryPageInfo(PageBean pageBean, SysRoles sysRoles) throws Exception {
		GridBean<SysRoles> grid = null;
		PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());

		List<SysRoles> list = sysRolesMapper.querySysRolesByLikes(sysRoles);
		PageInfo<SysRoles> pageInfo = new PageInfo<>(list);
		grid = new GridBean<>();
		grid.setData(pageInfo.getList());
		grid.setCount(pageInfo.getTotal());

		return grid;
	}

	@Override
	public List<SysRoles> querySysRolesByLikes(SysRoles sysRoles) throws Exception {
		return sysRolesMapper.querySysRolesByLikes(sysRoles);
	}

	@Override
	public List<SysRoles> querySysRolesByEquals(SysRoles sysRoles) throws Exception {
		return sysRolesMapper.querySysRolesByEquals(sysRoles);
	}

	@Override
	public SysRoles getMaxSysRolesCode() throws Exception {
		return sysRolesMapper.getMaxSysRolesCode();
	}

	@Override
	public Object saveData(String cmd, SysRoles sysRoles, String nodes) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {

				// 判断编码重复
				SysRoles sr = new SysRoles();
				sr.setRoleCode(sysRoles.getRoleCode());
				List<SysRoles> ls = sysRolesMapper.querySysRolesByEquals(sr);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("角色编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sr = new SysRoles();
				sr.setRoleName(sysRoles.getRoleName());
				List<SysRoles> ls2 = sysRolesMapper.querySysRolesByEquals(sr);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("角色名称重复！");
					return Json;
				}

				sysRoles.setRoleId(GenID.gen(32));
				sysRoles.setCreator("admin");
				sysRoles.setCreateTime(new Date());
				sysRolesMapper.insertSysRolesData(sysRoles);

			} else if ("U".equals(cmd)) {
				// 判断编码重复
				SysRoles sr = new SysRoles();
				sr.setRoleId(sysRoles.getRoleId());
				sr.setRoleCode(sysRoles.getRoleCode());
				List<SysRoles> ls = sysRolesMapper.querySysRolesByEquals(sr);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("角色编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sr = new SysRoles();
				sr.setRoleId(sysRoles.getRoleId());
				sr.setRoleName(sysRoles.getRoleName());
				List<SysRoles> ls2 = sysRolesMapper.querySysRolesByEquals(sr);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("角色名称重复！");
					return Json;
				}

				sysRoles.setUpdator("admin");
				sysRoles.setUpdateTime(new Date());
				sysRolesMapper.updateSysRolesData(sysRoles);

			}

			// 处理权限
			// 删除该角色拥有的模板数据项
			sysRolesMapper.deleteRoleOwnResoucces(sysRoles.getRoleId());

			List<SysRoles> sysRoleList = new ArrayList<>();
			JSONArray arrJson = JSONArray.fromObject(nodes);
			if (arrJson.size() > 0) {
				for (int i = 0; i < arrJson.size(); i++) {
					JSONObject objJson = arrJson.getJSONObject(i);
					String resId = String.valueOf(objJson.getString("resId"));

					SysRoles sysRoles1 = new SysRoles();
					sysRoles1.setId(GenID.gen(32));
					sysRoles1.setRoleId(sysRoles.getRoleId());
					sysRoles1.setResId(resId);

					sysRoleList.add(sysRoles1);
				}
			}
			if (sysRoleList.size() > 0) {
				sysRolesMapper.saveRoleOwnResoucces(sysRoleList);
			}

			Json.setSuccess(true);
			Json.setMsg("提交成功！");
			return Json;
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
			return Json;

		}
	}

	@Override
	public Object saveSetRes(String roleId, String data) throws Exception {
		JsonBean json = new JsonBean();

		// 删除该角色拥有的模板数据项
		sysRolesMapper.deleteRoleOwnResoucces(roleId);

		// 保存数据
		List<SysRoles> sysRoleList = new ArrayList<>();
		JSONArray arrJson = JSONArray.fromObject(data);
		if (arrJson.size() > 0) {
			for (int i = 0; i < arrJson.size(); i++) {
				JSONObject objJson = arrJson.getJSONObject(i);
				String resId = String.valueOf(objJson.getString("resId"));

				SysRoles sysRoles = new SysRoles();
				sysRoles.setId(GenID.gen(32));
				sysRoles.setRoleId(roleId);
				sysRoles.setResId(resId);

				sysRoleList.add(sysRoles);

			}
		}
		if (sysRoleList.size() > 0) {
			sysRolesMapper.saveRoleOwnResoucces(sysRoleList);
		}

		json.setSuccess(true);
		json.setMsg("保存成功");

		return json;
	}

	@Override
	public Object deleteData(String roleId) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			SysRoles sr = new SysRoles();
			sr.setRoleId(roleId);
			List<SysRoles> sr_ls = sysRolesMapper.querySysRolesByLikes(sr);
			if (sr_ls.size() > 0) {
				sr = sr_ls.get(0);
				// 删除角色
				sysRolesMapper.deleteSysRolesData(sr.getRoleId());

				// 删除角色配置的权限
				sysRolesMapper.deleteRoleOwnResoucces(roleId);

				// 权限收回

				Json.setSuccess(true);
			} else {
				Json.setSuccess(false);
				Json.setMsg("数据异常！");
			}
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return Json;
	}

	@Override
	public List<SysRoles> getOwnSysResoucesByRoleId(String roleId) throws Exception {
		return sysRolesMapper.getOwnSysResoucesByRoleId(roleId);
	}

}
