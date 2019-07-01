package com.lxp.config.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.lxp.common.ExceptionEnum;

/**
 * 全局异常处理
 * 
 * @author lxp
 *
 */
@Configuration
public class CommonExceptionAdvice implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest req, HttpServletResponse res, Object obj, Exception e) {
		ModelAndView mav = new ModelAndView();

		// 1 获取错误状态码
		HttpStatus httpStatus = getStatus(req);

		// 2 返回错误提示
		ExceptionEnum ee = getMessage(httpStatus);

		// 3 将错误信息放入mv中
		mav.addObject("type", ee.getType());
		mav.addObject("code", ee.getCode());
		mav.addObject("msg", ee.getMsg());

		return mav;
	}

	private HttpStatus getStatus(HttpServletRequest request) {
		Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
		if (statusCode == null) {
			return HttpStatus.INTERNAL_SERVER_ERROR;
		}

		try {
			return HttpStatus.valueOf(statusCode);
		} catch (Exception ex) {
			return HttpStatus.INTERNAL_SERVER_ERROR;
		}
	}

	private ExceptionEnum getMessage(HttpStatus httpStatus) {
		if (httpStatus.is4xxClientError()) {
			if ("400".equals(HttpStatus.BAD_REQUEST)) {
				return ExceptionEnum.BAD_REQUEST;
			} else if ("403".equals(HttpStatus.FORBIDDEN)) {
				return ExceptionEnum.BAD_REQUEST;
			} else if ("404".equals(HttpStatus.NOT_FOUND)) {
				return ExceptionEnum.NOT_FOUND;
			}
		} else if (httpStatus.is5xxServerError()) {
			if ("500".equals(HttpStatus.INTERNAL_SERVER_ERROR)) {
				return ExceptionEnum.SERVER_EPT;
			}
		}
		// 统一返回：未知错误
		return ExceptionEnum.UNKNOW_ERROR;
	}

}
