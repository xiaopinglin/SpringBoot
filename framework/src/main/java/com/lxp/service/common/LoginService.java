package com.lxp.service.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lxp
 * @date 2018年8月22日 下午3:26:58
 * @parameter
 * @return
 */
public interface LoginService {

	Object userLogin(HttpServletRequest req, HttpServletResponse res) throws Exception;

	Object userLogout(HttpServletRequest req, HttpServletResponse res) throws Exception;

}
