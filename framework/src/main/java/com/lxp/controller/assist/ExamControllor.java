package com.lxp.controller.assist;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lxp.model.assist.Exam;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.service.assist.ExamService;

/**
 * @author lxp
 * @date 2018年11月19日 上午10:17:13
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/ass/exam")
public class ExamControllor {

	@Autowired
	private ExamService examService;

	@RequestMapping("/main")
	public ModelAndView gotoMain(HttpServletRequest req) throws Exception {
		ModelAndView model = new ModelAndView();

		// 获取期数下拉
		List<Exam> list = examService.getAllNper();
		model.addObject("nperList", list);
		model.setViewName("/pages/assist/exam/ass_exam_main");
		return model;
	}

	@ResponseBody
	@RequestMapping("/list")
	public Object queryList(PageBean pageBean, Exam exam) throws Exception {
		return examService.queryPageInfo(pageBean, exam);
	}

	@RequestMapping("/export")
	public void exportExl(HttpServletRequest req, HttpServletResponse res, Exam exam) throws Exception {
		examService.exportExl(exam, req, res);
	}

	@ResponseBody
	@RequestMapping("/saveImport")
	public Object saveImport(HttpServletRequest req) throws Exception {
		return examService.saveImportAll(req);
	}

	@ResponseBody
	@RequestMapping("/clean")
	public JsonBean cleanAllExam(HttpServletRequest req) throws Exception {
		return examService.cleanAllExam(req);
	}

}
