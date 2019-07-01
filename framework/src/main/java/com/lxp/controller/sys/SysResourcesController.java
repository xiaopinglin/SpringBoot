package com.lxp.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lxp.common.GenID;
import com.lxp.model.sys.SysResources;
import com.lxp.model.sys.SysSystem;
import com.lxp.service.sys.SysResourcesService;
import com.lxp.service.sys.SysSystemService;
import com.lxp.util.StringUtil;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:53:02
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/sys/resources")
public class SysResourcesController {

	@Autowired
	private SysResourcesService sysResourcesService;

	@Autowired
	private SysSystemService sysSystemService;

	/**
	 * 获取资源树（用于系统菜单显示）
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/getMenus")
	public Object getMenus(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysResourcesService.getMenus();
	}

	/**
	 * 进入首页
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("/main")
	public ModelAndView gotoMain(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView model = new ModelAndView();
		model.addObject("nodes", sysResourcesService.getResourcesTree());

		// 获取系统列表
		SysSystem system = new SysSystem();
		List<SysSystem> systems = sysSystemService.querySysSystemByLikes(system);
		model.addObject("systems", systems);

		model.setViewName("/pages/sys/resources/sys_resources_main");
		return model;
	}

	/**
	 * 新增、修改、详情
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
		String type = req.getParameter("type");
		String ifChild = req.getParameter("ifChild");
		String resId = req.getParameter("resId");
		String sysId = req.getParameter("sysId");

		// 获取所属系统
		SysSystem system = new SysSystem();
		List<SysSystem> systems = sysSystemService.querySysSystemByLikes(system);
		model.addObject("systems", systems);

		if ("A".equals(cmd)) {
			// 获取资源编码
			SysResources sr = sysResourcesService.getMaxSysResourcesCode();
			String code = sr.getResCode();
			int num = 0;
			if (!StringUtil.StringIfNullOrEmpty(code)) {
				num = Integer.valueOf(code.substring(2, code.length()));
			}
			String sysCode = "ZY" + String.format("%03d", ++num);

			SysResources sysResources = new SysResources();
			sysResources.setResId(GenID.gen(32));
			sysResources.setResCode(sysCode);

			// 获取上级资源名称
			if ("0".equals(type)) {
				SysSystem sst = new SysSystem();
				sst.setSysId(resId);
				List<SysSystem> sst_ls = sysSystemService.querySysSystemByLikes(system);
				if (sst_ls.size() > 0) {
					sst = sst_ls.get(0);
					sysResources.setResPid(sst.getSysCode());
					sysResources.setResPname(sst.getSysName());
				}
			} else {
				SysResources ssr = new SysResources();
				ssr.setResId(resId);
				List<SysResources> ssr_ls = sysResourcesService.querySysResourcesByLikes(ssr);
				if (ssr_ls.size() > 0) {
					ssr = ssr_ls.get(0);
					sysResources.setResPid(ssr.getResCode());
					sysResources.setResPname(ssr.getResName());
				}
			}

			sysResources.setSysId(sysId);
			model.addObject("sysRes", sysResources);
		} else if ("U".equals(cmd)) {
			// 获取资源数据
			SysResources sysResources = new SysResources();
			sysResources.setResId(resId);
			List<SysResources> ssr_ls = sysResourcesService.querySysResourcesByLikes(sysResources);
			if (ssr_ls.size() > 0) {
				sysResources = ssr_ls.get(0);
			}

			// 获取上级资源名称
			String resPid = sysResources.getResPid();
			if (resPid.indexOf("XT") > -1) {
				SysSystem sst = new SysSystem();
				sst.setSysCode(resPid);
				List<SysSystem> sys_ls = sysSystemService.querySysSystemByLikes(system);
				if (sys_ls.size() > 0) {
					system = sys_ls.get(0);
					sysResources.setResPname(system.getSysName());
				}
			} else {
				SysResources ssr2 = new SysResources();
				ssr2.setResCode(resPid);
				List<SysResources> ssr_ls2 = sysResourcesService.querySysResourcesByLikes(ssr2);
				if (ssr_ls2.size() > 0) {
					ssr2 = ssr_ls2.get(0);
					sysResources.setResPname(ssr2.getResName());
				}
			}
			model.addObject("sysRes", sysResources);
		} else {
			model.addObject("sysRes", new SysResources());
		}

		// 判断资源类型的可选项
		boolean selBtn = false;
		if ("A".equals(cmd)) {
			if ("1".equals(type) && "1".equals(ifChild)) {
				selBtn = true;
			}
		} else if ("U".equals(cmd)) {
			if ("2".equals(type)) {
				selBtn = true;
			}
		}
		model.addObject("selBtn", selBtn);

		// 注意：由于用的同一个视图所以都必须把对象传入视图
		model.addObject("cmd", cmd);
		model.setViewName("/pages/sys/resources/sys_resources_edit");
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
		SysResources sysResources = mapper.readValue(data.getBytes(), SysResources.class);
		return sysResourcesService.saveData(cmd, sysResources);
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
		return sysResourcesService.deleteData(req.getParameter("id"));
	}

	/**
	 * 资源重排根据ID（ID生成根据时间）
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/rearrange")
	public Object rearrange(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysResourcesService.rearrange();
	}

	/**
	 * 上移 下移
	 */
	@ResponseBody
	@RequestMapping("/moveUpAnddown")
	public Object moveUpAnddown(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysResourcesService.moveUpAnddown(req);
	}

}
