package com.lxp.config.shiro;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.PermissionsAuthorizationFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.lxp.model.common.JsonBean;

/**
 * @author lxp
 * @date 2018年9月25日 下午4:44:49
 * @parameter
 * @return
 */
public class AuthorizeFilter extends PermissionsAuthorizationFilter {

	private static final Logger logger = LoggerFactory.getLogger(AuthorizeFilter.class);

	@Override
	protected boolean onAccessDenied(ServletRequest servletRequest, ServletResponse servletResponse) throws IOException {

		JsonBean Json = new JsonBean();
		HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
		HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
		Subject subject = getSubject(httpServletRequest, httpServletResponse);
		if (!subject.isAuthenticated()) {
			String requestURI = httpServletRequest.getRequestURI();
			if (requestURI.endsWith(".json")) {
				Json.setMsg("权限不足！");
				httpServletResponse.setCharacterEncoding("UTF-8");
				httpServletResponse.setContentType("application/json");
				httpServletResponse.getWriter().write(Json.toString());
			} else {
				httpServletResponse.sendRedirect(httpServletRequest.getContextPath());
			}
		}

		Boolean isAjax = isAjax(httpServletRequest);
		if (subject.getPrincipal() != null && isAjax) {
			Json.setMsg("无权限操作!");

			httpServletResponse.setCharacterEncoding("UTF-8");
			httpServletResponse.setContentType("application/json;charset=UTF-8");
			httpServletResponse.getWriter().write(Json.toString());
			return false;

		}
		return super.onAccessDenied(servletRequest, servletResponse);

	}

	/**
	 * 根据请求头判断是不是ajax请求
	 * 
	 * @param request
	 * @return
	 */
	private Boolean isAjax(HttpServletRequest request) {
		Boolean isAjax = request.getHeader("X-Requested-With") != null && "XMLHttpRequest".equals(request.getHeader("X-Requested-With").toString());
		return isAjax;
	}

}
