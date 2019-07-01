package com.lxp.model.common;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author lxp
 * @date 2018年7月24日 上午11:40:48
 * @parameter
 * @return
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class NavBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	private String pId;
	private String title;
	private String icon;
	private String href;
	private boolean spread;
	private List<NavBean> children;

}
