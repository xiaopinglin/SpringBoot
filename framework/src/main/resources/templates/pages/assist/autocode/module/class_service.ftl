package ${packagePath}.service.${moduleMath};

import java.util.List;

import com.lxp.model.common.GridBean;
import com.lxp.model.common.PageBean;

import ${packagePath!}.model.${moduleMath!}.${ChangetableCode!}

/**
  * 描述：${tableComment}接口服务
  * @author ${author}
  * @date ${curDate}
  */
public interface ${ChangetableCode!}Service{

	 Grid<${ChangetableCode!}> queryPageInfo(PageBean pageBean,  ${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception;

	 List<${ChangetableCode!}> query${ChangetableCode!}ByLike(${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception;

	 List<${ChangetableCode!}> query${ChangetableCode!}ByEqual(${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception;

	 Object saveData(String cmd, ${ChangetableCode!} ${ChangetableCode?uncap_first}) throws Exception;

	 Object deleteData(String id) throws Exception;
	
}