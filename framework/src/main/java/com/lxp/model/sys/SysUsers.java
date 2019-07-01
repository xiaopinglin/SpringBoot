package com.lxp.model.sys;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author lxp
 * @date 2018年7月3日 上午9:54:26
 * @parameter
 * @return
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class SysUsers implements Serializable {

	private static final long serialVersionUID = 1L;
	private String userId;
	private String userCode;
	private String userName;
	private String userAccount;
	private String userPwd;
	private String userPwdBak;
	private String userMobile;
	private String userEmail;
	private String userStatus;
	private String orgId;
	private String orgName;
	private String deptId;
	private String deptName;
	private String userRemark;
	private String lastLoginIp;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
	private Date lastLoginTime;
	private String ifDelete;
	private String ifAdmin;
	private Integer errorNum;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
	private Date createTime;
	private String creator;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
	private Date updateTime;
	private String updator;

	private String id;
	private String resId;
	private String roleId;

}
