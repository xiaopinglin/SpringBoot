package com.lxp.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lxp
 * @date 2018年5月23日 下午2:00:06
 * @parameter
 * @return
 */
public class CookiesUtil {

	/**
	 * 根据名字获取cookie
	 * 
	 * @param request
	 * @param name
	 * @return
	 */
	public static Cookie getCookieByName(HttpServletRequest request, String name) {
		Map<String, Cookie> cookieMap = ReadCookieMap(request);
		if (cookieMap.containsKey(name)) {
			Cookie cookie = (Cookie) cookieMap.get(name);
			return cookie;
		} else {
			return null;
		}
	}

	/**
	 * 将cookie封装到Map里面
	 * 
	 * @param request
	 * @return
	 */
	private static Map<String, Cookie> ReadCookieMap(HttpServletRequest request) {
		Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
		Cookie[] cookies = request.getCookies();
		if (null != cookies) {
			for (Cookie cookie : cookies) {
				cookieMap.put(cookie.getName(), cookie);
			}
		}
		return cookieMap;
	}

	/**
	 * 保存Cookies
	 * 
	 * @param response
	 * @param name
	 * @param value
	 * @param time
	 */
	public static void setCookie(HttpServletResponse response, String name, String value, int time) {

		Cookie cookie = new Cookie(name.trim(), value.trim());
		cookie.setMaxAge(time * 60 * 60 * 24);
		cookie.setPath(null);
		response.addCookie(cookie);
	}

}
