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
import com.lxp.model.sys.SysDept;
import com.lxp.model.sys.SysOrgan;
import com.lxp.service.sys.SysDeptService;
import com.lxp.service.sys.SysOrganService;
import com.lxp.util.StringUtil;

/**
 * @author lxp
 * @date 2018年7月3日 下午3:53:02
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/sys/dept")
public class SysDeptController {

	@Autowired
	private SysDeptService sysDeptService;

	@Autowired
	private SysOrganService sysOrganService;

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

		// 获取机构列表
		List<SysOrgan> sysOrgans = sysOrganService.querySysOrganByLikes(new SysOrgan());
		model.addObject("sysOrgans", sysOrgans);

		model.addObject("nodes", sysDeptService.getDeptTree());
		model.setViewName("/pages/sys/dept/sys_dept_main");
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
		String deptId = req.getParameter("deptId");
		String type = req.getParameter("type");

		// 获取机构列表
		List<SysOrgan> sysOrgans = sysOrganService.querySysOrganByLikes(new SysOrgan());
		model.addObject("sysOrgans", sysOrgans);

		if ("A".equals(cmd)) {
			// 获取部门编码
			String code = "";
			SysDept sd = sysDeptService.getMaxSysDeptCode();
			if (sd != null) {
				code = sd.getDeptCode();
			}
			int num = 0;
			if (!StringUtil.StringIfNullOrEmpty(code)) {
				num = Integer.valueOf(code.substring(2, code.length()));
			}
			String deptCode = "BM" + String.format("%04d", ++num);

			SysDept sysDept = new SysDept();
			sysDept.setDeptId(GenID.gen(32));
			sysDept.setDeptCode(deptCode);

			// 获取上级部门
			if ("1".equals(type)) {
				SysOrgan sysOrgan = new SysOrgan();
				sysOrgan.setOrgId(deptId);
				List<SysOrgan> ls = sysOrganService.querySysOrganByLikes(sysOrgan);
				if (ls.size() > 0) {
					sysOrgan = ls.get(0);

					sysDept.setDeptPid(sysOrgan.getOrgCode());
					sysDept.setDeptPname(sysOrgan.getOrgName());
				}
			} else if ("2".equals(type)) {
				SysDept sd2 = new SysDept();
				sd2.setDeptId(deptId);
				List<SysDept> ls = sysDeptService.querySysDeptByLiks(sd2);
				if (ls.size() > 0) {
					sd2 = ls.get(0);

					sysDept.setDeptPid(sd2.getDeptCode());
					sysDept.setDeptPname(sd2.getDeptName());
				}
			}

			model.addObject("sysDept", sysDept);
		} else if ("U".equals(cmd)) {
			// 获取部门数据
			SysDept sysDept = new SysDept();
			sysDept.setDeptId(deptId);
			List<SysDept> sd_ls = sysDeptService.querySysDeptByLiks(sysDept);
			if (sd_ls.size() > 0) {
				sysDept = sd_ls.get(0);
			}

			// 获取上级部门
			String deptPid = sysDept.getDeptPid();
			if (deptPid.indexOf("ORG") > -1) {
				SysOrgan sysOrgan = new SysOrgan();
				sysOrgan.setOrgCode(deptPid);
				List<SysOrgan> ls = sysOrganService.querySysOrganByLikes(sysOrgan);
				if (ls.size() > 0) {
					sysOrgan = ls.get(0);
					sysDept.setDeptPname(sysOrgan.getOrgName());
				}
			} else {
				SysDept sd2 = new SysDept();
				sd2.setDeptCode(deptPid);
				List<SysDept> ls = sysDeptService.querySysDeptByLiks(sd2);
				if (ls.size() > 0) {
					sd2 = ls.get(0);
					sysDept.setDeptPname(sd2.getDeptName());
				}
			}

			model.addObject("sysDept", sysDept);
		} else {
			model.addObject("sysDept", new SysDept());
		}

		// 注意：由于用的同一个视图所以都必须把对象传入视图
		model.addObject("cmd", cmd);
		model.setViewName("/pages/sys/dept/sys_dept_edit");
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
		SysDept sysDept = mapper.readValue(data.getBytes(), SysDept.class);
		return sysDeptService.saveData(cmd, sysDept);
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
		return sysDeptService.deleteData(req.getParameter("id"));
	}

	/**
	 * 重排根据ID（ID生成根据时间）
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/rearrange")
	public Object rearrange(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysDeptService.rearrange();
	}

	/**
	 * 上移 下移
	 */
	@ResponseBody
	@RequestMapping("/moveUpAnddown")
	public Object moveUpAnddown(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysDeptService.moveUpAnddown(req);
	}

	/**
	 * 根据机构获取部门
	 */
	@ResponseBody
	@RequestMapping("/getDeptByOrgan")
	public Object getDeptByOrgan(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysDeptService.getDeptByOrgan(req);
	}

}
