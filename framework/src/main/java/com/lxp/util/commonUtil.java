package com.lxp.util;

import javax.servlet.http.HttpServletRequest;

/**
 * @author lxp
 * @date 2018年8月22日 下午4:32:41
 * @parameter
 * @return
 */
public class commonUtil {

	public static String getIp(HttpServletRequest request) {
		String ip = request.getHeader("X-Forwarded-For");
		if (!StringUtil.StringIfNullOrEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
			int index = ip.indexOf(",");
			if (index != -1) {
				return ip.substring(0, index);
			} else {
				return ip;
			}
		}
		ip = request.getHeader("X-Real-IP");
		if (!StringUtil.StringIfNullOrEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
			return ip;
		}
		return request.getRemoteAddr();
	}

}
