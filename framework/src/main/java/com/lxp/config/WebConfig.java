package com.lxp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.lxp.config.interceptor.CheckUsersInterceptor;
import com.lxp.config.interceptor.LoggerShowInterceptor;

/**
 * @author lxp 多个拦截器组成一个拦截器链
 * @date 2018年9月3日 上午10:43:18
 * @parameter
 * @return
 */
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {

	/**
	 * addPathPatterns 用于添加拦截规则
	 */
	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		// 请求日志输出
		registry.addInterceptor(new LoggerShowInterceptor()).addPathPatterns("/**");

		// 验证用户是否登录，实现用户单一登录问题
		registry.addInterceptor(new CheckUsersInterceptor()).addPathPatterns("/**").excludePathPatterns("/", "/login", "/getYzm");

		super.addInterceptors(registry);

	}

}
