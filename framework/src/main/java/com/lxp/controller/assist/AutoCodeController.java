package com.lxp.controller.assist;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lxp.model.assist.AutoCode;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.service.assist.AutoCodeService;

/**
 * @author lxp
 * @date 2018年8月24日 上午10:04:33
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/ass/autocode")
public class AutoCodeController {

	@Autowired
	private AutoCodeService autoCodeService;

	@RequestMapping("/main")
	public ModelAndView gotoMain(HttpServletRequest req) throws Exception {
		ModelAndView model = new ModelAndView();
		model.setViewName("/pages/assist/autocode/ass_autocode_main");

		return model;
	}

	@ResponseBody
	@RequestMapping("/list")
	public Object queryList(PageBean pageBean, AutoCode autoCode) throws Exception {
		return autoCodeService.queryPageInfo(pageBean, autoCode);
	}

	@RequestMapping("/edit")
	public ModelAndView gotoEdit(HttpServletRequest req) throws Exception {
		ModelAndView model = new ModelAndView();
		String cmd = req.getParameter("cmd");
		String id = req.getParameter("id");

		// 获取所有表
		List<AutoCode> tables = autoCodeService.getAllTableList();
		model.addObject("tables", tables);

		if ("A".equals(cmd)) {
			AutoCode autoCode = new AutoCode();
			model.addObject("autoCode", autoCode);

		} else if ("U".equals(cmd)) {
			AutoCode autoCode = new AutoCode();
			autoCode.setId(id);
			List<AutoCode> so_ls = autoCodeService.queryAutoCodeByLike(autoCode);
			if (so_ls.size() > 0) {
				autoCode = so_ls.get(0);
			}
			model.addObject("autoCode", autoCode);

			model.addObject("querySets", autoCodeService.queryAutoCodeSetListByFid(autoCode.getId(), "1"));
			model.addObject("listSets", autoCodeService.queryAutoCodeSetListByFid(autoCode.getId(), "2"));
			model.addObject("editSets", autoCodeService.queryAutoCodeSetListByFid(autoCode.getId(), "3"));
		}

		model.addObject("cmd", cmd);
		model.setViewName("/pages/assist/autocode/ass_autocode_edit");
		return model;
	}

	@ResponseBody
	@RequestMapping("/save")
	public JsonBean saveData(HttpServletRequest req) throws Exception {
		String cmd = req.getParameter("cmd");
		String data = req.getParameter("data");
		String setJson = req.getParameter("setJson");

		ObjectMapper mapper = new ObjectMapper();
		AutoCode autoCode = mapper.readValue(data.getBytes(), AutoCode.class);
		return autoCodeService.saveData(cmd, autoCode, setJson);
	}

	@ResponseBody
	@RequestMapping("/del")
	public JsonBean delData(HttpServletRequest req) throws Exception {
		return autoCodeService.deleteData(req.getParameter("id"));
	}

	@ResponseBody
	@RequestMapping("/getColumn")
	public Object getColumn(HttpServletRequest req) throws Exception {
		return autoCodeService.getColumnByTableName(req.getParameter("tableName"));
	}

	@ResponseBody
	@RequestMapping("/rebuild")
	public JsonBean rebuild(HttpServletRequest req) throws Exception {
		return autoCodeService.rebuildData(req.getParameter("id"));
	}
}
