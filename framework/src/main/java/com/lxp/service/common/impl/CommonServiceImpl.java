package com.lxp.service.common.impl;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.lxp.model.common.JsonBean;
import com.lxp.service.common.CommonService;
import com.lxp.util.ExcelUtil;
import com.lxp.util.StringUtil;

/**
 * @author lxp
 * @date 2018年12月20日 下午4:18:44
 * @parameter
 * @return
 */
@Service
public class CommonServiceImpl implements CommonService {

	@Override
	public Object dealwithExcel(MultipartHttpServletRequest req) throws Exception {
		JsonBean Json = new JsonBean();
		Json.setSuccess(true);
		if (req.getFileMap() != null && req.getFileMap().size() != 0) {
			for (Map.Entry<String, MultipartFile> me : req.getFileMap().entrySet()) {
				MultipartFile file = me.getValue();

				// 获取文件名
				String fileName = file.getOriginalFilename();
				if (!StringUtil.StringIfNullOrEmpty(fileName)) {
					String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
					if (!"xls".equals(suffix) && !"xlsx".equals(suffix)) {
						Json.setSuccess(false);
						Json.setMsg("导入的文件格式不正确，请导入正确的Excel文件");
						break;
					}
				}

				Json.setSuccess(true);
				Json.setObj(ExcelUtil.readExcelToObject(file));
			}
		} else {
			Json.setSuccess(false);
			Json.setMsg("获取附件异常，请重新选择。");
		}

		return Json;
	}

}
