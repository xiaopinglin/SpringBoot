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
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysSystem;
import com.lxp.service.sys.SysSystemService;
import com.lxp.util.StringUtil;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:53:02
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/sys/system")
public class SysSystemController {

	@Autowired
	private SysSystemService sysSystemService;

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
		model.setViewName("/pages/sys/system/sys_system_main");
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
	public Object queryList(PageBean pageBean, SysSystem sysSystem) throws Exception {
		return sysSystemService.queryPageInfo(pageBean, sysSystem);
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
		if ("A".equals(cmd)) {
			// 获取系统编码
			SysSystem sst = sysSystemService.getMaxSysSystemCode();
			String code = sst.getSysCode();
			int num = 0;
			if (!StringUtil.StringIfNullOrEmpty(code)) {
				num = Integer.valueOf(code.substring(2, code.length()));
			}
			String sysCode = "XT" + String.format("%03d", ++num);

			SysSystem system = new SysSystem();
			system.setSysCode(sysCode);
			model.addObject("system", system);
		} else if ("U".equals(cmd)) {
			SysSystem system = new SysSystem();
			system.setSysId(id);
			List<SysSystem> ss_ls = sysSystemService.querySysSystemByLikes(system);
			if (ss_ls.size() > 0) {
				system = ss_ls.get(0);
			}
			model.addObject("system", system);
		} else {
			SysSystem system = new SysSystem();
			model.addObject("system", system);
		}
		// 注意：由于用的同一个视图所以都必须把对象传入视图model.addObject("system",system);否则会出现对象不存在异常
		model.addObject("cmd", cmd);
		model.setViewName("/pages/sys/system/sys_system_edit");
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
		SysSystem sysSystem = mapper.readValue(data.getBytes(), SysSystem.class);
		return sysSystemService.saveData(cmd, sysSystem);
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
		return sysSystemService.deleteData(req.getParameter("id"));
	}

}
