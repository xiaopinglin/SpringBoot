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
 * @date 2018年8月13日 上午10:15:52
 * @parameter
 * @return
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class SysOrgan implements Serializable {

	private static final long serialVersionUID = 1L;
	private String orgId;
	private String orgCode;
	private String orgName;
	private String orgStatus;
	private String orgRemark;
	private Integer orgSid;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
	private Date createTime;
	private String creator;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
	private Date updateTime;
	private String updator;

}
