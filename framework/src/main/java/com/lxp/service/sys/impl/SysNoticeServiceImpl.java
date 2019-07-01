package com.lxp.service.sys.impl;

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
import com.lxp.model.sys.SysNotice;
import com.lxp.service.sys.SysNoticeService;
import com.lxp.util.StringUtil;

/**
 * @author lxp
 * @date 2018年8月21日 下午4:35:28
 * @parameter
 * @return
 */
@Service
@Transactional
public class SysNoticeServiceImpl implements SysNoticeService {

	@Autowired
	private SysNoticeMapper sysNoticeMapper;

	@Override
	public GridBean<SysNotice> queryPageInfo(PageBean pageBean, SysNotice sysNotice) throws Exception {
		GridBean<SysNotice> grid = null;
		PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());

		List<SysNotice> list = sysNoticeMapper.queryAllSysNotices(sysNotice);
		PageInfo<SysNotice> pageInfo = new PageInfo<>(list);
		grid = new GridBean<>();
		grid.setData(pageInfo.getList());
		grid.setCount(pageInfo.getTotal());

		return grid;
	}

	@Override
	public List<SysNotice> queryAllSysNotices(SysNotice sysNotice) throws Exception {
		return sysNoticeMapper.queryAllSysNotices(sysNotice);
	}

	@Override
	public Object getShowNotice() throws Exception {
		String content = "";
		List<SysNotice> ls = sysNoticeMapper.queryAllSysNotices(new SysNotice());
		if (ls.size() > 0) {
			SysNotice sysNotice = ls.get(0);
			content = sysNotice.getNtContent();
		} else {
			content = "暂无公告";
		}

		return content;
	}

	@Override
	public Object saveData(String cmd, SysNotice sysNotice) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {
				sysNotice.setNtId(GenID.gen(32));
				sysNotice.setCreator("admin");
				sysNotice.setCreateTime(new Date());
				sysNoticeMapper.insertSysNotice(sysNotice);

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
			} else if ("U".equals(cmd)) {
				sysNotice.setUpdator("admin");
				sysNotice.setUpdateTime(new Date());
				sysNoticeMapper.updateSysNotice(sysNotice);

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
	public Object deleteData(String ntId) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if (!StringUtil.StringIfNullOrEmpty(ntId)) {
				sysNoticeMapper.deleteSysNotice(ntId);
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
