package com.lxp.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.lxp.model.common.JsonBean;
import com.lxp.service.sys.SysResourcesService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * @author lxp
 * @date 2018年10月18日 下午5:23:02
 * @parameter
 * @return
 */
@RestController
@Api
@RequestMapping(value = "api")
public class TestApiControllor {

	@Autowired
	private SysResourcesService sysResourcesService;

	@ApiOperation(value = "获取用户列表", notes = "根据查询条件获取用户列表")
	@RequestMapping(value = "selectSysUersList", method = RequestMethod.POST)
	public ResponseEntity<JsonBean> selectSysUersList() {
		JsonBean Json = new JsonBean();

		return ResponseEntity.ok(Json);
	}

	@ApiOperation(value = "获取系统菜单", notes = "根据用户权限获取菜单")
	@RequestMapping(value = "getMenus", method = RequestMethod.POST)
	public ResponseEntity<JsonBean> getMenus() {
		JsonBean Json = new JsonBean();

		try {
			Object obj = sysResourcesService.getMenus();
			Json.setSuccess(true);
			Json.setObj(obj);
		} catch (Exception e) {
			Json.setSuccess(false);
			Json.setMsg("获取失败");
			Json.setObj(e.getMessage());
		}
		return ResponseEntity.ok(Json);
	}

}
