package com.lxp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.lxp.config.annotation.IgnoreLogin;
import com.lxp.model.sys.SysSystem;
import com.lxp.model.sys.SysUsers;
import com.lxp.service.common.CommonService;
import com.lxp.service.sys.SysSystemService;
import com.lxp.util.VerifyCodeUtils;

/**
 * @author lxp
 * @date 2018年7月13日 下午5:50:46
 * @parameter
 * @return
 */
@Controller
public class CommonController {

	private String HTML_INDEX = "index";
	private String HTML_LOGIN = "login";

	@Autowired
	private SysSystemService sysSystemService;

	@Autowired
	private CommonService commonService;

	/**
	 * 进入首页
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@IgnoreLogin
	@RequestMapping("/")
	public ModelAndView gotoIndex(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView mav = new ModelAndView();

		HttpSession session = req.getSession();
		SysUsers userBean = (SysUsers) session.getAttribute("SESSION_USERBEAN");
		if (userBean != null) {
			// 获取系统
			SysSystem ss = new SysSystem();
			ss.setSysStatus("1");
			List<SysSystem> sys_ls = sysSystemService.querySysSystemByLikes(ss);
			mav.addObject("systems", sys_ls);

			mav.setViewName(HTML_INDEX);
		} else {
			mav.setViewName(HTML_LOGIN);
		}
		return mav;
	}

	/**
	 * 获取验证码
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@IgnoreLogin
	@ResponseBody
	@RequestMapping(value = "/getYzm", method = RequestMethod.GET)
	public void getYzm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String verifyCode = VerifyCodeUtils.generateVerifyCode(5);
		VerifyCodeUtils.outputImage(90, 31, res.getOutputStream(), verifyCode);
		req.getSession().setAttribute("yzm", verifyCode);
	}

	/**
	 * 系统图标
	 * 
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
	@IgnoreLogin
	@RequestMapping("/gotoIcon")
	public ModelAndView gotoIcon(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/pages/common/icon");
		return mav;

	}

	/**
	 * 跳转到导入
	 * 
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/gotoImport")
	public ModelAndView gotoImport(HttpServletRequest req) throws Exception {
		ModelAndView model = new ModelAndView();
		model.setViewName("/pages/common/import");
		return model;
	}

	/**
	 * 解析Excel
	 * 
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/dealwithExcel")
	public Object dealwithExcel(MultipartHttpServletRequest req) throws Exception {
		return commonService.dealwithExcel(req);
	}

	/**
	 * 导出
	 * 
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/gotoExport")
	public ModelAndView gotoExport(HttpServletRequest req) throws Exception {
		ModelAndView model = new ModelAndView();
		model.setViewName("/pages/common/export");
		return model;
	}

}
