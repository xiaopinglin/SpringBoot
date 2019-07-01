package com.lxp.service.assist;

import java.util.List;

import com.lxp.model.assist.AutoCode;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;

/**
 * @author lxp
 * @date 2018年8月24日 上午10:08:11
 * @parameter
 * @return
 */
public interface AutoCodeService {

	public GridBean<AutoCode> queryPageInfo(PageBean pageBean, AutoCode autoCode) throws Exception;

	public List<AutoCode> queryAutoCodeByLike(AutoCode autoCode) throws Exception;

	public List<AutoCode> getAllTableList() throws Exception;

	public List<AutoCode> queryAutoCodeSetListByFid(String fid, String pgs);

	public Object getColumnByTableName(String tableName) throws Exception;

	public JsonBean saveData(String cmd, AutoCode autoCode, String setJson) throws Exception;

	public JsonBean deleteData(String id) throws Exception;

	public JsonBean rebuildData(String id) throws Exception;

}
