package ${packagePath!}.model.${moduleMath!};

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;

/**
  * 描述：${tableComment!}模型
  * @author ${author!}
  * @date ${curDate!}
  */
public class ${ChangetableCode!} {

<#if model_column??>
<#list model_column as model>
<#if (model.columnType = 'VARCHAR2' || model.columnType = 'TEXT' || model.columnType = 'VARCHAR' || model.columnType = 'CHAR')>
	private String ${model.changecolumnCode!}; // ${model.columnName!}
</#if>
<#if (model.columnType = 'NUMBER' || model.columnType = 'INTEGER')>
	private Integer ${model.changecolumnCode!}; // ${model.columnName!}
</#if>
<#if model.columnType = 'TIMESTAMP' || model.columnType ='DATE' >
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
    private Date ${model.changecolumnCode!}; // ${model.columnName!}
</#if>
</#list>
</#if>

<#if model_column??>
<#list model_column as model>
<#if (model.columnType = 'VARCHAR2' || model.columnType = 'TEXT' || model.columnType = 'VARCHAR' || model.columnType = 'CHAR')>
    public String get${model.changecolumnCode?cap_first}() {
        return this.${model.changecolumnCode!};
    }

    public void set${model.changecolumnCode?cap_first}(String ${model.changecolumnCode!}) {
        this.${model.changecolumnCode!} = ${model.changecolumnCode!};
    }
</#if>
<#if (model.columnType = 'NUMBER' || model.columnType = 'INTEGER')>
	public Integer get${model.changecolumnCode?cap_first}() {
        return this.${model.changecolumnCode!};
    }

    public void set${model.changecolumnCode?cap_first}(Integer ${model.changecolumnCode!}) {
        this.${model.changecolumnCode!} = ${model.changecolumnCode!};
    }
</#if>
<#if model.columnType = 'TIMESTAMP' || model.columnType ='DATE' >
    public Date get${model.changecolumnCode?cap_first}() {
        return this.${model.changecolumnCode!};
    }

    public void set${model.changecolumnCode?cap_first}(Date ${model.changecolumnCode!}) {
        this.${model.changecolumnCode!} = ${model.changecolumnCode!};
    }
</#if>
</#list>
</#if>
}