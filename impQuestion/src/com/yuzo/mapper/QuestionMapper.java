package com.yuzo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yuzo.entity.Question;





public interface QuestionMapper {
	
    int deleteByPrimaryKey(String qstnId);

    int insert(Question record);

    int insertSelective(Question record);

    Question selectByPrimaryKey(String qstnId);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKey(Question record);



	List<Question> queryQstnByTpId(String tpId);

	List<Question> queryQuesByParams(@Param("qstnTypeId")String qstnTypeId, @Param("qstnFromTypeId")String qstnFromTypeId, @Param("subjSctnId")String subjSctnId);

	List<Question> selectAll();
}