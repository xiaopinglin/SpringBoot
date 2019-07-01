package com.lxp.model;

import java.util.HashMap;
import java.util.Map;

/**
 * @author lxp
 * @date 2018年4月19日 下午3:35:25
 * @parameter
 * @return
 */
public class MemoryData {

	private static Map<String, String> sessionIDMap = new HashMap<String, String>();

	public static Map<String, String> getSessionIDMap() {
		return sessionIDMap;
	}

	public static void setSessionIDMap(Map<String, String> sessionIDMap) {
		MemoryData.sessionIDMap = sessionIDMap;
	}

}
