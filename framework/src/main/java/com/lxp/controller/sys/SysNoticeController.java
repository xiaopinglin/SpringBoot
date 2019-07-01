package com.lxp.controller.sys;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysNotice;
import com.lxp.service.sys.SysNoticeService;

/**
 * @author lxp
 * @date 2018年8月21日 下午4:36:17
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/sys/notice")
public class SysNoticeController {

	@Autowired
	private SysNoticeService sysNoticeService;

	@RequestMapping("/main")
	public ModelAndView gotoMain(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView model = new ModelAndView();
		model.setViewName("/pages/sys/notice/sys_notice_main");
		return model;
	}

	@ResponseBody
	@RequestMapping("/list")
	public Object queryList(PageBean pageBean, SysNotice sysNotice) throws Exception {
		return sysNoticeService.queryPageInfo(pageBean, sysNotice);
	}

	@RequestMapping("/edit")
	public ModelAndView gotoEdit(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView model = new ModelAndView();
		String cmd = req.getParameter("cmd");
		String id = req.getParameter("id");

		if ("A".equals(cmd)) {
			SysNotice sysNotice = new SysNotice();
			model.addObject("sysNotice", sysNotice);
		} else if ("U".equals(cmd)) {
			SysNotice sysNotice = new SysNotice();
			sysNotice.setNtId(id);
			List<SysNotice> so_ls = sysNoticeService.queryAllSysNotices(sysNotice);
			if (so_ls.size() > 0) {
				sysNotice = so_ls.get(0);
			}
			model.addObject("sysNotice", sysNotice);
		}

		model.addObject("cmd", cmd);
		model.setViewName("/pages/sys/notice/sys_notice_edit");
		return model;
	}

	@ResponseBody
	@RequestMapping("/save")
	public Object saveData(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String cmd = req.getParameter("cmd");
		String data = req.getParameter("data");

		ObjectMapper mapper = new ObjectMapper();
		SysNotice sysNotice = mapper.readValue(data.getBytes(), SysNotice.class);
		return sysNoticeService.saveData(cmd, sysNotice);
	}

	@ResponseBody
	@RequestMapping("/del")
	public Object delData(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysNoticeService.deleteData(req.getParameter("id"));
	}

	@ResponseBody
	@RequestMapping("/getShowNotice")
	public Object getShowNotice(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		return sysNoticeService.getShowNotice();
	}

}
