package com.lxp.service.sys.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxp.mapper.sys.SysResourcesMapper;
import com.lxp.mapper.sys.SysSystemMapper;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.NavBean;
import com.lxp.model.sys.SysResources;
import com.lxp.model.sys.SysSystem;
import com.lxp.service.sys.SysResourcesService;
import com.lxp.util.TreeBuilder;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年7月16日 上午10:52:27
 * @parameter
 * @return
 */
@Service
@Transactional
public class SysResourcesServiceImpl implements SysResourcesService {

	@Autowired
	private SysSystemMapper sysSystemMapper;

	@Autowired
	private SysResourcesMapper SysResourcesMapper;

	@Override
	public Object getResourcesTree() throws Exception {
		JSONArray arr = new JSONArray();

		// 获取系统
		List<SysSystem> sys_ls = sysSystemMapper.querySysSystemByLikes(new SysSystem());
		if (sys_ls.size() > 0) {
			for (SysSystem ss : sys_ls) {
				JSONObject obj = new JSONObject();
				obj.put("id", ss.getSysCode());
				obj.put("name", ss.getSysName());
				obj.put("pId", "0");
				obj.put("open", true);

				obj.put("type", "0"); // "0" 系统 "1" 资源，"2" 按钮
				obj.put("ifChild", "0");
				obj.put("resId", ss.getSysId());
				obj.put("sysId", ss.getSysId());
				obj.put("nodeObj", "null");

				arr.add(obj);
			}
		}
		// 获取菜单
		List<SysResources> res_ls = SysResourcesMapper.querySysResourcesByLikes(new SysResources());
		if (res_ls.size() > 0) {
			for (SysResources sr : res_ls) {
				JSONObject obj = new JSONObject();
				obj.put("id", sr.getResCode());
				obj.put("name", sr.getResName());
				obj.put("pId", sr.getResPid());
				obj.put("open", false);

				obj.put("type", sr.getResType()); // "0" 系统 "1" 资源，"2" 按钮
				obj.put("ifChild", sr.getResIfChild());
				obj.put("resId", sr.getResId());
				obj.put("sysId", sr.getSysId());
				obj.put("nodeObj", sr);
				arr.add(obj);
			}
		}
		return arr.toString();
	}

	@Override
	public Object getMenus() throws Exception {
		JSONObject sys_obj = new JSONObject();
		// 获取系统
		List<SysSystem> sys_ls = sysSystemMapper.querySysSystemByLikes(new SysSystem());
		if (sys_ls.size() > 0) {
			for (SysSystem ss : sys_ls) {
				String sysCode = ss.getSysCode();
				// 根据sysId获取系统资源
				List<NavBean> nav_ls = new ArrayList<NavBean>();
				SysResources sr = new SysResources();
				sr.setSysId(ss.getSysId());
				sr.setResType("1");
				sr.setResStatus("1");
				List<SysResources> res_ls = SysResourcesMapper.querySysResourcesByLikes(sr);
				for (SysResources sysResources : res_ls) {
					NavBean nb = new NavBean();
					nb.setId(sysResources.getResCode());
					nb.setTitle(sysResources.getResName());
					nb.setPId(sysResources.getResPid());
					nb.setIcon(sysResources.getResIcon());
					nb.setHref(sysResources.getResUrl());
					nav_ls.add(nb);
				}
				sys_obj.put(sysCode, JSONArray.fromObject(new TreeBuilder().buildTree(nav_ls)));
			}
		}
		return sys_obj;
	}

	@Override
	public List<SysResources> querySysResourcesByLikes(SysResources sysResources) throws Exception {
		return SysResourcesMapper.querySysResourcesByLikes(sysResources);
	}

	@Override
	public List<SysResources> querySysResourcesByEquals(SysResources sysResources) throws Exception {
		return SysResourcesMapper.querySysResourcesByEquals(sysResources);
	}

	@Override
	public SysResources getMaxSysResourcesCode() throws Exception {
		return SysResourcesMapper.getMaxSysResourcesCode();
	}

	@Override
	public Object saveData(String cmd, SysResources sysResources) {
		JsonBean Json = new JsonBean();
		try {
			if ("A".equals(cmd)) {

				// 判断编码重复
				SysResources ssr = new SysResources();
				ssr.setResCode(sysResources.getResCode());
				List<SysResources> ls = SysResourcesMapper.querySysResourcesByEquals(ssr);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("资源编码重复！");
					return Json;
				}

				// 判断名称是否重复
				ssr = new SysResources();
				ssr.setResName(sysResources.getResName());
				ssr.setResPid(sysResources.getResPid());
				List<SysResources> ls2 = SysResourcesMapper.querySysResourcesByEquals(ssr);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("资源名称重复！");
					return Json;
				}

				// 获取排序号
				SysResources ssd = SysResourcesMapper.getSysResourcesSidByResPid(sysResources.getResPid());
				if (ssd != null) {
					sysResources.setResSid(ssd.getResSid() + 1);
				} else {
					sysResources.setResSid(1);
				}

				sysResources.setCreator("admin");
				sysResources.setCreateTime(new Date());
				SysResourcesMapper.insertSysResourcesData(sysResources);

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
				return Json;
			} else if ("U".equals(cmd)) {
				// 判断编码重复
				SysResources ssr = new SysResources();
				ssr.setResId(sysResources.getResId());
				ssr.setResCode(sysResources.getResCode());
				List<SysResources> ls = SysResourcesMapper.querySysResourcesByEquals(ssr);
				if (ls.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("资源编码重复！");
					return Json;
				}

				// 判断名称是否重复
				ssr = new SysResources();
				ssr.setResId(sysResources.getResId());
				ssr.setResName(sysResources.getResName());
				ssr.setResPid(sysResources.getResPid());
				List<SysResources> ls2 = SysResourcesMapper.querySysResourcesByEquals(ssr);
				if (ls2.size() > 0) {
					Json.setSuccess(false);
					Json.setMsg("资源名称重复！");
					return Json;
				}

				sysResources.setUpdator("admin");
				sysResources.setUpdateTime(new Date());
				SysResourcesMapper.updateSysResourcesData(sysResources);
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
			/**
			 * mysql 需要用到函数，oracle 直接用 start with....connect by ... prio
			 */

			// 删除当前资源
			SysResourcesMapper.deleteSysResourcesResData(id);

			// 删除下级资源

			// 删除已经配置的资源权限

			Json.setSuccess(true);
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return Json;
	}

	@Override
	public Object rearrange() throws Exception {
		JsonBean Json = new JsonBean();
		List<SysResources> res_ls = SysResourcesMapper.getAllResPidSysResources();
		if (res_ls.size() > 0) {
			for (SysResources sysResources : res_ls) {
				// 对象只有一个字段所有无需重新自定义SysResources
				List<SysResources> ls = SysResourcesMapper.querySysResourcesByEquals(sysResources);
				if (ls.size() > 0) {
					int i = 1;
					for (SysResources ssr : ls) {
						SysResourcesMapper.updateSysResourcesSidByResId(String.valueOf(i++), ssr.getResId());
					}
				}
			}
		}
		Json.setSuccess(true);
		return Json;
	}

	@Override
	public Object moveUpAnddown(HttpServletRequest req) throws Exception {
		JsonBean json = new JsonBean();
		json.setSuccess(true);

		String resId = req.getParameter("id");
		SysResources cur_ssr = new SysResources();
		cur_ssr.setResId(resId);
		List<SysResources> ls = SysResourcesMapper.querySysResourcesByLikes(cur_ssr);
		if (ls.size() > 0) {
			cur_ssr = ls.get(0);
		}

		String sid = cur_ssr.getResSid().toString();
		String pid = cur_ssr.getResPid().toString();
		String flag = req.getParameter("flag");
		if ("1".equals(flag)) {
			// 下移 根据查询大于sid的排序
			List<SysResources> sid_ls = SysResourcesMapper.getSysResourcesBySidAndPid(sid, pid);
			if (sid_ls.size() > 0) {
				SysResources next_ssr = new SysResources();
				next_ssr = sid_ls.get(0);

				// 更新当前节点
				SysResourcesMapper.updateSysResourcesSidByResId(String.valueOf(next_ssr.getResSid()), cur_ssr.getResId());

				// 替换节点
				SysResourcesMapper.updateSysResourcesSidByResId(String.valueOf(sid), next_ssr.getResId());

				json.setSuccess(true);
				json.setObj(next_ssr);
			} else {
				json.setSuccess(false);
				json.setMsg("无法移动，已经是末节点了！");
			}
		} else if ("2".equals(flag)) {
			// 上移 根据查询小于sid的排序
			List<SysResources> sid_ls = SysResourcesMapper.getSysResourcesBySidAndPidDesc(sid, pid);
			if (sid_ls.size() > 0) {
				SysResources next_ssr = new SysResources();
				next_ssr = sid_ls.get(0);

				// 更新当前节点
				SysResourcesMapper.updateSysResourcesSidByResId(String.valueOf(next_ssr.getResSid()), cur_ssr.getResId());

				// 替换节点
				SysResourcesMapper.updateSysResourcesSidByResId(sid, next_ssr.getResId());

				json.setSuccess(true);
				json.setObj(next_ssr);
			} else {
				json.setSuccess(false);
				json.setMsg("无法移动，已经是首节点了！");
			}
		} else {
			json.setSuccess(false);
			json.setMsg("数据错误");
		}
		return json;
	}

}
