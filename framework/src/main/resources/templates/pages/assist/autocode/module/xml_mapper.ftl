<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${packagePath!}.mapper.${moduleMath!}.${ChangetableCode!}Mapper">
	<resultMap id="BaseResultMap" type="${packagePath!}.model.${moduleMath!}.${ChangetableCode!}">
		<#if model_column??>
		<#list model_column as model>
		<#if (model.columnType = 'VARCHAR2' || model.columnType = 'TEXT' || model.columnType = 'VARCHAR' || model.columnType = 'CHAR')>
		<#if (model.columnCode = 'ID' || model.columnCode = 'id')>
		<id column="${model.columnCode!}" property="${model.changecolumnCode!}" jdbcType="VARCHAR" />
		<#else>
		<result column="${model.columnCode!}" property="${model.changecolumnCode!}" jdbcType="VARCHAR" />	
		</#if>
		</#if>
		<#if (model.columnType = 'NUMBER' || model.columnType = 'INTEGER')>
		<#if (model.columnCode = 'ID' || model.columnCode = 'id')>
		<id column="${model.columnCode!}" property="${model.changecolumnCode!}" jdbcType="BIGINT" />
		<#else>
		<result column="${model.columnCode!}" property="${model.changecolumnCode!}" jdbcType="BIGINT" />	
		</#if>
		</#if>
		<#if model.columnType = 'TIMESTAMP' || model.columnType ='DATE' >
		<result column="${model.columnCode!}" property="${model.changecolumnCode!}" jdbcType="TIMESTAMP" />
		</#if>
		</#list>
		</#if>
	</resultMap>
	
	<select id="query${ChangetableCode!}ByLike" parameterType="${packagePath!}.model.${moduleMath!}.${ChangetableCode!}" resultMap="BaseResultMap">
		select w.* from  ${tableCode!} w 
		<where>
			<if test="id!=null and id!='' ">
				AND w.id = <#noparse>#{id}</#noparse> 
			</if>
		<#if changequeryCulmun?exists>
		<#if model_column?exists>
		<#list model_column as model>
	 	<#if changequeryCulmun?index_of(model.changecolumnCode!) != -1> 
		<#if (model.columnType = 'VARCHAR2' || model.columnType = 'TEXT' || model.columnType = 'VARCHAR' || model.columnType = 'CHAR')>
			<if test="${model.changecolumnCode!}!=null and ${model.changecolumnCode!}!='' ">
				AND w.${model.columnCode!} like CONCAT('%',<#noparse>#{${model.changecolumnCode!}}</#noparse>,'%') 
			</if>
		</#if>
		<#if (model.columnType = 'NUMBER' || model.columnType = 'INTEGER')>
			<if test="${model.changecolumnCode!}!=null and ${model.changecolumnCode!}!='' ">
				AND w.${model.columnCode!} = <#noparse>#{${model.changecolumnCode!}}</#noparse>
			</if>
		</#if>
		<#if model.columnType = 'TIMESTAMP' || model.columnType ='DATE' >
			<if test="${model.changecolumnCode!}!=null">
				<![CDATA[ AND w.${model.columnCode!} = <#noparse>#{${model.changecolumnCode!}}</#noparse> ]]>
			</if>
		</#if>			
		</#if>
		</#list>
		</#if>
		</#if>
		</where>
	</select>
	
	<select id="query${ChangetableCode!}ByEqual" parameterType="${packagePath!}.model.${moduleMath!}.${ChangetableCode!}" resultMap="BaseResultMap">
		select w.* from  ${tableCode!} w 
		<where>
			<if test="id!=null and id!='' ">
				AND w.id != <#noparse>#{id}</#noparse> 
			</if>
		<#if changequeryCulmun?exists>
		<#if model_column?exists>
		<#list model_column as model>
	 	<#if changequeryCulmun?index_of(model.changecolumnCode!) != -1> 
		<#if (model.columnType = 'VARCHAR2' || model.columnType = 'TEXT' || model.columnType = 'VARCHAR' || model.columnType = 'CHAR')>
			<if test="${model.changecolumnCode!}!=null and ${model.changecolumnCode!}!='' ">
				AND w.${model.columnCode!} = <#noparse>#{${model.changecolumnCode!}}</#noparse> 
			</if>
		</#if>
		<#if (model.columnType = 'NUMBER' || model.columnType = 'INTEGER')>
			<if test="${model.changecolumnCode!}!=null and ${model.changecolumnCode!}!='' ">
				AND w.${model.columnCode!} = <#noparse>#{${model.changecolumnCode!}}</#noparse>
			</if>
		</#if>
		<#if model.columnType = 'TIMESTAMP' || model.columnType ='DATE' >
			<if test="${model.changecolumnCode!}!=null">
				<![CDATA[ AND w.${model.columnCode!} = <#noparse>#{${model.changecolumnCode!}}</#noparse> ]]>
			</if>
		</#if>			
		</#if>
		</#list>
		</#if>
		</#if>
		</where>
	</select>
	
	<insert id="insertData" parameterType="${packagePath}.model.${moduleMath}.${ChangetableCode!}">
		insert into ${tableCode!} (
		<#if editCulmun?exists>
		<#if model_column?exists>
		<#list model_column as model>
		<#if editCulmun?index_of(model.columnCode!) != -1> 
			${model.columnCode!},	
		</#if>
		</#list>
		</#if>
		</#if>
		)values(
		<#if changeEditCulmun?exists>
		<#if model_column?exists>
		<#list model_column as model>
		<#if changeEditCulmun?index_of(model.changecolumnCode!) != -1> 
		<#if (model.columnType = 'VARCHAR2' || model.columnType = 'TEXT' || model.columnType = 'VARCHAR' || model.columnType = 'CHAR')>
			<#noparse>#{</#noparse>${model.changecolumnCode!}<#noparse>,jdbcType=VARCHAR}</#noparse><#if model_has_next>,</#if>
		</#if>
		<#if (model.columnType = 'NUMBER' || model.columnType = 'INTEGER')>
			<#noparse>#{</#noparse>${model.changecolumnCode!}<#noparse>,jdbcType=INTEGER}</#noparse><#if model_has_next>,</#if>
		</#if>
		<#if model.columnType = 'TIMESTAMP' || model.columnType ='DATE' >
			<#noparse>#{</#noparse>${model.changecolumnCode!}<#noparse>,jdbcType=TIMESTAMP}</#noparse><#if model_has_next>,</#if>
		</#if>		
		</#if>
		</#list>
		</#if>	
		</#if>
		)
	</insert>
	
	<update id="updateData" parameterType="${packagePath}.model.${moduleMath}.${ChangetableCode!}">
		UPDATE ${tableCode!} SET
		<#if editCulmun?exists>
		<#if model_column?exists>
		<#list model_column as model>
		<#if editCulmun?index_of(model.columnCode!) != -1> 
		<#if (model.columnType = 'VARCHAR2' || model.columnType = 'TEXT' || model.columnType = 'VARCHAR' || model.columnType = 'CHAR')>
			${model.columnCode!} = <#noparse>#{</#noparse>${model.changecolumnCode!}<#noparse>,jdbcType=VARCHAR}</#noparse><#if model_has_next>,</#if>
		</#if>
		<#if (model.columnType = 'NUMBER' || model.columnType = 'INTEGER')>
			${model.columnCode!} =<#noparse>#{</#noparse>${model.changecolumnCode!}<#noparse>,jdbcType=INTEGER}</#noparse><#if model_has_next>,</#if>
		</#if>
		<#if model.columnType = 'TIMESTAMP' || model.columnType ='DATE' >
			${model.columnCode!} =<#noparse>#{</#noparse>${model.changecolumnCode!}<#noparse>,jdbcType=TIMESTAMP}</#noparse><#if model_has_next>,</#if>
		</#if>	
		</#if>
		</#list>
		</#if>
		</#if>
			WHERE ID = <#noparse>#{id}</#noparse> 
	</update>
	
	<delete id="deleteData" parameterType="java.lang.String">
		DELETE FROM  ${tableCode!} WHERE ID = <#noparse>#{id}</#noparse> 
	</delete>
   
</mapper>