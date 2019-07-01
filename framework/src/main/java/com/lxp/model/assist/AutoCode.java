package com.lxp.model.assist;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class AutoCode implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private String moduleName;
	private String moduleMath;
	private String packagePath;
	private String tableCode;
	private String tableName;
	private String queryColumn;
	private String listColumn;
	private String editColumn;
	private String mainPath;
	private String editPath;
	private String columnGps;
	private String columnCode;
	private String columnType;
	private String columnFlag;
	private String columnList;
	private String fid;
	private String changecolumnCode;
	private String columnName;
	private String columnIfnull;

}