package com.lxp.service.assist;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lxp.model.assist.Exam;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;

/**
 * @author lxp
 * @date 2018年11月19日 上午10:19:58
 * @parameter
 * @return
 */
public interface ExamService {

	public Object queryPageInfo(PageBean pageBean, Exam exam);

	public void exportExl(Exam exam, HttpServletRequest req, HttpServletResponse res) throws Exception;

	public Object saveImportAll(HttpServletRequest req) throws Exception;

	public JsonBean cleanAllExam(HttpServletRequest req);

	public List<Exam> getAllNper();

}
