package com.lxp.mapper.assist;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.lxp.model.assist.Exam;

/**
 * @author lxp
 * @date 2018年9月3日 下午2:47:57
 * @parameter
 * @return
 */
@Mapper
public interface ExamMapper {

	List<Exam> queryExamByLike(Exam exam);

	void insertExamBylist(List<Exam> list);

	void cleanAllExam(String nper);

	List<Exam> getAllNper();

}
