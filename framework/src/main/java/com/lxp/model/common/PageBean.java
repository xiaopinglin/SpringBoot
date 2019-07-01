package com.lxp.model.common;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author lxp
 * @date 2018年7月20日 下午5:05:23
 * @parameter
 * @return
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class PageBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer limit = 10;// 每页显示条数
	private Integer page = 1;// 当前页数
	private String sort = "id";
	private String order = "asc";// asc/desc
	private Integer rows = 10;

}
