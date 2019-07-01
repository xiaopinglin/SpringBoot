package com.lxp.service.sys.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxp.common.GenID;
import com.lxp.mapper.sys.SysUsersMapper;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysUsers;
import com.lxp.service.sys.SysUsersService;
import com.lxp.util.MD5Util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:49:59
 * @parameter
 * @return
 */
@Service
@Transactional
public class SysUsersServiceImpl implements SysUsersService {

	@Autowired
	private SysUsersMapper sysUsersMapper;

	@Override
	public GridBean<SysUsers> queryPageInfo(PageBean pageBean, SysUsers sysUsers) throws Exception {

		GridBean<SysUsers> grid = null;
		PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());

		List<SysUsers> list = sysUsersMapper.querySysUsersByLikes(sysUsers);
		PageInfo<SysUsers> pageInfo = new PageInfo<>(list);
		grid = new GridBean<>();
		grid.setData(pageInfo.getList());
		grid.setCount(pageInfo.getTotal());

		return grid;

	}

	@Override
	public List<SysUsers> querySysUsersByLikes(SysUsers sysUsers) throws Exception {
		return sysUsersMapper.querySysUsersByLikes(sysUsers);
	}

	@Override
	public List<SysUsers> querySysUsersByEquals(SysUsers sysUsers) throws Exception {
		return sysUsersMapper.querySysUsersByEquals(sysUsers);
	}

	@Override
	public SysUsers getMaxSysUsersCode() throws Exception {
		return sysUsersMapper.getMaxSysUsersCode();
	}

	@Override
	public List<SysUsers> getOwnSysResoucesByUserId(String userId) throws Exception {
		return sysUsersMapper.getOwnSysResoucesByUserId(userId);
	}

	@Override
	public List<SysUsers> getOwnSysRolesByUserId(String userId) throws Exception {
		return sysUsersMapper.getOwnSysRolesByUserId(userId);
	}

	@Override
	public Object saveData(String cmd, SysUsers sysUsers) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {

				// 判断编码重复
				SysUsers sr = new SysUsers();
				sr.setUserCode(sysUsers.getUserCode());
				List<SysUsers> ls = sysUsersMapper.querySysUsersByEquals(sr);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("用户编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sr = new SysUsers();
				sr.setUserName(sysUsers.getUserName());
				List<SysUsers> ls2 = sysUsersMapper.querySysUsersByEquals(sr);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("用户名称重复！");
					return Json;
				}

				// 判断账号是否重复
				sr = new SysUsers();
				sr.setUserAccount(sysUsers.getUserAccount());
				List<SysUsers> ls3 = sysUsersMapper.querySysUsersByEquals(sr);
				if (ls3.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("登陆账号重复！");
					return Json;
				}

				// 处理密码
				String pwd = sysUsers.getUserPwdBak();
				sysUsers.setUserPwd(MD5Util.MD5Encode(pwd.toString(), "UTF-8"));

				sysUsers.setUserId(GenID.gen(32));
				sysUsers.setCreator("admin");
				sysUsers.setCreateTime(new Date());
				sysUsersMapper.insertSysUsersData(sysUsers);

			} else if ("U".equals(cmd)) {
				// 判断编码重复
				SysUsers sr = new SysUsers();
				sr.setUserId(sysUsers.getUserId());
				sr.setUserCode(sysUsers.getUserCode());
				List<SysUsers> ls = sysUsersMapper.querySysUsersByEquals(sr);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("角色编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sr = new SysUsers();
				sr.setUserId(sysUsers.getUserId());
				sr.setUserName(sysUsers.getUserName());
				List<SysUsers> ls2 = sysUsersMapper.querySysUsersByEquals(sr);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("角色名称重复！");
					return Json;
				}

				// 判断账号是否重复
				sr = new SysUsers();
				sr.setUserId(sysUsers.getUserId());
				sr.setUserAccount(sysUsers.getUserAccount());
				List<SysUsers> ls3 = sysUsersMapper.querySysUsersByEquals(sr);
				if (ls3.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("登陆账号重复！");
					return Json;
				}

				// 处理密码
				String pwd = sysUsers.getUserPwdBak();
				sysUsers.setUserPwd(MD5Util.MD5Encode(pwd.toString(), "UTF-8"));

				sysUsers.setUpdator("admin");
				sysUsers.setUpdateTime(new Date());
				sysUsersMapper.updateSysUsersData(sysUsers);

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
	public Object saveSetRes(String userId, String data, String roles) throws Exception {
		JsonBean json = new JsonBean();

		// 删除该用户已拥有的角色
		sysUsersMapper.deleteUsersOwnRoles(userId);

		// 删除该角色拥有的模板数据项
		sysUsersMapper.deleteUsersOwnResoucces(userId);

		// 保存数据
		List<SysUsers> sysUserList = new ArrayList<>();
		JSONArray arrJson = JSONArray.fromObject(data);
		if (arrJson.size() > 0) {
			for (int i = 0; i < arrJson.size(); i++) {
				JSONObject objJson = arrJson.getJSONObject(i);
				String resId = String.valueOf(objJson.getString("resId"));

				SysUsers sysUsers = new SysUsers();
				sysUsers.setId(GenID.gen(32));
				sysUsers.setUserId(userId);
				sysUsers.setResId(resId);

				sysUserList.add(sysUsers);

			}
		}
		if (sysUserList.size() > 0) {
			sysUsersMapper.saveUsersOwnResoucces(sysUserList);
		}

		// 保存角色数据
		sysUserList = new ArrayList<>();
		arrJson = JSONArray.fromObject(roles);
		if (arrJson.size() > 0) {
			for (int i = 0; i < arrJson.size(); i++) {
				JSONObject objJson = arrJson.getJSONObject(i);
				String roleId = String.valueOf(objJson.getString("id"));

				SysUsers sysUsers = new SysUsers();
				sysUsers.setId(GenID.gen(32));
				sysUsers.setUserId(userId);
				sysUsers.setRoleId(roleId);

				sysUserList.add(sysUsers);
			}
		}
		if (sysUserList.size() > 0) {
			sysUsersMapper.saveUsersOwnRoles(sysUserList);
		}

		json.setSuccess(true);
		json.setMsg("保存成功");

		return json;
	}

	@Override
	public Object deleteData(String userId) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			SysUsers sr = new SysUsers();
			sr.setUserId(userId);
			List<SysUsers> sr_ls = sysUsersMapper.querySysUsersByLikes(sr);
			if (sr_ls.size() > 0) {
				sr = sr_ls.get(0);
				// 删除用户
				sysUsersMapper.deleteSysUsersData(sr.getUserId());

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
	public Object unLock(HttpServletRequest req) throws Exception {
		JsonBean json = new JsonBean();

		HttpSession session = req.getSession();
		SysUsers userBean = (SysUsers) session.getAttribute("SESSION_USERBEAN");

		SysUsers su = new SysUsers();
		su.setUserAccount(userBean.getUserAccount());
		List<SysUsers> ls = sysUsersMapper.querySysUsersByEquals(su);
		if (ls.size() > 0) {
			su = ls.get(0);
			String userPwd = MD5Util.MD5Encode(req.getParameter("userPwdBak").toString(), "UTF-8");
			if (userPwd.equals(su.getUserPwd())) {
				json.setSuccess(true);
			} else {
				json.setSuccess(false);
			}
		} else {
			json.setSuccess(false);
		}

		return json;
	}

}
