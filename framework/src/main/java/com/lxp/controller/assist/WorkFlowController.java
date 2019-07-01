package com.lxp.controller.assist;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author lxp
 * @date 2018年11月22日 上午9:30:04
 * @parameter
 * @return
 */
@Controller
@RequestMapping("/ass/workflow")
public class WorkFlowController {

	@RequestMapping("/main")
	public ModelAndView gotoMain(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/pages/assist/workflow/ass_workflow_main");
		return mav;
	}

}
