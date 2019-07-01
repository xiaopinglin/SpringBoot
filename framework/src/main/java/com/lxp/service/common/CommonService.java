package com.lxp.service.common;

import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 * @author lxp
 * @date 2018年12月20日 下午4:16:12
 * @parameter
 * @return
 */
public interface CommonService {

	/**
	 * 解析Excel
	 * 
	 * @param req
	 * @return
	 * @throws Exception
	 */
	public Object dealwithExcel(MultipartHttpServletRequest req) throws Exception;
}
