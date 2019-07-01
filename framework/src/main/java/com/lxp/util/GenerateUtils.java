package com.lxp.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.lxp.model.assist.AutoCode;

import freemarker.template.Template;

public class GenerateUtils {

	private static String packagePath = "";
	private static String moduleMath = "";
	private static String tableCode = "";
	private static String ChangetableCode = "";
	private static String tableComment = "";
	private static String diskPath = "D://autocode//";

	public static void generate(AutoCode autoCode, List<AutoCode> saclist, List<AutoCode> setlist) throws Exception {
		try {
			// 生成Model文件
			generateFileByTemplate("class_model.ftl", ".java", autoCode, saclist);

			// 生成Controller文件
			// generateFileByTemplate("class_controller.ftl", "Controller.java",
			// autoCode, saclist);

			// 生成Service文件
			// generateFileByTemplate("class_service.ftl", "Service.java",
			// autoCode, saclist);

			// 生成ServiceImpl文件
			// generateFileByTemplate("class_serviceImpl.ftl",
			// "ServiceImpl.java", autoCode, saclist);

			// 生成Mapper.java文件
			// generateFileByTemplate("class_mapper.ftl", "Mapper.java",
			// autoCode, saclist);

			// 生成Mapper.xml文件
			// generateFileByTemplate("xml_mapper.ftl", "Mapper.xml", autoCode,
			// saclist);

			// 生成main.html文件
			// generateFileByTemplate("html_main.ftl", "_main.html", autoCode,
			// saclist);

			// 生成edit.html文件
			// generateFileByTemplate("html_edit.ftl", "_edit.html", autoCode,
			// saclist);

		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {

		}
	}

	private static void generateFileByTemplate(String templateName, String suffix, AutoCode autoCode, List<AutoCode> saclist) throws Exception {

		packagePath = StringUtil.StringIfNullOrEmpty(autoCode.getPackagePath()) ? "com.lxp" : autoCode.getPackagePath();
		moduleMath = StringUtil.StringIfNullOrEmpty(autoCode.getModuleMath()) ? "sys" : autoCode.getModuleMath();
		tableCode = StringUtil.StringIfNullOrEmpty(autoCode.getTableCode()) ? "dual" : autoCode.getTableCode();
		ChangetableCode = replaceUnderLineAndUpperCase(tableCode);
		tableComment = saclist.get(0).getTableName();

		File filePath = new File(diskPath);
		if (!filePath.exists()) {
			filePath.mkdir();
		}

		Map<String, Object> dataMap = new HashMap<>();
		// 包路径 eg:com.zhph
		dataMap.put("packagePath", packagePath);

		// 包路径 eg:代码生成器
		dataMap.put("moduleName", autoCode.getModuleName());

		// 模块缩写 eg:sys
		dataMap.put("moduleMath", moduleMath);

		// 表名称 eg:SYS_AUTO_CODE
		dataMap.put("tableCode", tableCode);

		// 表名称转化 eg: SysAutoCode
		dataMap.put("ChangetableCode", ChangetableCode);

		// 表名称注解 eg:代码自动生成器
		dataMap.put("tableComment", tableComment);

		// 作者
		dataMap.put("author", "admin");

		// 当前日期
		dataMap.put("curDate", DateUtil.parseDateFormat(new Date(), "yyyy-MM-DD"));

		// 代码生成器对象
		dataMap.put("data", autoCode);

		// 查询项，转化
		String queryCulmun = autoCode.getQueryColumn();
		String[] qls = queryCulmun.split(",");
		String changeQueryCulmun = "";
		for (int i = 0; i < qls.length; i++) {
			changeQueryCulmun = changeQueryCulmun + replaceUnderLineAndLowCase(qls[i]) + ",";
		}
		dataMap.put("queryCulmun", queryCulmun);
		dataMap.put("changequeryCulmun", changeQueryCulmun);

		// 列表项,转化
		String listCulmun = autoCode.getListColumn();
		String[] lls = listCulmun.split(",");
		String changeListCulmun = "";
		for (int i = 0; i < lls.length; i++) {
			changeListCulmun = changeListCulmun + replaceUnderLineAndLowCase(lls[i]) + ",";
		}
		dataMap.put("listCulmun", listCulmun);
		dataMap.put("changeListCulmun", changeListCulmun);

		// 编辑项，转化
		String editCulmun = autoCode.getEditColumn();
		String[] els = editCulmun.split(",");
		String changeEditCulmun = "";
		for (int i = 0; i < els.length; i++) {
			changeEditCulmun = changeEditCulmun + replaceUnderLineAndLowCase(els[i]) + ",";
		}
		dataMap.put("editCulmun", editCulmun);
		dataMap.put("changeEditCulmun", changeEditCulmun);

		List<AutoCode> changesacList = new ArrayList<AutoCode>();
		if (saclist.size() > 0) {
			for (AutoCode ss : saclist) {
				AutoCode obj = new AutoCode();
				obj.setColumnCode(ss.getColumnCode());
				obj.setChangecolumnCode(replaceUnderLineAndLowCase(ss.getColumnCode()));
				obj.setColumnName(ss.getColumnName());
				obj.setColumnType(ss.getColumnType().toUpperCase());

				changesacList.add(obj);
			}
		}
		dataMap.put("model_column", changesacList);

		// 文件路径
		String path = "";
		if (templateName.indexOf("html") > -1) {
			path = diskPath + ChangetableCode + suffix;
		} else {
			path = diskPath + ChangetableCode + suffix;
		}

		File mapperFile = new File(path);
		FileOutputStream fos = new FileOutputStream(mapperFile);

		Writer out = new BufferedWriter(new OutputStreamWriter(fos, "utf-8"), 10240);
		Template template = TemplateUtils.getTemplate(templateName);
		template.process(dataMap, out);
	}

	// 用 _分割的字符首席字母大写
	public static String replaceUnderLineAndUpperCase(String str) {
		StringBuffer sb = new StringBuffer();
		String[] arr = str.split("_");
		if (arr.length > 0) {
			for (int i = 0; i < arr.length; i++) {
				String s1 = arr[i];
				sb.append(s1.substring(0, 1).toUpperCase() + s1.substring(1).toLowerCase());
			}
		}

		return sb.toString();
	}

	// 去除_分割的字符第一个首席字母
	public static String replaceUnderLineAndLowCase(String str) {
		StringBuffer sb = new StringBuffer();
		if (str.indexOf("_") > -1) {
			String[] arr = str.split("_");
			if (arr.length > 0) {
				for (int i = 0; i < arr.length; i++) {
					String s1 = arr[i];
					if (i <= 0) {
						sb.append(s1.toLowerCase());
					} else {
						sb.append(s1.substring(0, 1).toUpperCase() + s1.substring(1).toLowerCase());
					}
				}
			}
		} else {
			sb.append(str);
		}
		return sb.toString();
	}

}