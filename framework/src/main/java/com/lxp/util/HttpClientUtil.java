package com.lxp.util;

import java.io.IOException;
import java.net.URI;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;

import net.sf.json.JSONObject;

public class HttpClientUtil {
	protected static Logger logger = Logger.getLogger(HttpClientUtil.class);

	/**
	 * HttpPost
	 * 
	 * @param url
	 * @param Params
	 * @return
	 * @throws IOException
	 */
	public static String HttpPost(String url, JSONObject Json) throws IOException {
		// 创建httpclient对象
		CloseableHttpClient httpClient = null;
		// 创建post方式请求对象
		HttpPost httpPost = null;

		String result = null;
		try {
			httpClient = HttpClients.createDefault();
			httpPost = new HttpPost(url);

			// 填装参数
			StringEntity entity = new StringEntity(Json.toString(), "UTF-8");
			httpPost.setEntity(entity);

			// 设置header信息
			// 指定报文头【Content-type】、【User-Agent】
			httpPost.setHeader("Content-type", "application/json");
			httpPost.setHeader("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");

			// 执行请求操作，并拿到结果（同步阻塞）
			CloseableHttpResponse response = httpClient.execute(httpPost);
			if (response != null) {
				HttpEntity resEntity = response.getEntity();
				if (resEntity != null) {
					result = EntityUtils.toString(resEntity, "UTF-8");
				}
				EntityUtils.consume(resEntity);

				// 释放链接
				response.close();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return result;
	}

	public static String httpGet(String url, Map<String, String> param) throws IOException {
		CloseableHttpClient httpclient = HttpClients.createDefault();
		String result = "";
		CloseableHttpResponse response = null;
		try {
			URIBuilder builder = new URIBuilder(url);
			if (param != null) {
				for (String key : param.keySet()) {
					builder.addParameter(key, param.get(key));
				}
			}
			URI uri = builder.build();

			// 创建http GET请求
			HttpGet httpGet = new HttpGet(uri);

			// 执行请求
			response = httpclient.execute(httpGet);
			// 判断返回状态是否为200
			if (response.getStatusLine().getStatusCode() == 200) {
				result = EntityUtils.toString(response.getEntity(), "UTF-8");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (response != null) {
					response.close();
				}
				httpclient.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return result;

	}

	public static void main(String[] args) throws IOException {

		String url = "http://192.168.18.35:8020/jfmp/statement/bankWaterMatch/dropDownList";

		JSONObject params = new JSONObject();

		System.out.println("返回加密结果：" + HttpPost(url, params));

	}
}