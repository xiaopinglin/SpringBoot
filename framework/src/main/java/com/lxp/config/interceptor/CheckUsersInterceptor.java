package com.lxp.config.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.lxp.config.annotation.IgnoreLogin;
import com.lxp.model.MemoryData;
import com.lxp.model.sys.SysUsers;

/**
 * 实现 用户单一登录问题 （建议用shiro，后期更改）
 * 
 * @author lxp
 * @date 2018年4月19日 下午3:37:23
 * @parameter
 * @return
 */
public class CheckUsersInterceptor implements HandlerInterceptor {

	public static final Logger logger = LogManager.getLogger(CheckUsersInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		// 优先检查是否要验证
		HandlerMethod method = (HandlerMethod) handler;
		if (!method.hasMethodAnnotation(IgnoreLogin.class)) {

			// 验证是否本次登录
			Subject subject = SecurityUtils.getSubject();
			SysUsers sysUser = (SysUsers) subject.getSession().getAttribute("SESSION_USERBEAN");
			if (sysUser != null) {
				String sessionid = MemoryData.getSessionIDMap().get(sysUser.getUserId());
				if (sessionid.equals(request.getSession().getId())) {
					return true;
				} else {
					HttpSession session = request.getSession();
					session.invalidate();

					String indexurl = request.getContextPath();
					response.sendRedirect(indexurl);

					return false;
				}
			} else {
				HttpSession session = request.getSession();
				session.invalidate();

				// 如果session中没有，跳转到登陆页
				request.getRequestDispatcher(request.getContextPath()).forward(request, response);

				return false;
			}
		} else {
			return true;
		}

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

	}

}
