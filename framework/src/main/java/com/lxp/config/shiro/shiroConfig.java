package com.lxp.config.shiro;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.Filter;

import org.apache.shiro.authc.pam.AtLeastOneSuccessfulStrategy;
import org.apache.shiro.authc.pam.ModularRealmAuthenticator;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author lxp
 * @date 2018年9月21日 下午2:33:31
 * @parameter
 * @return
 */
@Configuration
public class shiroConfig {

	/**
	 * 创建ShiroFilterFactoryBean
	 */
	@Bean
	public ShiroFilterFactoryBean getShiroFilterFactoryBean(@Qualifier("securiryManager") DefaultWebSecurityManager securiryManager) {
		ShiroFilterFactoryBean shiroFilterFactoruBean = new ShiroFilterFactoryBean();
		shiroFilterFactoruBean.setSecurityManager(securiryManager);

		shiroFilterFactoruBean.setLoginUrl("/");
		shiroFilterFactoruBean.setSuccessUrl("/");
		shiroFilterFactoruBean.setUnauthorizedUrl("/gotoUnauth");

		// 将自定义 的ShiroFilterFactoryBean注入shiroFilter
		Map<String, Filter> filters = shiroFilterFactoruBean.getFilters();
		filters.put("perms", new AuthorizeFilter());

		// 添加过滤器 实现权限相关的拦截 anon, authc, user, perms, role
		Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
		filterChainDefinitionMap.put("/css/**", "anon");
		filterChainDefinitionMap.put("/images/**", "anon");
		filterChainDefinitionMap.put("/js/**", "anon");
		filterChainDefinitionMap.put("/json/**", "anon");
		filterChainDefinitionMap.put("/layui/**", "anon");

		filterChainDefinitionMap.put("/login", "anon");
		filterChainDefinitionMap.put("/getYzm", "anon");
		filterChainDefinitionMap.put("/gotoIcon", "anon");

		filterChainDefinitionMap.put("/**", "authc");

		shiroFilterFactoruBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
		return shiroFilterFactoruBean;
	}

	/**
	 * 创建DefaultWebSecurityManager
	 */
	@Bean(name = "securiryManager")
	public DefaultWebSecurityManager getDefaultWebSecurityManager(@Qualifier("myShiroRealm") MyShiroRealm myShiroRealm) {
		DefaultWebSecurityManager securiryManager = new DefaultWebSecurityManager();
		securiryManager.setRealm(myShiroRealm);
		return securiryManager;
	}

	/**
	 * 创建MyShiroRealm
	 */
	@Bean(name = "myShiroRealm")
	public MyShiroRealm getMyShiroRealm() {
		return new MyShiroRealm();

	}

	/**
	 * 创建Realm管理器， 有多个Realm时定义规则
	 */
	@Bean
	public ModularRealmAuthenticator modularRealmAuthenticator() {
		ModularRealmAuthenticator modularRealmAuthenticator = new ModularRealmAuthenticator();
		modularRealmAuthenticator.setAuthenticationStrategy(new AtLeastOneSuccessfulStrategy());// 至少一个认证通过
		return modularRealmAuthenticator;
	}

}
