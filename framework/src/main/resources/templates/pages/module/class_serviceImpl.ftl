package ${packagePath}.service.impl.${moduleMath};

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxp.common.GenID;
import com.lxp.mapper.sys.SysNoticeMapper;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.util.StringUtil;

import ${packagePath!}.model.${moduleMath!}.${ChangetableCode!};
import ${packagePath!}.service.${moduleMath!}.${ChangetableCode!}Service;


/**
  * 描述：${tableComment}接口服务的实现
  * @author ${author}
  * @date ${curDate}
  */
@Service
@Transactional
public class ${ChangetableCode!}ServiceImpl implements ${ChangetableCode!}Service {

   
	@Autowired
	private ${ChangetableCode!}Mapper ${ChangetableCode?uncap_first}Mapper;
	
	@Override
	public Grid<${ChangetableCode!}> queryPageInfo(PageBean pageBean, ${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception {
		Grid<${ChangetableCode!}> grid = null;
		try {
			PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());
			List<${ChangetableCode!}> list = ${ChangetableCode?uncap_first}Mapper.query${ChangetableCode!}ByLike(${ChangetableCode?uncap_first});
			PageInfo<${ChangetableCode!}> pageInfo = new PageInfo<>(list);
			grid = new Grid<>();
			grid.setData(pageInfo.getList());
			grid.setCount(pageInfo.getTotal());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return grid;
	}
	
	@Override
	public List<${ChangetableCode!}> query${ChangetableCode!}ByLike(${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception {
		return ${ChangetableCode?uncap_first}Mapper.query${ChangetableCode!}ByLike(${ChangetableCode?uncap_first});
	}

	@Override
	public List<${ChangetableCode!}> query${ChangetableCode!}ByEqual(${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception {
		return ${ChangetableCode?uncap_first}Mapper.query${ChangetableCode!}ByEqual(${ChangetableCode?uncap_first});
	}
	
	
	@Override
	public Object saveData(String cmd, ${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {
				${ChangetableCode?uncap_first}.setId(GenID.gen(32));
				${ChangetableCode?uncap_first}Mapper.insertData(${ChangetableCode?uncap_first});

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
			} else if ("U".equals(cmd)) {
				${ChangetableCode?uncap_first}Mapper.updateData(${ChangetableCode?uncap_first});
				
				Json.setSuccess(true);
				Json.setMsg("提交成功！");
			} else {
				Json.setSuccess(false);
				Json.setMsg("提交失败！");
			}
			return Json;
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
			return Json;
		}
	}
	
	@Override
	public Object deleteData(String id) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if (!StringUtil.StringIfNullOrEmpty(id)) {
				${ChangetableCode?uncap_first}Mapper.deleteData(id);
				Json.setSuccess(true);
			} else {
				Json.setSuccess(false);
				Json.setMsg("数据异常！");
			}
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return Json;
	}

}