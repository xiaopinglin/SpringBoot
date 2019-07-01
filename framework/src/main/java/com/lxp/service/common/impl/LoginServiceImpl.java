package com.lxp.service.common.impl;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxp.mapper.sys.SysUsersMapper;
import com.lxp.model.MemoryData;
import com.lxp.model.common.JsonBean;
import com.lxp.model.sys.SysUsers;
import com.lxp.service.common.LoginService;
import com.lxp.util.MD5Util;
import com.lxp.util.commonUtil;

/**
 * @author lxp
 * @date 2018年8月22日 下午3:28:41
 * @parameter
 * @return
 */
@Service
@Transactional
public class LoginServiceImpl implements LoginService {

	@Autowired
	private SysUsersMapper sysUsersMapper;

	@Override
	public Object userLogin(HttpServletRequest req, HttpServletResponse res) throws Exception {
		JsonBean json = new JsonBean();

		String userAccount = req.getParameter("userAccount");
		String userPwdBak = req.getParameter("userPwdBak");
		String vercode = req.getParameter("vercode");

		String yzm = (String) req.getSession().getAttribute("yzm");
		try {
			// 校验验证码
			if (!vercode.toLowerCase().equals(yzm.toLowerCase())) {
				json.setSuccess(false);
				json.setMsg("验证码不正确");
				return json;
			}

			UsernamePasswordToken token = new UsernamePasswordToken(userAccount, MD5Util.MD5Encode(userPwdBak.toString(), "UTF-8"));
			Subject subject = SecurityUtils.getSubject();
			subject.login(token);

			SysUsers user = (SysUsers) subject.getPrincipal();

			// 重新设置用户登录错误次数
			SysUsers su = new SysUsers();
			su.setUserId(user.getUserId());
			su.setLastLoginIp(commonUtil.getIp(req));
			su.setLastLoginTime(new Date());
			sysUsersMapper.updateLastLoginInfo(su);

			// 把用户登陆的session放入Map中,用于用户单一登录验证
			String sessionID = req.getSession().getId();
			if (!MemoryData.getSessionIDMap().containsKey(user.getUserId())) { // 不存在，首次登陆，放入Map
				MemoryData.getSessionIDMap().put(user.getUserId(), sessionID);
			} else if (MemoryData.getSessionIDMap().containsKey(user.getUserId()) && !sessionID.equals(MemoryData.getSessionIDMap().get(user.getUserId()))) {
				MemoryData.getSessionIDMap().remove(user.getUserId());
				MemoryData.getSessionIDMap().put(user.getUserId(), sessionID);
			}

			// 设置缓存
			HttpSession session = req.getSession();
			session.setAttribute("SESSION_USERBEAN", user);

			json.setSuccess(true);
		} catch (UnknownAccountException e) {
			json.setSuccess(false);
			json.setMsg("账号不存在!");
		} catch (IncorrectCredentialsException e) {
			json.setSuccess(false);
			json.setMsg("密码不正确!");
		} catch (AuthenticationException e) {
			json.setSuccess(false);
			json.setMsg("未知错误!");
		}

		return json;
	}

	@Override
	public Object userLogout(HttpServletRequest req, HttpServletResponse res) throws Exception {
		JsonBean json = new JsonBean();

		Subject subject = SecurityUtils.getSubject();
		subject.logout();

		json.setSuccess(true);
		json.setObj("注销成功");

		return json;
	}

}
