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
 * @date 2018年7月18日 上午11:32:34
 * @parameter
 * @return
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class SysResources implements Serializable {

	private static final long serialVersionUID = 1L;
	private String resId;
	private String resCode;
	private String resName;
	private String resPid;
	private String resPname;
	private String resUrl;
	private String resStatus;
	private String resIcon;
	private String resIfChild;
	private String resType;
	private Integer resSid;
	private String sysId;
	private String resRemark;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
	private Date createTime;
	private String creator;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", locale = "zh", timezone = "GMT+8")
	private Date updateTime;
	private String updator;

}
