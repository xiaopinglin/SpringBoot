package com.lxp.model.common;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author lxp
 * @date 2018年7月20日 下午5:04:23
 * @parameter
 * @return
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class JsonBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private boolean success;
	private String msg;
	private Object obj;

}
