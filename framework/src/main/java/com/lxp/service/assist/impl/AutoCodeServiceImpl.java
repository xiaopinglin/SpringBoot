package com.lxp.service.assist.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lxp.common.GenID;
import com.lxp.mapper.assist.AutoCodeMapper;
import com.lxp.model.assist.AutoCode;
import com.lxp.model.common.GridBean;
import com.lxp.model.common.JsonBean;
import com.lxp.model.common.PageBean;
import com.lxp.service.assist.AutoCodeService;
import com.lxp.util.GenerateUtils;
import com.lxp.util.StringUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author lxp
 * @date 2018年8月24日 上午10:08:28
 * @parameter
 * @return
 */
@Service
@Transactional
public class AutoCodeServiceImpl implements AutoCodeService {

	@Autowired
	private AutoCodeMapper autoCodeMapper;

	@Override
	public GridBean<AutoCode> queryPageInfo(PageBean pageBean, AutoCode autoCode) throws Exception {

		GridBean<AutoCode> grid = null;
		PageHelper.startPage(pageBean.getPage(), pageBean.getLimit());

		List<AutoCode> list = autoCodeMapper.queryAutoCodeByLike(autoCode);
		PageInfo<AutoCode> pageInfo = new PageInfo<>(list);
		grid = new GridBean<>();
		grid.setData(pageInfo.getList());
		grid.setCount(pageInfo.getTotal());

		return grid;
	}

	@Override
	public List<AutoCode> queryAutoCodeByLike(AutoCode autoCode) throws Exception {
		return autoCodeMapper.queryAutoCodeByLike(autoCode);
	}

	@Override
	public List<AutoCode> getAllTableList() throws Exception {
		return autoCodeMapper.getAllTableList();
	}

	@Override
	public List<AutoCode> queryAutoCodeSetListByFid(String fid, String gps) {
		return autoCodeMapper.queryAutoCodeSetListByFid(fid, gps);
	}

	@Override
	public JsonBean saveData(String cmd, AutoCode autoCode, String setJson) throws Exception {
		JsonBean Json = new JsonBean();

		String fid = "";
		try {
			if ("A".equals(cmd)) {
				fid = GenID.gen(32);
				autoCode.setId(fid);
				autoCodeMapper.saveData(autoCode);

				List<AutoCode> sacList = autoCodeMapper.getColumnByTableName(autoCode.getTableCode());
				if (sacList.size() > 0) {
					GenerateUtils.generate(autoCode, sacList, autoCodeMapper.queryAutoCodeSetListByFid(fid, ""));
				}

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
			} else if ("U".equals(cmd)) {
				fid = autoCode.getId();
				autoCodeMapper.updateData(autoCode);

				List<AutoCode> sacList = autoCodeMapper.getColumnByTableName(autoCode.getTableCode());
				if (sacList.size() > 0) {
					GenerateUtils.generate(autoCode, sacList, autoCodeMapper.queryAutoCodeSetListByFid(fid, ""));
				}

				Json.setSuccess(true);
				Json.setMsg("提交成功！");
			} else {
				Json.setSuccess(false);
				Json.setMsg("提交失败！");
			}

			if (Json.isSuccess()) {
				// 处理字段设置表 先删除
				autoCodeMapper.deleteAutoCodeSetByFid(fid);

				// 保存
				List<AutoCode> inls = new ArrayList<AutoCode>();
				JSONArray Json_arr = new JSONArray();
				Json_arr = JSONArray.fromObject(setJson);
				if (Json_arr.size() > 0) {
					for (int i = 0; i < Json_arr.size(); i++) {
						JSONObject obj = JSONObject.fromObject(Json_arr.getString(i));
						Iterator<String> it = obj.keys();
						while (it.hasNext()) {
							String key = it.next();
							String val = obj.getString(key);

							String[] arr = key.split("_");
							if (arr.length > 1) {
								AutoCode ac = new AutoCode();
								ac.setId(GenID.gen(32));
								ac.setColumnGps(arr[0]);
								ac.setColumnCode(arr[1]);
								ac.setFid(fid);
								if (!StringUtil.StringIfNullOrEmpty(val)) {
									JSONObject val_obj = JSONObject.fromObject(val);
									ac.setColumnName(val_obj.getString("columnName"));
									ac.setColumnType(val_obj.getString("columnType"));
									ac.setColumnFlag(val_obj.getString("columnFlag"));
									ac.setColumnList(val_obj.getString("columnList"));
								}
								inls.add(ac);
							}
						}
					}
				}
				if (inls.size() > 0) {
					autoCodeMapper.insertAutoCodeSetData(inls);
				}
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
	public JsonBean deleteData(String id) throws Exception {
		JsonBean Json = new JsonBean();
		try {
			if (!StringUtil.StringIfNullOrEmpty(id)) {
				autoCodeMapper.deleteData(id);
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

		if (Json.isSuccess()) {
			autoCodeMapper.deleteAutoCodeSetByFid(id);
		}
		return Json;
	}

	@Override
	public Object getColumnByTableName(String tableName) throws Exception {
		JsonBean json = new JsonBean();
		JSONArray arr = new JSONArray();
		try {
			List<AutoCode> ls = autoCodeMapper.getColumnByTableName(tableName);
			if (ls.size() > 0) {
				for (AutoCode autoCode : ls) {
					JSONObject obj = new JSONObject();
					obj.put("name", autoCode.getColumnName());
					obj.put("value", autoCode.getColumnCode());
					obj.put("selected", "");
					obj.put("disabled", "");

					arr.add(obj);
				}
			}

			JSONObject rs = new JSONObject();
			if (arr.size() > 0) {
				rs.put("arr", arr);
			}

			json.setSuccess(true);
			json.setObj(rs);
		} catch (Exception e) {
			json.setMsg(e.getMessage());
			json.setSuccess(false);
			json.setObj(null);
		}
		return json;
	}

	@Override
	public JsonBean rebuildData(String id) throws Exception {
		JsonBean json = new JsonBean();
		try {
			AutoCode autoCode = new AutoCode();
			autoCode.setId(id);
			List<AutoCode> ls = autoCodeMapper.queryAutoCodeByLike(autoCode);
			if (ls.size() > 0) {
				List<AutoCode> sacList = autoCodeMapper.getColumnByTableName(ls.get(0).getTableCode());
				if (sacList.size() > 0) {
					GenerateUtils.generate(ls.get(0), sacList, autoCodeMapper.queryAutoCodeSetListByFid(id, ""));
				}
			}
			json.setSuccess(true);
			json.setMsg("生成成功！");
		} catch (Exception e) {
			json.setSuccess(false);
			json.setMsg("生成失败！");
		}
		return json;
	}

}
