package com.lxp.util;

import com.lxp.common.Constant;
import com.lxp.common.GenID;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/**
 * ExcelUtil工具类
 * 
 * @author lxp
 * @date 2018年11月19日 下午4:22:19
 * @parameter
 * @return
 */
public class ExcelUtil {

	/**
	 * 读取Excel文件 单个sheet
	 * 
	 * @param file
	 * @return
	 */
	public static JSONObject readExcelToObject(MultipartFile file) {

		JSONObject excelJson = new JSONObject();
		JSONObject titleObj = new JSONObject();
		JSONArray contentJson = new JSONArray();
		try {
			// 1.获取文件流
			InputStream is = file.getInputStream();
			// 2.获取文件名称
			String fileName = file.getOriginalFilename();
			// 3.判断excel版本
			if (fileName.endsWith(".xls")) {
				HSSFWorkbook hwb = new HSSFWorkbook(is);

				// 4.获取第一个sheet
				HSSFSheet sheet = hwb.getSheetAt(0);

				for (int j = 0; j < sheet.getPhysicalNumberOfRows(); j++) {
					// 获取第一行
					HSSFRow row = sheet.getRow(j);
					if (row == null) {
						continue;
					}

					if (j == 0) {
						for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
							HSSFCell cell = row.getCell(k);
							String cellCode = String.valueOf(cell.getColumnIndex());

							String cellName = "";
							if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
								cellName = row.getCell(k).toString();
							} else {
								cellName = "";
							}

							titleObj.put("C" + cellCode, cellName);
						}
					} else {
						JSONObject cellObj = new JSONObject();
						for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
							HSSFCell cell = row.getCell(k);
							String cellCode = String.valueOf(cell.getColumnIndex());
							String cellName = "";
							if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
								cellName = row.getCell(k).toString();
							} else {
								cellName = "";
							}

							cellObj.put("C" + cellCode, cellName);
						}
						contentJson.add(cellObj);
					}

				}
				excelJson.put("sheet", sheet.getSheetName());
				excelJson.put("title", titleObj);
				excelJson.put("content", contentJson);
			} else {
				XSSFWorkbook hwb = new XSSFWorkbook(is);

				// 4.获取第一个sheet
				XSSFSheet sheet = hwb.getSheetAt(0);

				for (int j = 0; j < sheet.getPhysicalNumberOfRows(); j++) {
					// 获取第一行
					XSSFRow row = sheet.getRow(j);
					if (row == null) {
						continue;
					}

					if (j == 0) {
						for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
							XSSFCell cell = row.getCell(k);
							if(!StringUtils.isEmpty(cell)){
								String cellCode = cell.getReference();
								cellCode = cellCode.substring(0, 1);
								String cellName = "";
								if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
									cellName = row.getCell(k).toString();
								} else {
									cellName = "";
								}
								titleObj.put(cellCode, cellName);
							}
						}

					} else {
						JSONObject cellObj = new JSONObject();
						for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
							XSSFCell cell = row.getCell(k);
							if(!StringUtils.isEmpty(cell)){
								String cellCode = cell.getReference();
								cellCode = cellCode.substring(0, 1);

								String cellName = "";
								if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
									cellName = row.getCell(k).toString();
								} else {
									cellName = "";
								}
								cellObj.put(cellCode, cellName);
							}
						}
						contentJson.add(cellObj);
					}

				}
				excelJson.put("sheet", sheet.getSheetName());
				excelJson.put("title", titleObj);
				excelJson.put("content", contentJson);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return excelJson;
	}

	/**
	 * 读取Excel文件 多个sheet
	 * 
	 * @param file
	 * @return
	 */
	public static Map<String, Object> readExcelToMap(MultipartFile file) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			// 1.获取文件流
			InputStream is = file.getInputStream();

			// 2.获取文件名称
			String fileName = file.getOriginalFilename();
			// 3.判断excel版本
			if (fileName.endsWith(".xls")) {

				HSSFWorkbook hwb = new HSSFWorkbook(is);
				if (hwb.getNumberOfSheets() > 0) {
					for (int i = 0; i < hwb.getNumberOfSheets(); i++) {
						HSSFSheet sheet = hwb.getSheetAt(i);

						// 4. 解析Excel内容
						JSONObject excelJson = new JSONObject();
						JSONObject titleObj = new JSONObject();
						JSONArray contentJson = new JSONArray();
						for (int j = 0; j < sheet.getPhysicalNumberOfRows(); j++) {
							// 获取第一行
							HSSFRow row = sheet.getRow(j);
							if (row == null) {
								continue;
							}

							if (j == 0) {
								for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
									HSSFCell cell = row.getCell(k);
									String cellCode = String.valueOf(cell.getColumnIndex());

									String cellName = "";
									if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
										cellName = row.getCell(k).toString();
									} else {
										cellName = "";
									}

									titleObj.put("C" + cellCode, cellName);
								}
							} else {
								JSONObject cellObj = new JSONObject();
								for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
									HSSFCell cell = row.getCell(k);
									String cellCode = String.valueOf(cell.getColumnIndex());

									String cellName = "";
									if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
										cellName = row.getCell(k).toString();
									} else {
										cellName = "";
									}

									cellObj.put("C" + cellCode, cellName);
								}
								contentJson.add(cellObj);
							}

						}
						excelJson.put("sheet", sheet.getSheetName());
						excelJson.put("title", titleObj);
						excelJson.put("content", contentJson);

						map.put(PingYinUtil.getFullSpell(sheet.getSheetName().toUpperCase()), excelJson);
					}
				}
			} else {
				XSSFWorkbook xwb = new XSSFWorkbook(is);
				if (xwb.getNumberOfSheets() > 0) {
					for (int i = 0; i < xwb.getNumberOfSheets(); i++) {
						XSSFSheet sheet = xwb.getSheetAt(i);

						// 4. 解析Excel内容
						JSONObject excelJson = new JSONObject();
						JSONObject titleObj = new JSONObject();
						JSONArray contentJson = new JSONArray();
						for (int j = 0; j < sheet.getPhysicalNumberOfRows(); j++) {
							// 获取第一行
							XSSFRow row = sheet.getRow(j);
							if (row == null) {
								continue;
							}

							if (j == 0) {
								for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
									XSSFCell cell = row.getCell(k);
									String cellCode = cell.getReference();
									cellCode = cellCode.substring(0, 1);

									String cellName = "";
									if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
										cellName = row.getCell(k).toString();
									} else {
										cellName = "";
									}

									titleObj.put(cellCode, cellName);
								}

							} else {
								JSONObject cellObj = new JSONObject();
								for (int k = 0; k < row.getPhysicalNumberOfCells(); k++) {
									XSSFCell cell = row.getCell(k);
									String cellCode = cell.getReference();
									cellCode = cellCode.substring(0, 1);

									String cellName = "";
									if (!StringUtil.StringIfNullOrEmpty(String.valueOf(row.getCell(k)))) {
										cellName = row.getCell(k).toString();
									} else {
										cellName = "";
									}

									cellObj.put(cellCode, cellName);
								}
								contentJson.add(cellObj);
							}

						}
						excelJson.put("sheet", sheet.getSheetName());
						excelJson.put("title", titleObj);
						excelJson.put("content", contentJson);

						map.put(PingYinUtil.getFullSpell(sheet.getSheetName().toUpperCase()), excelJson);
					}
				}
			}
			is.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}

	/**
	 * 写入Excel
	 * 
	 * @param response
	 * @param titles
	 *            标题
	 * @param contents
	 *            内容
	 * @param fileName
	 *            文件名
	 */
	public static void writeExcel(HttpServletResponse response, String[] titles, String[][] contents, String fileName) {
		try {
			// 声明一个工作薄
			XSSFWorkbook workBook = new XSSFWorkbook();
			// 生成一个表格
			XSSFSheet sheet = workBook.createSheet();
			workBook.setSheetName(0, fileName);

			// 创建表格标题行 第一行
			XSSFRow titleRow = sheet.createRow(0);
			for (int i = 0; i < titles.length; i++) {
				titleRow.createCell(i).setCellValue(titles[i]);
			}

			// 填充内容的值
			if (contents != null && contents.length > 0) {
				for (int i = 0; i < contents.length; i++) {
					XSSFRow row = sheet.createRow(i + 1);
					for (int k = 0; k < contents[i].length; k++) {
						XSSFCell cell = row.createCell(k);
						cell.setCellValue(StringUtil.ChangeNullString(contents[i][k]));
					}
				}
			}

			// 导出的文件名称
			if (StringUtil.StringIfNullOrEmpty(fileName)) {
				fileName = GenID.gen(25);
			}

			String newFile = Constant.BATH_PATH + "/" + fileName + ".xlsx";
			File file = new File(newFile);
			if (file.exists()) {
				file.delete();
			}
			FileOutputStream outStream = new FileOutputStream(file);
			workBook.write(outStream);
			outStream.flush();
			outStream.close();

			response.setCharacterEncoding("utf-8");
			response.addHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(fileName, "utf-8") + ".xlsx");
			InputStream is = new FileInputStream(newFile);
			BufferedInputStream bis = new BufferedInputStream(is);
			OutputStream os = response.getOutputStream();
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
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
