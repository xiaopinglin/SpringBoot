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
import com.lxp.model.sys.SysResources;
import com.lxp.model.sys.SysRoles;
import com.lxp.model.sys.SysSystem;
import com.lxp.service.sys.SysResourcesService;
import com.lxp.service.sys.SysRolesService;
import com.lxp.service.sys.SysSystemService;
import com.lxp.util.StringUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年8月15日 下午3:35:40
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/sys/roles")
public class SysRolesController {

	@Autowired
	private SysRolesService sysRolesService;

	@Autowired
	private SysSystemService sysSystemService;

	@Autowired
	private SysResourcesService sysResourcesService;

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

		model.setViewName("/pages/sys/roles/sys_roles_main");
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
	public Object queryList(PageBean pageBean, SysRoles sysRoles) throws Exception {
		return sysRolesService.queryPageInfo(pageBean, sysRoles);
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

		List<String> own_ls = new ArrayList<String>();
		if ("A".equals(cmd)) {
			// 获取角色编码
			String code = "";
			SysRoles sr = sysRolesService.getMaxSysRolesCode();
			if (sr != null) {
				code = sr.getRoleCode();
			}
			int num = 0;
			if (!StringUtil.StringIfNullOrEmpty(code)) {
				num = Integer.valueOf(code.substring(1, code.length()));
			}
			String roleCode = "R" + String.format("%03d", ++num);

			SysRoles sysRoles = new SysRoles();
			sysRoles.setRoleCode(roleCode);
			model.addObject("sysRoles", sysRoles);
		} else if ("U".equals(cmd)) {
			SysRoles sysRoles = new SysRoles();
			sysRoles.setRoleId(id);
			List<SysRoles> so_ls = sysRolesService.querySysRolesByLikes(sysRoles);
			if (so_ls.size() > 0) {
				sysRoles = so_ls.get(0);
			}
			model.addObject("sysRoles", sysRoles);

			// 获取该角色拥有的资源
			List<SysRoles> own_res_ls_ = sysRolesService.getOwnSysResoucesByRoleId(sysRoles.getRoleId());
			if (own_res_ls_.size() > 0) {
				for (SysRoles sysRoles2 : own_res_ls_) {
					own_ls.add(sysRoles2.getResId());
				}
			}
		} else {
			SysRoles sysRoles = new SysRoles();
			model.addObject("sysRoles", sysRoles);
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

		model.addObject("cmd", cmd);
		model.addObject("ResTree", arr.toString());
		model.setViewName("/pages/sys/roles/sys_roles_edit");
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
		String nodes = req.getParameter("nodes");

		ObjectMapper mapper = new ObjectMapper();
		SysRoles sysRoles = mapper.readValue(data.getBytes(), SysRoles.class);
		return sysRolesService.saveData(cmd, sysRoles, nodes);
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
		return sysRolesService.deleteData(req.getParameter("id"));
	}

}
