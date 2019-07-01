package com.lxp.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import freemarker.template.Template;

/**
 * @author lxp
 * @date 2018年12月25日 上午10:31:55
 * @parameter
 * @return
 */
public class WordUtil {

	private static String diskPath = "D://autocode//";

	public static void exportWord(HttpServletRequest req, HttpServletResponse res, Map<String, Object> dataMap, String fileName, String templateName) throws Exception {

		File filePath = new File(diskPath);
		if (!filePath.exists()) {
			filePath.mkdir();
		}

		// 文件路径
		String path = diskPath + PingYinUtil.getFullSpell(fileName).toLowerCase() + ".doc";
		File mapperFile = new File(path);
		FileOutputStream fos = new FileOutputStream(mapperFile);

		Writer out = new BufferedWriter(new OutputStreamWriter(fos, "utf-8"), 10240);
		Template template = TemplateUtils.getTemplate(templateName);
		template.process(dataMap, out);

		res.setCharacterEncoding("utf-8");
		res.addHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(fileName, "utf-8") + ".doc");
		InputStream is = new FileInputStream(mapperFile);
		BufferedInputStream bis = new BufferedInputStream(is);
		OutputStream os = res.getOutputStream();
		BufferedOutputStream bos = new BufferedOutputStream(os);

		int read;
		byte[] bytes = new byte[8072];
		while ((read = bis.read(bytes, 0, bytes.length)) != -1) {
			bos.write(bytes, 0, read);
		}
		bos.flush();
		bos.close();
		bis.close();
		is.close();
		os.close();
	}

}
