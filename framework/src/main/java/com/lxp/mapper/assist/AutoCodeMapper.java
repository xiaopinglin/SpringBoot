package com.lxp.mapper.assist;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.lxp.model.assist.AutoCode;

/**
 * @author lxp
 * @date 2018年8月24日 上午10:06:08
 * @parameter
 * @return
 */
@Mapper
public interface AutoCodeMapper {

	List<AutoCode> queryAutoCodeByLike(AutoCode autoCode);

	List<AutoCode> getAllTableList();

	List<AutoCode> getColumnByTableName(@Param("tableName") String tableName);

	List<AutoCode> queryAutoCodeSetListByFid(@Param("fid") String fid, @Param("columnGps") String columnGps);

	void saveData(AutoCode sysAutoCode);

	void updateData(AutoCode autoCode);

	void deleteData(@Param("id") String id);

	void deleteAutoCodeSetByFid(@Param("fid") String fid);

	void insertAutoCodeSetData(List<AutoCode> inls);

}
