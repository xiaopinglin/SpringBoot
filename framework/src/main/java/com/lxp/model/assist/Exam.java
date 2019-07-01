package com.lxp.model.assist;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author lxp
 * @date 2018年9月3日 下午2:48:27
 * @parameter
 * @return
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Exam implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private String nper;
	private String type;
	private String title;
	private String xa;
	private String xb;
	private String xc;
	private String xd;
	private String xe;
	private String da;
	private Integer sn;

}
