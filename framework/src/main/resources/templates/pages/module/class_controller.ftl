package ${packagePath!}.controller.${moduleMath!};

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
import com.lxp.service.assist.AutoCodeService;;

import ${packagePath!}.model.${moduleMath!}.${ChangetableCode!}

/**
  * 描述：${tableComment!}控制器
  * @author ${author!}
  * @date ${curDate!}
  */
@Controller
@RequestMapping("/${moduleMath?uncap_first}/${ChangetableCode?uncap_first}")
public class ${ChangetableCode!}Controller {

    @Autowired
    private ${ChangetableCode!}Service ${ChangetableCode?uncap_first}Service;

	@RequestMapping("/main")
	public ModelAndView gotoMain(HttpServletRequest req) throws Exception {
		ModelAndView model = new ModelAndView();
		model.setViewName("${data.mainPath!}");
		return model;
	}
    
	@ResponseBody
	@RequestMapping("/list")
	public Object queryList(PageBean pageBean, ${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception {
		return ${ChangetableCode?uncap_first}Service.queryPageInfo(pageBean, ${ChangetableCode?uncap_first});
	}
	
	
	@RequestMapping("/edit")
	public ModelAndView gotoEdit(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView model = new ModelAndView();
		
		String id = req.getParameter("id");
		String cmd = req.getParameter("cmd");
		
		if ("U".equals(cmd)) {
			${ChangetableCode!} ${ChangetableCode?uncap_first} = new ${ChangetableCode!}();
			${ChangetableCode?uncap_first}.setId(id);
			
			List<${ChangetableCode!}> ls = ${ChangetableCode?uncap_first}Service.query${ChangetableCode!}ByLike(${ChangetableCode?uncap_first});
			if (ls.size() > 0) {
				${ChangetableCode?uncap_first} = ls.get(0);
			}
			model.addObject("${ChangetableCode?uncap_first}", ${ChangetableCode?uncap_first});
		}else{
			${ChangetableCode!} ${ChangetableCode?uncap_first} = new ${ChangetableCode!}();
			model.addObject("${ChangetableCode?uncap_first}", ${ChangetableCode?uncap_first});
		}
		
		model.addObject("cmd", cmd);
		model.setViewName("${data.editPath!}");
		return model;
	}

	@ResponseBody
	@RequestMapping("/save")
	public Json saveData(HttpServletRequest req) throws Exception {
		
		String cmd = req.getParameter("cmd");
		String data = req.getParameter("data");
		
		ObjectMapper mapper = new ObjectMapper();
		${ChangetableCode!} ${ChangetableCode?uncap_first} = mapper.readValue(data.getBytes(), ${ChangetableCode!}.class);

		return ${ChangetableCode?uncap_first}Service.saveData(cmd, ${ChangetableCode?uncap_first});
	}
	
	@ResponseBody
	@RequestMapping("/del")
	public Json deleteData(HttpServletRequest req) throws Exception {
		return ${ChangetableCode?uncap_first}Service.deleteData(req.getParameter("id"));
	}

    
}