package com.lxp.controller.sys;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysDept;
import com.lxp.model.sys.SysOrgan;
import com.lxp.model.sys.SysResources;
import com.lxp.model.sys.SysRoles;
import com.lxp.model.sys.SysSystem;
import com.lxp.model.sys.SysUsers;
import com.lxp.service.sys.SysDeptService;
import com.lxp.service.sys.SysOrganService;
import com.lxp.service.sys.SysResourcesService;
import com.lxp.service.sys.SysRolesService;
import com.lxp.service.sys.SysSystemService;
import com.lxp.service.sys.SysUsersService;
import com.lxp.util.StringUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:53:02
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/sys/users")
public class SysUsersController {

	@Autowired
	private SysUsersService sysUsersService;

	@Autowired
	private SysOrganService sysOrganService;

	@Autowired
	private SysDeptService sysDeptService;

	@Autowired
	private SysSystemService sysSystemService;

	@Autowired
	private SysResourcesService sysResourcesService;

	@Autowired
	private SysRolesService sysRolesService;

	/**
	 * 进入首页
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/main")
	public ModelAndView gotoMain(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView model = new ModelAndView();

		// 所属机构
		model.addObject("sysOrgans", sysOrganService.querySysOrganByLikes(new SysOrgan()));

		model.setViewName("/pages/sys/users/sys_users_main");
		return model;
	}

	/**
	 * 列表查询
	 * 
	 * @param pageBean
	 * @param sysUsers
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/list")
	public Object queryList(PageBean pageBean, SysUsers sysUsers) throws Exception {
		return sysUsersService.queryPageInfo(pageBean, sysUsers);
	}

	/**
	 * 新增编辑
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/edit")
	public ModelAndView gotoEdit(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView model = new ModelAndView();
		String cmd = req.getParameter("cmd");
		String id = req.getParameter("id");

		// 所属机构
		model.addObject("sysOrgans", sysOrganService.querySysOrganByLikes(new SysOrgan()));

		if ("A".equals(cmd)) {
			// 获取角色编码
			String code = "";
			SysUsers sr = sysUsersService.getMaxSysUsersCode();
			if (sr != null) {
				code = sr.getUserCode();
			}
			int num = 0;
			if (!StringUtil.StringIfNullOrEmpty(code)) {
				num = Integer.valueOf(code.substring(2, code.length()));
			}
			String userCode = "YH" + String.format("%05d", ++num);

			SysUsers sysUsers = new SysUsers();
			sysUsers.setUserCode(userCode);
			model.addObject("sysUsers", sysUsers);
		} else if ("U".equals(cmd)) {
			SysUsers sysUsers = new SysUsers();
			sysUsers.setUserId(id);
			List<SysUsers> so_ls = sysUsersService.querySysUsersByLikes(sysUsers);
			if (so_ls.size() > 0) {
				sysUsers = so_ls.get(0);
			}

			// 根据orgId 获取部门下拉列表
			if (!StringUtil.StringIfNullOrEmpty(sysUsers.getOrgId())) {
				SysDept dept = new SysDept();
				dept.setOrgId(sysUsers.getOrgId());
				List<SysDept> dept_ls = sysDeptService.querySysDeptByLiks(dept);
				model.addObject("sysDepts", dept_ls);
			} else {
				model.addObject("sysDepts", null);
			}

			model.addObject("sysUsers", sysUsers);
		} else {
			SysUsers sysUsers = new SysUsers();
			model.addObject("sysUsers", sysUsers);
		}

		model.addObject("cmd", cmd);
		model.setViewName("/pages/sys/users/sys_users_edit");
		return model;
	}

	/**
	 * 保存数据
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/save")
	public Object saveData(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String cmd = req.getParameter("cmd");
		String data = req.getParameter("data");

		ObjectMapper mapper = new ObjectMapper();
		SysUsers sysUsers = mapper.readValue(data.getBytes(), SysUsers.class);
		return sysUsersService.saveData(cmd, sysUsers);
	}

	/**
	 * 数据删除
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/del")
	public Object delData(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysUsersService.deleteData(req.getParameter("id"));
	}

	@RequestMapping("/setRes")
	public ModelAndView setRes(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView model = new ModelAndView();

		// 获取该角色拥有的资源
		List<String> own_ls = new ArrayList<String>();
		List<SysUsers> own_res_ls_ = sysUsersService.getOwnSysResoucesByUserId(req.getParameter("userId"));
		if (own_res_ls_.size() > 0) {
			for (SysUsers sysUsers : own_res_ls_) {
				own_ls.add(sysUsers.getResId());
			}
		}

		// 获取资源树
		JSONArray arr = new JSONArray();
		// 获取系统
		List<SysSystem> sys_ls = sysSystemService.querySysSystemByLikes(new SysSystem());
		if (sys_ls.size() > 0) {
			for (SysSystem ss : sys_ls) {
				JSONObject obj = new JSONObject();
				obj.put("id", ss.getSysCode());
				obj.put("name", ss.getSysName());
				obj.put("pId", "0");
				obj.put("open", true);
				obj.put("resId", ss.getSysId());
				obj.put("nocheck", true);

				arr.add(obj);
			}
		}

		// 获取菜单
		List<SysResources> res_ls = sysResourcesService.querySysResourcesByLikes(new SysResources());
		if (res_ls.size() > 0) {
			for (SysResources sr : res_ls) {
				JSONObject obj = new JSONObject();
				obj.put("id", sr.getResCode());
				obj.put("name", sr.getResName());
				obj.put("pId", sr.getResPid());
				obj.put("open", true);
				obj.put("resId", sr.getResId());
				if (own_ls.contains(sr.getResId())) {
					obj.put("checked", true);
				}
				arr.add(obj);
			}
		}
		model.addObject("ResTree", arr.toString());

		// 获取该用户拥有的角色
		List<String> own_ls2 = new ArrayList<String>();
		List<SysUsers> ur_ls = sysUsersService.getOwnSysRolesByUserId(req.getParameter("userId"));
		for (SysUsers ss : ur_ls) {
			own_ls2.add(ss.getRoleId());
		}

		// 获取所有角色列表
		JSONArray arr2 = new JSONArray();
		JSONObject obj = new JSONObject();
		obj.put("id", "0");
		obj.put("name", "角色列表");
		obj.put("pId", "0");
		obj.put("open", true);
		obj.put("nocheck", true);
		arr2.add(obj);

		SysRoles sysRoles = new SysRoles();
		sysRoles.setRoleStatus("1");
		List<SysRoles> sr_ls = sysRolesService.querySysRolesByLikes(sysRoles);
		if (sr_ls.size() > 0) {
			for (SysRoles sysRoles2 : sr_ls) {
				obj = new JSONObject();
				obj.put("id", sysRoles2.getRoleId());
				obj.put("name", sysRoles2.getRoleName());
				obj.put("pId", "0");
				obj.put("open", true);
				if (own_ls2.contains(sysRoles2.getRoleId())) {
					obj.put("checked", true);
				}
				arr2.add(obj);
			}
		}
		model.addObject("Roles", arr2.toString());

		model.addObject("userId", req.getParameter("userId"));
		model.setViewName("/pages/sys/users/sys_users_set");
		return model;
	}

	@ResponseBody
	@RequestMapping("/saveSetRes")
	public Object saveSetRes(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysUsersService.saveSetRes(req.getParameter("userId"), req.getParameter("data"), req.getParameter("roles"));
	}

	@ResponseBody
	@RequestMapping("/unLock")
	public Object unLock(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysUsersService.unLock(req);
	}

}
