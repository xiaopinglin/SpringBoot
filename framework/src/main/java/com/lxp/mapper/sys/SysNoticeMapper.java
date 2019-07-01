package com.lxp.mapper.sys;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.lxp.model.sys.SysNotice;

/**
 * @author lxp
 * @date 2018年8月21日 下午4:04:06
 * @parameter
 * @return
 */
@Mapper
public interface SysNoticeMapper {

	List<SysNotice> queryAllSysNotices(SysNotice sysNotice);

	void insertSysNotice(SysNotice sysNotice);

	void updateSysNotice(SysNotice sysNotice);

	void deleteSysNotice(@Param("ntId") String ntId);

}
