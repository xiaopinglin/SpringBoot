package com.lxp.config.shiro;

import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.lxp.model.sys.SysUsers;
import com.lxp.service.sys.SysUsersService;

/**
 * @author lxp
 * @date 2018年9月21日 下午2:36:50
 * @parameter
 * @return
 */
public class MyShiroRealm extends AuthorizingRealm {

	@Autowired
	private SysUsersService sysUsersService;

	/**
	 * 执行授权逻辑
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		return authorizationInfo;
	}

	/**
	 * 执行认证逻辑
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
		SysUsers sysUsers = new SysUsers();
		sysUsers.setUserAccount(token.getUsername());
		try {
			List<SysUsers> users = sysUsersService.querySysUsersByEquals(sysUsers);
			if (users.size() <= 0) {
				return null;
			} else {
				sysUsers = users.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SimpleAuthenticationInfo(sysUsers, sysUsers.getUserPwd(), "");
	}

}
