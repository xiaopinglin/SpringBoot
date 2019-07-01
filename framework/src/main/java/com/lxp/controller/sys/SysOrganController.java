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
import com.lxp.model.sys.SysOrgan;
import com.lxp.service.sys.SysOrganService;
import com.lxp.util.StringUtil;

/**
 * @author lxp
 * @date 2018年8月13日 上午10:06:28
 * @parameter
 * @return
 */

@Controller
@RequestMapping("/sys/organ")
public class SysOrganController {

	@Autowired
	private SysOrganService sysOrganService;

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
		model.setViewName("/pages/sys/organ/sys_organ_main");
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
	public Object queryList(PageBean pageBean, SysOrgan sysOrgan) throws Exception {
		return sysOrganService.queryPageInfo(pageBean, sysOrgan);
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
			// 获取机构编码
			String code = "";
			SysOrgan so = sysOrganService.getMaxSysOrganCode();
			if (so != null) {
				code = so.getOrgCode();
			}
			int num = 0;
			if (!StringUtil.StringIfNullOrEmpty(code)) {
				num = Integer.valueOf(code.substring(3, code.length()));
			}
			String sysCode = "ORG" + String.format("%03d", ++num);

			SysOrgan sysOrgan = new SysOrgan();
			sysOrgan.setOrgCode(sysCode);
			model.addObject("sysOrgan", sysOrgan);
		} else if ("U".equals(cmd)) {
			SysOrgan sysOrgan = new SysOrgan();
			sysOrgan.setOrgId(id);
			List<SysOrgan> so_ls = sysOrganService.querySysOrganByLikes(sysOrgan);
			if (so_ls.size() > 0) {
				sysOrgan = so_ls.get(0);
			}
			model.addObject("sysOrgan", sysOrgan);
		} else {
			SysOrgan sysOrgan = new SysOrgan();
			model.addObject("sysOrgan", sysOrgan);
		}
		// 注意：由于用的同一个视图所以都必须把对象传入视图model.addObject("system",system);否则会出现对象不存在异常
		model.addObject("cmd", cmd);
		model.setViewName("/pages/sys/organ/sys_organ_edit");
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
		SysOrgan sysOrgan = mapper.readValue(data.getBytes(), SysOrgan.class);
		return sysOrganService.saveData(cmd, sysOrgan);
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
		return sysOrganService.deleteData(req.getParameter("id"));
	}

}
