package com.lxp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author lxp
 * @date 2018年6月19日 上午11:33:15
 * @parameter
 * @return
 */
@EnableSwagger2
@SpringBootApplication
public class AppStart {

	public static void main(String[] args) {
		SpringApplication.run(AppStart.class, args);
	}
}
