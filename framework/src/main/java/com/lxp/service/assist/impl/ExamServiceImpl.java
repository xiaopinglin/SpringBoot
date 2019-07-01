package com.lxp.service.assist.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxp.common.GenID;
import com.lxp.mapper.assist.ExamMapper;
import com.lxp.model.assist.Exam;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.service.assist.ExamService;
import com.lxp.util.ExcelUtil;
import com.lxp.util.StringUtil;
import com.lxp.util.WordUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年11月19日 上午10:22:18
 * @parameter
 * @return
 */
@Service
@Transactional
public class ExamServiceImpl implements ExamService {

	@Autowired
	private ExamMapper examMapper;

	@Override
	public List<Exam> getAllNper() {
		return examMapper.getAllNper();
	}

	@Override
	public Object queryPageInfo(PageBean pageBean, Exam exam) {
		GridBean<Exam> grid = new GridBean<>();
		PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());

		List<Exam> list = examMapper.queryExamByLike(exam);
		PageInfo<Exam> pageInfo = new PageInfo<>(list);
		grid.setData(pageInfo.getList());
		grid.setCount(pageInfo.getTotal());

		return grid;
	}

	@Override
	public void exportExl(Exam exam, HttpServletRequest req, HttpServletResponse res) throws Exception {

		String exportflag = req.getParameter("exportflag");

		List<Exam> list = examMapper.queryExamByLike(exam);
		if ("2".equals(exportflag)) {
			String fileName = "";
			Map<String, Object> dataMap = new HashMap<>();
			if (list.size() > 0) {
				Exam ex = list.get(0);
				fileName = ex.getNper();

				if (StringUtil.StringIfNullOrEmpty(fileName)) {
					fileName = "考试题库";
				}
			}

			dataMap.put("dataList", list);
			WordUtil.exportWord(req, res, dataMap, fileName, "word_export.ftl");

		} else {
			String[] colTitleAry = { "序号", "类型", "标题", "选项A", "选项B", "选项C", "选项D", "选项E", "答案" };
			String fileName = "";
			String[][] colDataAray = {};

			if (list.size() > 0) {
				colDataAray = new String[list.size()][colTitleAry.length];
				for (int i = 0; i < list.size(); i++) {
					Exam ex = list.get(i);
					fileName = ex.getNper();
					colDataAray[i][0] = String.valueOf(i + 1);
					colDataAray[i][1] = StringUtil.ChangeNullString(list.get(i).getType());
					colDataAray[i][2] = StringUtil.ChangeNullString(list.get(i).getTitle());
					colDataAray[i][3] = StringUtil.ChangeNullString(list.get(i).getXa());
					colDataAray[i][4] = StringUtil.ChangeNullString(list.get(i).getXb());
					colDataAray[i][5] = StringUtil.ChangeNullString(list.get(i).getXc());
					colDataAray[i][6] = StringUtil.ChangeNullString(list.get(i).getXd());
					colDataAray[i][7] = StringUtil.ChangeNullString(list.get(i).getXe());
					colDataAray[i][8] = StringUtil.ChangeNullString(list.get(i).getDa());
				}
			}

			if ("".equals(fileName)) {
				fileName = "考试题库";
			}

			ExcelUtil.writeExcel(res, colTitleAry, colDataAray, fileName);
		}

	}

	@Override
	public Object saveImportAll(HttpServletRequest req) throws Exception {
		JsonBean Json = new JsonBean();
		Json.setSuccess(true);

		String nper = req.getParameter("nper");
		String data = req.getParameter("data");

		if (!StringUtil.StringIfNullOrEmpty(nper)) {
			nper = nper.substring(0, nper.lastIndexOf("."));
		}

		JSONArray arr = JSONArray.fromObject(data);
		List<Exam> list = new ArrayList<>();
		if (arr.size() > 0) {
			for (int i = 0; i < arr.size(); i++) {
				JSONObject obj = JSONObject.fromObject(arr.get(i));
				Exam exam = new Exam();
				exam.setId(GenID.gen(32));
				exam.setSn(i + 1);
				exam.setNper(nper);
				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("A")))) {
					exam.setType(obj.getString("A"));
				}

				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("B")))) {
					exam.setTitle(obj.getString("B"));
				}

				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("C")))) {
					exam.setXa(obj.getString("C"));
				}

				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("D")))) {
					exam.setXb(obj.getString("D"));
				}

				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("E")))) {
					exam.setXc(obj.getString("E"));
				}

				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("F")))) {
					exam.setXd(obj.getString("F"));
				}

				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("G")))) {
					exam.setXe(obj.getString("G"));
				}

				if (!StringUtil.StringIfNullOrEmpty(String.valueOf(obj.get("H")))) {
					exam.setDa(obj.getString("H"));
				}

				list.add(exam);
			}
		}

		examMapper.insertExamBylist(list);

		return Json;
	}

	@Override
	public JsonBean cleanAllExam(HttpServletRequest req) {
		JsonBean Json = new JsonBean();
		try {

			String nper = req.getParameter("nper");
			examMapper.cleanAllExam(nper);
			Json.setSuccess(true);
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return Json;
	}

}
