package com.lxp;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

/**
 * @author lxp
 * @date 2018年10月18日 下午5:18:46
 * @parameter
 * @return
 */
@Configuration
public class Swagger2 {

	@Bean
	public Docket createRestApi() {
		return new Docket(DocumentationType.SWAGGER_2).apiInfo(apiInfo()).select().apis(RequestHandlerSelectors.basePackage("com.lxp.api")).paths(PathSelectors.any()).build();
	}

	private ApiInfo apiInfo() {
		return new ApiInfoBuilder().title("springboot利用swagger构建api文档").description("简单优雅的restfun风格，http://127.0.0.1/swagger-ui.html").termsOfServiceUrl("http://127.0.0.1/swagger-ui.html").version("1.0").build();
	}

}
