package com.lxp.service.sys;

import java.util.List;

import com.lxp.model.common.GridBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysNotice;

/**
 * @author lxp
 * @date 2018年8月21日 下午4:16:55
 * @parameter
 * @return
 */
public interface SysNoticeService {

	GridBean<SysNotice> queryPageInfo(PageBean pageBean, SysNotice sysNotice) throws Exception;

	List<SysNotice> queryAllSysNotices(SysNotice sysNotice) throws Exception;

	Object getShowNotice() throws Exception;

	Object saveData(String cmd, SysNotice sysNotice) throws Exception;

	Object deleteData(String ntId) throws Exception;

}
