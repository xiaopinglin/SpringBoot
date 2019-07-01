package com.lxp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lxp.config.annotation.IgnoreLogin;
import com.lxp.service.common.LoginService;

/**
 * @author lxp
 * @date 2018年8月22日 下午3:21:37
 * @parameter
 * @return
 */
@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@IgnoreLogin
	@ResponseBody
	@RequestMapping("/login")
	public Object login(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return loginService.userLogin(req, res);
	}

	@ResponseBody
	@RequestMapping("/logout")
	public Object logout(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return loginService.userLogout(req, res);
	}
}
