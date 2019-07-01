package com.lxp.model.common;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author lxp
 * @date 2018年7月20日 下午5:05:50
 * @parameter
 * @return
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class GridBean<T> implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer code = 0;
	private Long count = 1L;
	private List<T> data = new ArrayList<T>();

}
