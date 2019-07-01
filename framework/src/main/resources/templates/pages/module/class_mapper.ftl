package ${packagePath}.mapper.${moduleMath};

import java.util.List;
import org.apache.ibatis.annotations.Param;

import ${packagePath!}.model.${moduleMath!}.${ChangetableCode!}

/**
  * 描述：${tableComment} 底层接口
  * @author ${author}
  * @date ${curDate}
  */
public interface ${ChangetableCode!}Mapper {

	 List<${ChangetableCode!}> query${ChangetableCode!}ByLike(${ChangetableCode!} ${ChangetableCode?uncap_first});

	 List<${ChangetableCode!}> query${ChangetableCode!}ByEqual(${ChangetableCode!} ${ChangetableCode?uncap_first});

	 void insertData(${ChangetableCode!} ${ChangetableCode?uncap_first});

	 void updateData(${ChangetableCode!} ${ChangetableCode?uncap_first});

	 void deleteData(@Param("id") String id);
}