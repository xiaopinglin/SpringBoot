package com.cnzx;

import com.cnzx.listener.SecondListener;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class ListenerAppStart {

    public static  void main(String[] args){
        SpringApplication.run(ListenerAppStart.class,args);
    }

    @Bean
    public ServletListenerRegistrationBean<SecondListener> getServletListenerRegistrationBean() {
        ServletListenerRegistrationBean<SecondListener> bean = new ServletListenerRegistrationBean(new SecondListener());
        return bean;
    }
}
