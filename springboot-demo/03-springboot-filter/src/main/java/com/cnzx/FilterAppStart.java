package com.cnzx;

import com.cnzx.filter.SecondFilter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;


@SpringBootApplication
public class FilterAppStart {

    public static  void main(String[] args){
        SpringApplication.run(FilterAppStart.class,args);
    }

    @Bean
    public FilterRegistrationBean getFilterRegistrationBean() {
        FilterRegistrationBean bean = new FilterRegistrationBean(new SecondFilter());
        bean.addUrlPatterns("/second");
        return bean;
    }
}
