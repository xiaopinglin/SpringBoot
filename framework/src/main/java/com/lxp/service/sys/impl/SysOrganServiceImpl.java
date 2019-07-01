package com.lxp.service.sys.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxp.common.GenID;
import com.lxp.mapper.sys.SysOrganMapper;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.model.sys.SysOrgan;
import com.lxp.service.sys.SysOrganService;

/**
 * @author lxp
 * @date 2018年8月13日 上午10:35:39
 * @parameter
 * @return
 */
@Service
@Transactional
public class SysOrganServiceImpl implements SysOrganService {

	@Autowired
	private SysOrganMapper sysOrganMapper;

	@Override
	public GridBean<SysOrgan> queryPageInfo(PageBean pageBean, SysOrgan sysOrgan) {

		GridBean<SysOrgan> grid = null;
		PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());

		List<SysOrgan> list = sysOrganMapper.querySysOrganByLikes(sysOrgan);
		PageInfo<SysOrgan> pageInfo = new PageInfo<>(list);
		grid = new GridBean<>();
		grid.setData(pageInfo.getList());
		grid.setCount(pageInfo.getTotal());

		return grid;
	}

	@Override
	public List<SysOrgan> querySysOrganByLikes(SysOrgan sysOrgan) throws Exception {
		return sysOrganMapper.querySysOrganByLikes(sysOrgan);
	}

	@Override
	public List<SysOrgan> querySysOrganByEquals(SysOrgan sysOrgan) throws Exception {
		return sysOrganMapper.querySysOrganByEquals(sysOrgan);
	}

	@Override
	public SysOrgan getMaxSysOrganCode() throws Exception {
		return sysOrganMapper.getMaxSysOrganCode();
	}

	@Override
	public SysOrgan getSysOrganOrgSid() throws Exception {
		return sysOrganMapper.getSysOrganOrgSid();
	}

	@Override
	public Object saveData(String cmd, SysOrgan sysOrgan) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {

				// 判断编码重复
				SysOrgan so = new SysOrgan();
				so.setOrgCode(sysOrgan.getOrgCode());
				List<SysOrgan> ls = sysOrganMapper.querySysOrganByEquals(so);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统编码重复！");
					return Json;
				}

				// 判断名称是否重复
				so = new SysOrgan();
				so.setOrgName(sysOrgan.getOrgName());
				List<SysOrgan> ls2 = sysOrganMapper.querySysOrganByEquals(so);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统名称重复！");
					return Json;
				}

				// 获取排序号
				SysOrgan organ = sysOrganMapper.getSysOrganOrgSid();
				if (organ != null) {
					sysOrgan.setOrgSid(organ.getOrgSid() + 1);
				} else {
					sysOrgan.setOrgSid(1);
				}

				sysOrgan.setOrgId(GenID.gen(32));
				sysOrgan.setCreator("admin");
				sysOrgan.setCreateTime(new Date());
				sysOrganMapper.insertSysOrganData(sysOrgan);

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
				return Json;
			} else if ("U".equals(cmd)) {
				// 判断编码重复
				SysOrgan so = new SysOrgan();
				so.setOrgId(sysOrgan.getOrgId());
				so.setOrgCode(sysOrgan.getOrgCode());
				List<SysOrgan> ls = sysOrganMapper.querySysOrganByEquals(so);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统编码重复！");
					return Json;
				}

				// 判断名称是否重复
				so = new SysOrgan();
				so.setOrgId(sysOrgan.getOrgId());
				so.setOrgName(sysOrgan.getOrgName());
				List<SysOrgan> ls2 = sysOrganMapper.querySysOrganByEquals(so);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("系统名称重复！");
					return Json;
				}

				sysOrgan.setUpdator("admin");
				sysOrgan.setUpdateTime(new Date());
				sysOrganMapper.updateSysOrganData(sysOrgan);
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
			SysOrgan so = new SysOrgan();
			so.setOrgId(id);
			List<SysOrgan> sysOrgans = sysOrganMapper.querySysOrganByLikes(so);
			if (sysOrgans.size() > 0) {
				so = sysOrgans.get(0);
				sysOrganMapper.deleteSysOrganData(so.getOrgId());

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
