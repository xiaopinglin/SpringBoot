package com.lxp.service.sys.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxp.common.GenID;
import com.lxp.mapper.sys.SysResourcesMapper;
import com.lxp.mapper.sys.SysSystemMapper;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysSystem;
import com.lxp.service.sys.SysSystemService;

/**
 * @author lxp
 * @date 2018年7月20日 上午10:24:55
 * @parameter
 * @return
 */
@Service
@Transactional
public class SysSystemServiceImpl implements SysSystemService {

	@Autowired
	private SysSystemMapper sysSystemMapper;

	@Autowired
	private SysResourcesMapper sysResourcesMapper;

	@Override
	public GridBean<SysSystem> queryPageInfo(PageBean pageBean, SysSystem sysSystem) throws Exception {

		GridBean<SysSystem> grid = null;
		PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());

		List<SysSystem> list = sysSystemMapper.querySysSystemByLikes(sysSystem);
		PageInfo<SysSystem> pageInfo = new PageInfo<>(list);
		grid = new GridBean<>();
		grid.setData(pageInfo.getList());
		grid.setCount(pageInfo.getTotal());

		return grid;
	}

	@Override
	public List<SysSystem> querySysSystemByLikes(SysSystem sysSystem) throws Exception {
		return sysSystemMapper.querySysSystemByLikes(sysSystem);
	}

	@Override
	public List<SysSystem> querySysSystemByEquals(SysSystem sysSystem) throws Exception {
		return sysSystemMapper.querySysSystemByEquals(sysSystem);
	}

	@Override
	public SysSystem getMaxSysSystemCode() throws Exception {
		return sysSystemMapper.getMaxSysSystemCode();
	}

	@Override
	public Object saveData(String cmd, SysSystem sysSystem) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {

				// 判断编码重复
				SysSystem sst = new SysSystem();
				sst.setSysName(sysSystem.getSysCode());
				List<SysSystem> ls = sysSystemMapper.querySysSystemByEquals(sst);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sst = new SysSystem();
				sst.setSysName(sysSystem.getSysName());
				List<SysSystem> ls2 = sysSystemMapper.querySysSystemByEquals(sst);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统名称重复！");
					return Json;
				}

				// 获取排序号
				SysSystem system = sysSystemMapper.getSysSystemSysSid();
				if (system != null) {
					sysSystem.setSysSid(system.getSysSid() + 1);
				} else {
					sysSystem.setSysSid(1);
				}

				sysSystem.setSysId(GenID.gen(32));
				sysSystem.setCreator("admin");
				sysSystem.setCreateTime(new Date());
				sysSystemMapper.insertSysSystemData(sysSystem);

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
				return Json;
			} else if ("U".equals(cmd)) {
				// 判断编码重复
				SysSystem sst = new SysSystem();
				sst.setSysId(sysSystem.getSysId());
				sst.setSysName(sysSystem.getSysCode());
				List<SysSystem> ls = sysSystemMapper.querySysSystemByEquals(sst);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统编码重复！");
					return Json;
				}

				// 判断名称是否重复
				sst = new SysSystem();
				sst.setSysId(sysSystem.getSysId());
				sst.setSysName(sysSystem.getSysName());
				List<SysSystem> ls2 = sysSystemMapper.querySysSystemByEquals(sst);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统名称重复！");
					return Json;
				}

				sysSystem.setUpdator("admin");
				sysSystem.setUpdateTime(new Date());
				sysSystemMapper.updateSysSystemData(sysSystem);
				Json.setSuccess(true);
				Json.setMsg("提交成功！");
				return Json;
			}

		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
			return Json;

		}
		return Json;
	}

	@Override
	public Object deleteData(String id) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			SysSystem ss = new SysSystem();
			ss.setSysId(id);
			List<SysSystem> systems = sysSystemMapper.querySysSystemByLikes(ss);
			if (systems.size() > 0) {
				ss = systems.get(0);
				// 删除系统
				sysSystemMapper.deleteSysSystemData(ss.getSysId());

				// 删除系统下的资源
				sysResourcesMapper.deleteSysResourcesResDataBySysId(ss.getSysId());

				// 删除已经配置的资源权限

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
