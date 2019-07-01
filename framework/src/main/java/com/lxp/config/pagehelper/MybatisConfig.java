package com.lxp.config.pagehelper;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.pagehelper.PageHelper;

/**
 * 
 * 注册MyBatis分页插件PageHelper
 * 
 * @author lxp
 * @date 2018年11月19日 上午11:44:42
 * @parameter
 * @return
 */
@Configuration
public class MybatisConfig {

	@Bean
	public PageHelper pageHelper() {
		PageHelper pageHelper = new PageHelper();
		Properties p = new Properties();
		p.setProperty("offsetAsPageNum", "true");
		p.setProperty("rowBoundsWithCount", "true");
		p.setProperty("reasonable", "true");
		pageHelper.setProperties(p);
		return pageHelper;
	}

}
